using System;

using Android.App;
using Android.Widget;
using Android.OS;
using Android.Support.Wearable.Activity;
using Android.Content;
using HealthMonitoring.Activities;

namespace HealthMonitoring
{
    [Activity(Label = "@string/app_name", MainLauncher = true)]
    public class MainActivity : WearableActivity
    {
        protected override void OnCreate(Bundle bundle)
        {
            base.OnCreate(bundle);
            SetContentView(Resource.Layout.activity_main);

            SetAmbientEnabled();

            Button loginButton = FindViewById<Button>(Resource.Id.loginButton);
            loginButton.Click += LoginButton_Click;

            ImageButton openGoogleMapsButton = FindViewById<ImageButton>(Resource.Id.googleMapsButton);
            openGoogleMapsButton.Click += OpenGoogleMappsButton_Click;

            ImageButton shareLocationButton = FindViewById<ImageButton>(Resource.Id.shareLocationButton);
            shareLocationButton.Click += ShareLocationButton_Click;
        }

        private void LoginButton_Click(object sender, EventArgs e)
        {
            // Cria uma intenção (Intent) para iniciar a nova Activity
            Intent intent = new Intent(this, typeof(LoginActivity));

            // Inicia Activity
            StartActivity(intent);
        }

        private void OpenGoogleMappsButton_Click(object sender, EventArgs e)
        {
            // Abre o Google Maps
            Intent intent = new Intent(Intent.ActionView, Android.Net.Uri.Parse("http://maps.google.com"));

            // Inicia Activity
            StartActivity(intent);
        }

        private void ShareLocationButton_Click(object sender, EventArgs e)
        {
            // Cria uma intenção (Intent) para iniciar a nova Activity
            Intent intent = new Intent(this, typeof(LocalizacaoActivity));

            // Inicia Activity
            StartActivity(intent);
        }
    }
}
