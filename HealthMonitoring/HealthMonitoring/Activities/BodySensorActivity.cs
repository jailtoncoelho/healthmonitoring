using Android.App;
using Android.Content.PM;
using Android.Hardware;
using Android.OS;
using Android.Support.Wearable.Activity;
using Android.Widget;
using Firebase.Database;
using Firebase.Database.Query;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Timers;

namespace HealthMonitoring.Activities
{
    [Activity(Name = "com.jailton.healthmonitoring.BodySensorActivity", Theme = "@android:style/Theme.DeviceDefault")]
    public class BodySensorActivity : WearableActivity, ISensorEventListener
    {
        SensorManager mSensorManager;
        Sensor mSensor;
        private TextView bodySensorTextView;
        private TextView accuracyTextView;
        private System.Timers.Timer mSensorTimer;
        private const int DelayTimer = 10000;
        private Dictionary<string, (DateTime Timestamp, float Value)> sensorValues = new Dictionary<string, (DateTime, float)>();

        int RequestBodySensorsId = 2;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.activity_body_sensors);

            bodySensorTextView = FindViewById<TextView>(Resource.Id.body_sensor_text);
            accuracyTextView = FindViewById<TextView>(Resource.Id.accuracy_text);

            Switch switchShareLocation = FindViewById<Switch>(Resource.Id.switchShareBodySensors);
            if (MainActivity.current_user != null)
                switchShareLocation.Checked = MainActivity.current_user.ShareBodySensors;
            switchShareLocation.CheckedChange += SwitchShareBodySensors_CheckedChange;


            if (CheckSelfPermission(Android.Manifest.Permission.BodySensors) != Permission.Granted)
            {
                RequestPermissions(new string[] { Android.Manifest.Permission.BodySensors, Android.Manifest.Permission.BodySensorsBackground }, RequestBodySensorsId);
            }
            else
            {
                StartsBodySensorMonitoring();
            }
        }

        private void SwitchShareBodySensors_CheckedChange(object sender, CompoundButton.CheckedChangeEventArgs e)
        {
            if (MainActivity.current_user != null)
            {
                try
                {
                    MainActivity.current_user.ShareBodySensors = e.IsChecked;

                    FirebaseClient firebaseClient = new FirebaseClient("https://ifpr-alerts-default-rtdb.firebaseio.com/");

                    var jsonDados = JsonConvert.SerializeObject(MainActivity.current_user);

                    firebaseClient
                        .Child("usuarios")
                        .Child(MainActivity.current_user.Id)
                        .PutAsync(jsonDados);

                    Toast.MakeText(this, "Usuário alterado com sucesso!", ToastLength.Short)?.Show();
                    Finish();
                }
                catch (Exception)
                {
                    Toast.MakeText(this, "Não foi possível salvar as alterações!", ToastLength.Short)?.Show();
                }
            }
        }

        private void StartsBodySensorMonitoring()
        {
            try
            {
                // Create your application here
                mSensorManager = (SensorManager)GetSystemService(SensorService);

                // Obtenha os sensores de batimentos cardíacos e saturação de oxigênio, se disponíveis
                mSensor = mSensorManager.GetDefaultSensor(SensorType.HeartRate);

                // Registre listeners para os sensores
                mSensorManager.RegisterListener(this, mSensor, SensorDelay.Normal);

                // Inicialize o timer com um intervalo de 5min segundos (em milissegundos)
                // Configurar o timer
                mSensorTimer = new Timer(DelayTimer); // 60 segundos
                mSensorTimer.Elapsed += OnTimedEvent;
                mSensorTimer.AutoReset = true;
                mSensorTimer.Enabled = true;
            }
            catch (Exception ex)
            {

            }
        }

        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, Permission[] grantResults)
        {
            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            if (requestCode == RequestBodySensorsId)
            {
                if (grantResults.Length > 0 && grantResults[0] == Permission.Granted)
                {
                    StartsBodySensorMonitoring();
                }
                else
                {
                    Toast.MakeText(this, "BodySensors permission denied.", ToastLength.Short).Show();
                }
            }
        }



        private void OnTimedEvent(object source, ElapsedEventArgs e)
        {
            Dictionary<string, (DateTime Timestamp, float Value)> valuesToSave;
            lock (sensorValues)
            {
                valuesToSave = new Dictionary<string, (DateTime, float)>(sensorValues);
                sensorValues.Clear();
            }

            SaveToDatabase(valuesToSave);
        }

        private void SaveToDatabase(Dictionary<string, (DateTime Timestamp, float Value)> values)
        {
            foreach (var entry in values)
            {
                SaveDataInRealtimeDatabase(entry.Key, entry.Value.Value, entry.Value.Timestamp);
            }
        }

        private async void SaveDataInRealtimeDatabase(string sensor, float valor, DateTime timestamp)
        {
            if (MainActivity.current_user != null)
            {


                try
                {
                    // Crie um objeto com os dados que deseja salvar
                    var dados = new
                    {
                        Data = timestamp,
                        Valor = valor,
                    };

                    string jsonDados = JsonConvert.SerializeObject(dados);

                    FirebaseClient firebaseClient = new FirebaseClient("https://ifpr-alerts-default-rtdb.firebaseio.com/");

                    var result = await firebaseClient
                     .Child("health")
                     .Child(MainActivity.current_user.Id)
                     .Child(sensor.Replace(" ", ""))
                     .Child(DateTime.Now.Year.ToString())
                     .Child(DateTime.Now.Month.ToString())
                     .Child(DateTime.Now.Day.ToString())
                     .PostAsync(jsonDados);
                }
                catch (Exception ex) { }

            }
        }

        protected override void OnResume()
        {
            base.OnResume();
            if (CheckSelfPermission(Android.Manifest.Permission.BodySensors) == Permission.Granted)
            {
                if (mSensor != null)
                {
                    mSensorManager.RegisterListener(this, mSensor, SensorDelay.Normal);
                }
            }
        }

        protected override void OnPause()
        {
            base.OnPause();
            if (mSensor != null)
            {
                mSensorManager.UnregisterListener(this);
            }
        }


        protected override void OnDestroy()
        {
            base.OnDestroy();
            mSensorManager.UnregisterListener(this);
            mSensorTimer.Stop();
            mSensorTimer.Dispose();
        }

        public void OnSensorChanged(SensorEvent e)
        {
            if (e.Values[0] == 0)
                return;

            float value = e.Values[0];
            DateTime timestamp = DateTime.Now;
            string sensorType = e.Sensor.Type.ToString();

            lock (sensorValues)
            {
                sensorValues[sensorType] = (timestamp, value);
            }

            if (e.Sensor.Type == SensorType.HeartRate) // Substitua pelo tipo de sensor adequado
            {
                RunOnUiThread(() => bodySensorTextView.Text = $"Batimentos Cardícacos: {value} (bpm)");
            }
            else
            {
                RunOnUiThread(() => bodySensorTextView.Text = $"{sensorType}: {value}");
            }
        }

        public void OnAccuracyChanged(Sensor sensor, SensorStatus accuracy)
        {
            RunOnUiThread(() =>
            {
                switch (accuracy)
                {
                    case SensorStatus.Unreliable:
                        accuracyTextView.Text = "Precisão do sensor: Pouco confiável";
                        break;
                    case SensorStatus.AccuracyLow:
                        accuracyTextView.Text = "Precisão do sensor: Baixa";
                        break;
                    case SensorStatus.AccuracyMedium:
                        accuracyTextView.Text = "Precisão do sensor: Média";
                        break;
                    case SensorStatus.AccuracyHigh:
                        accuracyTextView.Text = "Precisão do sensor: Alta";
                        break;
                }
            });
        }
    }
}