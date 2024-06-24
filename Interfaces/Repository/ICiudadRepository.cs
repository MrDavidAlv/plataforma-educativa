
using System.Collections.Generic;
using System.Threading.Tasks;
using plataformaEstudiantes.Models;
using global::plataformaEstudiantes.Models;

namespace plataformaEstudiantes.Interfaces.Repository
{
    public interface ICiudadRepository
    {
        Task<IEnumerable<Ciudad>> GetAllAsync();
        Task<IEnumerable<Ciudad>> GetByPaisIdAsync(int idPais);
        Task<Ciudad> GetByIdAsync(int id);
        // Otros métodos según sea necesario
    }
}

