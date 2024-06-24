using plataformaEstudiantes.Models;
using System.Threading.Tasks;

namespace plataformaEstudiantes.Interfaces.Service
{
    public interface IRoleService
    {
        Task<Rol> GetRoleByNameAsync(string roleName);
    }
}
