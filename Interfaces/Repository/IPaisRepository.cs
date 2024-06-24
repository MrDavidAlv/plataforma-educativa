using System.Collections.Generic;
using System.Threading.Tasks;
using plataformaEstudiantes.Models;

namespace plataformaEstudiantes.Interfaces.Repository
{
    public interface IPaisRepository
    {
        Task<IEnumerable<Pais>> GetAllAsync();
        Task<Pais> GetByIdAsync(int id);
    }
}
