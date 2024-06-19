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
    public class MainActivity : WearableActivity
    {
        const int RequestLocationId = 0;

        static public Usuario current_user = null;


        protected override void OnCreate(Bundle bundle)
        {
            base.OnCreate(bundle);
            SetContentView(Resource.Layout.activity_main);
            SetAmbientEnabled();


            ImageButton shareLocationButton = FindViewById<ImageButton>(Resource.Id.shareLocationButton);
            shareLocationButton.Click += ShareLocationButton_Click;

            ImageButton oxigenSaturationButton = FindViewById<ImageButton>(Resource.Id.oxigenSaturationButton);
            oxigenSaturationButton.Click += ShareOxigenSaturationButtonn_Click;


            if (current_user == null)
            {
                // Cria uma intencao (Intent) para iniciar a nova Activity
                Intent intent = new Intent(this, typeof(LoginActivity));
                StartActivity(intent);
            }
        }


        private void ShareOxigenSaturationButtonn_Click(object sender, EventArgs e)
        {
            // Cria uma intencao (Intent) para iniciar a nova Activity
            Intent intent = new Intent(this, typeof(BodySensorActivity));
            StartActivity(intent);
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
    }
}
