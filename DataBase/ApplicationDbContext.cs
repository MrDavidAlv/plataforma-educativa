using Microsoft.EntityFrameworkCore;
using plataformaEstudiantes.Models;

namespace plataformaEstudiantes.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
        }

        // DbSet para las entidades de la base de datos
        public DbSet<Ciudad> Ciudades { get; set; }
        public DbSet<Pais> Paises { get; set; }
        public DbSet<Rol> Roles { get; set; }
        public DbSet<profesor> Usuarios { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            // Configuración de las relaciones entre entidades y restricciones
            modelBuilder.Entity<Ciudad>()
                .HasKey(c => c.IdCiudad);

            modelBuilder.Entity<Pais>()
                .HasKey(p => p.IdPais);

            modelBuilder.Entity<Rol>()
                .HasKey(r => r.idRol);

            modelBuilder.Entity<profesor>()
                .HasKey(u => u.idPorfesor);

        

        

            // Especificar el esquema y nombre de las tablas

            modelBuilder.Entity<Ciudad>().ToTable("ciudad", "dbo");
            modelBuilder.Entity<Pais>().ToTable("pais", "dbo");
            modelBuilder.Entity<Rol>().ToTable("rol", "dbo");
            modelBuilder.Entity<profesor>().ToTable("profesor", "dbo");


            base.OnModelCreating(modelBuilder);
        }
    }
}
