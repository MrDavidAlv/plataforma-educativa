using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace plataformaEstudiantes.Models
{
    [Table("rol", Schema = "dbo")]
    public class Rol
    {
        [Key]
        public int idRol { get; set; }

        [Required]
        [MaxLength(100)]
        public string nombreRol { get; set; }
    }

}
