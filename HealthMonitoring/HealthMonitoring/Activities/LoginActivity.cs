using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Support.Wearable.Activity;
using Android.Views;
using Android.Widget;
using Firebase.Database;
using Firebase.Database.Query;
using HealthMonitoring.BaseClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using static Android.Content.ClipData;

namespace HealthMonitoring.Activities
{
    [Activity(Name = "com.jailton.healthmonitoring.LoginActivity", Theme = "@android:style/Theme.DeviceDefault")]
    public class LoginActivity : WearableActivity
    {        
        protected override void OnCreate(Bundle bundle)
        {
            base.OnCreate(bundle);
            SetContentView(Resource.Layout.activity_login);

            Button loginButton = FindViewById<Button>(Resource.Id.loginButton);
            loginButton.Click += LoginButton_Click;
        }

        private async void LoginButton_Click(object sender, EventArgs e)
        {
            FirebaseClient firebaseClient = new FirebaseClient("https://ifpr-alerts-default-rtdb.firebaseio.com/");

            var email = FindViewById<EditText>(Resource.Id.emailEditText)?.Text;
            var password = FindViewById<EditText>(Resource.Id.passwordEditText)?.Text;

            // Obtem o snapshot do usuário
            Usuario usuario = (await firebaseClient
          .Child("usuarios")
          .OnceAsync<Usuario>()).Select(item => new Usuario
          {
              Id = item.Key,
              Email = item.Object.Email,
              Senha = item.Object.Senha
          }).Where(item => item.Email == email).FirstOrDefault();

            if (usuario != null)
            {
                try
                {
                    if (usuario.Senha == password)
                    {
                        Toast.MakeText(this, "Usuário logado com sucesso!", ToastLength.Short)?.Show();
                        MainActivity.current_user = usuario;

                        Finish();
                    } else
                    {
                        Toast.MakeText(this, "Senha incorreta!", ToastLength.Short)?.Show();
                    }
                    
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Erro de autenticação: {ex.Message}");
                }
            }
            else
            {
                Toast.MakeText(this, "Usuário não encontrado!", ToastLength.Short)?.Show();
            }
        }
    }
}