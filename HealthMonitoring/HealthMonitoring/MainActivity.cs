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
        }

        private void LoginButton_Click(object sender, EventArgs e)
        {
            // Criar uma intenção (Intent) para iniciar a nova Activity
            Intent intent = new Intent(this, typeof(LoginActivity));

            // Iniciar a nova Activity
            StartActivity(intent);
        }
    }
}


