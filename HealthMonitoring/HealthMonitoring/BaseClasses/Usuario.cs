namespace HealthMonitoring.BaseClasses
{
    public class Usuario
    {
        public string Id { get; set; }
        public string Nome { get; set; }
        public string Email { get; set; }
        public string Senha { get; set; }
        public bool ShareLocation { get; set; }
        public bool ShareHealth { get; set; }
    }
}