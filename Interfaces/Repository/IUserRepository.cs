using plataformaEstudiantes.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace plataformaEstudiantes.Interfaces.Repository
{
    public interface IUserRepository
    {
        Task<List<profesor>> GetUsuariosAsync();
        Task<profesor> GetUsuarioByIdAsync(int id);
        Task<profesor> CrearUsuarioAsync(profesor usuario);
        Task<bool> ActualizarUsuarioAsync(int id, profesor usuario);
        Task<bool> EliminarUsuarioAsync(int id);

        Task<profesor> GetUserByEmailAsync(string email);
    }
}
