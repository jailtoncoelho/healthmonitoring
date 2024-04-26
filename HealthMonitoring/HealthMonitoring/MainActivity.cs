using System;
using Android.App;
using Android.Widget;
using Android.OS;
using Android.Support.Wearable.Activity;
using Android.Content;
using HealthMonitoring.Activities;
using Android.Content.PM;
using HealthMonitoring.BaseClasses;
using Firebase.Database;
using System.Threading.Tasks;
using Firebase.Database.Query;
using Newtonsoft.Json;
using Android.Hardware;
using Android.Runtime;


namespace HealthMonitoring
{
    [Activity(Label = "@string/app_name", MainLauncher = true)]
    public class MainActivity : WearableActivity, ISensorEventListener
    {
        const int RequestLocationId = 0;
        const int RequestBodySensorsId = 0;
        const int DelayTimer = 600000;
        static public Usuario current_user = null;
        private SensorManager sensorManager;
        private Sensor heartRateSensor;
        private System.Timers.Timer sensorTimer;

        protected override void OnCreate(Bundle bundle)
        {
            base.OnCreate(bundle);
            SetContentView(Resource.Layout.activity_main);
            SetAmbientEnabled();

            if (CheckSelfPermission(Android.Manifest.Permission.BodySensors) != Permission.Granted)
            {
                RequestPermissions(new string[] { Android.Manifest.Permission.BodySensors, Android.Manifest.Permission.BodySensorsBackground }, RequestBodySensorsId);
            }
            else
            {
                StartsBodySensorMonitoring();
            }

            ImageButton openGoogleMapsButton = FindViewById<ImageButton>(Resource.Id.googleMapsButton);
            openGoogleMapsButton.Click += OpenGoogleMappsButton_Click;

            ImageButton shareLocationButton = FindViewById<ImageButton>(Resource.Id.shareLocationButton);
            shareLocationButton.Click += ShareLocationButton_Click;


            if (current_user == null)
            {
                // Cria uma intencao (Intent) para iniciar a nova Activity
                Intent intent = new Intent(this, typeof(LoginActivity));
                StartActivity(intent);
            }
        }

        private void StartsBodySensorMonitoring()
        {
            try
            {
                // Inicialize o SensorManager
                sensorManager = (SensorManager)GetSystemService(Context.SensorService);

                // Obtenha os sensores de batimentos cardíacos e saturação de oxigênio, se disponíveis
                heartRateSensor = sensorManager.GetDefaultSensor(SensorType.HeartRate);

                // Registre listeners para os sensores
                sensorManager.RegisterListener(this, heartRateSensor, SensorDelay.Normal); 

                // Inicialize o timer com um intervalo de 5min segundos (em milissegundos)
                sensorTimer = new System.Timers.Timer(DelayTimer);
                sensorTimer.AutoReset = false; // Define se o timer deve continuar disparando eventos após a primeira vez
                sensorTimer.Start();
            }
            catch (Exception ex)
            {

            }
        }

        private void OpenGoogleMappsButton_Click(object sender, EventArgs e)
        {
            if (CheckSelfPermission(Android.Manifest.Permission.BindCallRedirectionService) != Permission.Granted)
            {
                RequestPermissions(new string[] { Android.Manifest.Permission.BindCallRedirectionService }, RequestLocationId);
            }
            else
            {
                // Abre o Google Maps
                Intent intent = new Intent(Intent.ActionView, Android.Net.Uri.Parse("http://maps.google.com"));
                StartActivity(intent);
            }
        }

        private void ShareLocationButton_Click(object sender, EventArgs e)
        {
            // Cria uma intencao (Intent) para iniciar a nova Activity
            Intent intent = new Intent(this, typeof(LocationActivity));
            StartActivity(intent);
        }

        protected override void OnResume()
        {
            base.OnResume();
        }

        protected override void OnPause()
        {
            base.OnPause();
        }

        protected override void OnStop()
        {
            base.OnStop();
        }

        protected override void OnStart()
        {
            base.OnStart();
        }

        private async Task SaveHealthValuesAsync(SensorType sensorType, float valor)
        {

            try
            {
                String sensor = "";
                if (sensorType == SensorType.HeartRate)
                {
                    sensor = "HeartRate";
                }
                else if (sensorType == SensorType.Pressure)
                {

                    sensor = "Pressure";
                }

                if (current_user != null)
                {
                    if (sensorTimer.Enabled)
                    {
                        return;
                    }
                    sensorTimer.Start();

                    // Crie um objeto com os dados que deseja salvar
                    var dados = new
                    {
                        Data = DateTime.Now,
                        Valor = valor,
                    };

                    string jsonDados = JsonConvert.SerializeObject(dados);

                    FirebaseClient firebaseClient = new FirebaseClient("https://ifpr-alerts-default-rtdb.firebaseio.com/");

                    var result = await firebaseClient
                        .Child("health")
                        .Child(current_user.Id)
                        .Child(sensor)
                        .Child(DateTime.Now.Year.ToString())
                        .Child(DateTime.Now.Month.ToString())
                        .Child(DateTime.Now.Day.ToString())
                        .PostAsync(jsonDados);
                }
            }
            catch (Exception ex) { }


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

        public void OnAccuracyChanged(Sensor sensor, [GeneratedEnum] SensorStatus accuracy)
        {
            // Método chamado quando a precisão do sensor muda
        }

        public void OnSensorChanged(SensorEvent e)
        {
            SaveHealthValuesAsync(e.Sensor.Type, e.Values[0]);
        }
    }
}
