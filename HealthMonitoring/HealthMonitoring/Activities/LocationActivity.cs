using Android.App;
using Android.Content;
using Android.Locations;
using Android.OS;
using Android.Runtime;
using Android.Support.Wearable.Activity;
using Android.Widget;
using Android.Content.PM;
using System;


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

            Button shareLocationButton = FindViewById<Button>(Resource.Id.btnShareLocation);
            shareLocationButton.Click += ShareLocationButton_Click;

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

        public void OnLocationChanged(Location location)
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
            if (lastLocation != null)
            {
                double latitude = lastLocation.Latitude;
                double longitude = lastLocation.Longitude;

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

    }
}