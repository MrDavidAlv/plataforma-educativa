using plataformaEstudiantes.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace plataformaEstudiantes.Interfaces.Service
{
    public interface IParametersService
    {
        Task<IEnumerable<Pais>> GetPaisesAsync();
        Task<IEnumerable<Ciudad>> GetCiudadesAsync();
        Task<IEnumerable<Ciudad>> GetCiudadesByPaisAsync(int idPais);

 
    }
}
