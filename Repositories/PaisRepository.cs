using plataformaEstudiantes.Interfaces.Repository;
using plataformaEstudiantes.Models;
using Microsoft.EntityFrameworkCore;
using plataformaEstudiantes.Data;

namespace plataformaEstudiantes.Repositories
{
    public class PaisRepository : IPaisRepository
    {
        private readonly ApplicationDbContext _context;

        public PaisRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<IEnumerable<Pais>> GetAllAsync()
        {
            return await _context.Paises.ToListAsync();
        }

        public async Task<Pais> GetByIdAsync(int id)
        {
            return await _context.Paises.FindAsync(id);
        }

        // Implementa otros métodos según necesites
    }
}

