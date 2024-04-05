using Android.App;
using Android.Content;
using Android.Locations;
using Android.OS;
using Android.Runtime;
using Android.Support.Wearable.Activity;
using Android.Views;
using Android.Widget;
using Android.Content.PM;
using System;


namespace HealthMonitoring.Activities
{
    [Activity(Label = "com.jailton.healthmonitoring.LocalizacaoActivity", Theme = "@android:style/Theme.DeviceDefault")]
    public class LocalizacaoActivity : WearableActivity, ILocationListener
    {
        LocationManager locationManager;
        string provider;
        const int RequestLocationId = 0;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.activity_localizacao);

            Button shareLocationButton = FindViewById<Button>(Resource.Id.btnShareLocation);
            shareLocationButton.Click += ShareLocationButton_Click;

            locationManager = (LocationManager)GetSystemService(Context.LocationService);
            Criteria criteria = new Criteria();
            provider = locationManager.GetBestProvider(criteria, false);

            if (CheckSelfPermission(Android.Manifest.Permission.AccessFineLocation) != Permission.Granted)
            {
                RequestPermissions(new string[] { Android.Manifest.Permission.AccessFineLocation }, RequestLocationId);
            }
            else
            {
                StartLocationUpdates();
            }
        }

        private void StartLocationUpdates()
        {
            locationManager.RequestLocationUpdates(provider, 400, 1, this);
        }

        protected override void OnResume()
        {
            base.OnResume();
        }

        protected override void OnPause()
        {
            base.OnPause();
            locationManager.RemoveUpdates(this);
        }

        public void OnLocationChanged(Location location)
        {
            double latitude = location.Latitude;
            double longitude = location.Longitude;
            // Aqui você pode atualizar a interface do usuário com a nova localização em tempo real
            TextView latitudeTextView = FindViewById<TextView>(Resource.Id.latitueTextView);
            latitudeTextView.Text = "Latitude: " + latitude.ToString("0.00");

            TextView longitudeTextView = FindViewById<TextView>(Resource.Id.longitudeTextView);
            longitudeTextView.Text = "Longitude: " + longitude.ToString("0.00");
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

        public void ShareLocationButton_Click(object sender, EventArgs e)
        {
            Location location = locationManager.GetLastKnownLocation(provider);
            if (location != null)
            {
                double latitude = location.Latitude;
                double longitude = location.Longitude;

                string message = "Latitude: " + latitude + "\nLongitude: " + longitude;
                Intent sendIntent = new Intent();
                sendIntent.SetAction(Intent.ActionSend);
                sendIntent.PutExtra(Intent.ExtraText, message);
                sendIntent.SetType("text/plain");
                sendIntent.SetPackage("com.whatsapp");
                StartActivity(sendIntent);
            }
            else
            {
                Toast.MakeText(this, "Location not available", ToastLength.Short).Show();
            }
        }

    }
}