// User.cs
using plataformaEstudiantes.Models;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Text.RegularExpressions;


[Table("profesor", Schema = "dbo")]
public class profesor
{
    [Key]
    public int idPorfesor { get; set; }

    [Required]
    [MaxLength(100)]
    public string nombres { get; set; }

    [Required]
    [MaxLength(100)]
    public string apellidos { get; set; }

    public string TituloProfesional { get; set; }

    [Required]
    public int tipoDocumento { get; set; }

    [Required]
    public int nroDocumento { get; set; }

    public DateTime? fechaNacimiento { get; set; }

    [Required]
    [MaxLength(150)]
    public string email { get; set; }

    [Required]
    [MaxLength(250)]
    public string password { get; set; }

    public int? idCiudad { get; set; }

    public int? idPais { get; set; }

    public int? idRol { get; set; }

}


