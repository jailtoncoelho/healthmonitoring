using Android.App;
using Android.Content;
using Android.Locations;
using Android.OS;
using Android.Runtime;
using Android.Support.Wearable.Activity;
using Android.Widget;
using Android.Content.PM;
using System;
using Firebase.Database;
using Newtonsoft.Json;
using System.Threading.Tasks;
using Firebase.Database.Query;


namespace HealthMonitoring.Activities
{
    [Activity(Label = "com.jailton.healthmonitoring.LocationActivity", Theme = "@android:style/Theme.DeviceDefault")]
    public class LocationActivity : WearableActivity, ILocationListener
    {
        LocationManager locationManager;
        Location lastLocation = null;
        const int RequestLocationId = 0;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.activity_localizacao);

            Switch switchShareLocation = FindViewById<Switch>(Resource.Id.switchShareLocation);
            if (MainActivity.current_user != null)
                switchShareLocation.Checked = MainActivity.current_user.ShareLocation;
            switchShareLocation.CheckedChange += SwitchShareLocation_CheckedChange;

            ImageButton shareLocationButton = FindViewById<ImageButton>(Resource.Id.googleMapsButton);
            shareLocationButton.Click += OpenGoogleMappsButton_Click;


            locationManager = (LocationManager)GetSystemService(Context.LocationService);

            if (CheckSelfPermission(Android.Manifest.Permission.AccessFineLocation) != Permission.Granted)
            {
                RequestPermissions(new string[] { Android.Manifest.Permission.AccessFineLocation }, RequestLocationId);
            }
            else
            {
                StartLocationUpdates();
            }
        }

        private void SwitchShareLocation_CheckedChange(object sender, CompoundButton.CheckedChangeEventArgs e)
        {
            if (MainActivity.current_user != null)
            {
                try
                {
                    MainActivity.current_user.ShareLocation = e.IsChecked;

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

        private void StartLocationUpdates()
        {
            locationManager.RequestLocationUpdates(LocationManager.GpsProvider, 400, 1, this);
        }

        protected override void OnResume()
        {
            base.OnResume();
        }

        protected override void OnPause()
        {
            base.OnPause();
        }

        public void OnLocationChanged(Android.Locations.Location location)
        {
            if (location == null)
                return;
            lastLocation = location;
            double latitude = location.Latitude;
            double longitude = location.Longitude;
            // Aqui você pode atualizar a interface do usuário com a nova localização em tempo real
            TextView latitudeTextView = FindViewById<TextView>(Resource.Id.latitueTextView);
            latitudeTextView.Text = "Latitude: " + latitude.ToString("0.0000");

            TextView longitudeTextView = FindViewById<TextView>(Resource.Id.longitudeTextView);
            longitudeTextView.Text = "Longitude: " + longitude.ToString("0.0000");

            SaveLastLocationAsync(latitude, longitude);
        }

        private async Task SaveLastLocationAsync(double latitude, double longitude)
        {
            if (MainActivity.current_user != null)
            {
                try
                {
                    FirebaseClient firebaseClient = new FirebaseClient("https://ifpr-alerts-default-rtdb.firebaseio.com/");

                    // Crie um objeto com os dados que deseja salvar
                    var dados = new
                    {
                        Latitude = latitude,
                        Longitude = longitude
                    };

                    string jsonDados = JsonConvert.SerializeObject(dados);

                    await firebaseClient
                        .Child("location")
                        .Child(MainActivity.current_user.Id)
                        .Child(DateTime.Now.Year.ToString())
                        .Child(DateTime.Now.Month.ToString())
                        .Child(DateTime.Now.Day.ToString())
                        .PostAsync(jsonDados);
                }
                catch (Exception)
                {

                }
            }
        }

        public void OnProviderDisabled(string provider)
        {
            // Método não utilizado neste exemplo
        }

        public void OnProviderEnabled(string provider)
        {
            // Método não utilizado neste exemplo
        }

        public void OnStatusChanged(string provider, [GeneratedEnum] Availability status, Bundle extras)
        {
            // Método não utilizado neste exemplo
        }

        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, Permission[] grantResults)
        {
            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            if (requestCode == RequestLocationId)
            {
                if (grantResults.Length > 0 && grantResults[0] == Permission.Granted)
                {
                    StartLocationUpdates();
                }
                else
                {
                    Toast.MakeText(this, "Location permission denied.", ToastLength.Short).Show();
                }
            }
        }


        private async Task<bool> IsGoogleMapsInstalled()
        {
            var packageManager = PackageManager;
            try
            {
                packageManager.GetPackageInfo("com.google.android.apps.maps", 0);
                return true;
            }
            catch (PackageManager.NameNotFoundException)
            {
                return false;
            }
        }


        private void OpenGoogleMappsButton_Click(object sender, EventArgs e)
        {
            CheckAndOpenGoogleMaps();
        }

        private async void CheckAndOpenGoogleMaps()
        {
            var isGoogleMapsInstalled = await IsGoogleMapsInstalled();
            if (!isGoogleMapsInstalled)
            {
                Toast.MakeText(this, "Google Maps não está instalado.", ToastLength.Long).Show();
                return;
            }

            var location = lastLocation;
            if (location == null)
            {
                Toast.MakeText(this, "Não foi possível obter a localização.", ToastLength.Long).Show();
                return;
            }

            var lat = location.Latitude;
            var lon = location.Longitude;
            var uri = $"geo:{lat},{lon}";
            var intent = new Intent(Intent.ActionView, Android.Net.Uri.Parse(uri));
            StartActivity(intent);
        }

    }
}