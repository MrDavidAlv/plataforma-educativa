namespace plataformaEstudiantes.Interfaces.Service
{
    public interface IAuthService
    {
        string GenerateJwtToken(profesor user);
    }
}
