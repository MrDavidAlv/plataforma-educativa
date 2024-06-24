using plataformaEstudiantes.DTOs.Request;
using plataformaEstudiantes.DTOs.Response;
using plataformaEstudiantes.Interfaces.Service;
using plataformaEstudiantes.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

[Route("api/[controller]")]
[ApiController]
public class AuthController : ControllerBase
{
    private readonly IUserService _userService;
    private readonly IAuthService _authService;

    public AuthController(IUserService userService, IAuthService authService)
    {
        _userService = userService;
        _authService = authService;
    }

    [HttpPost("login")]
    public async Task<IActionResult> Login([FromBody] UserLoginRequestDto login)
    {
        profesor user = await _userService.GetUserByEmailAsync(login.Email);

        if (user == null)
        {
            return Unauthorized("Este correo no está registrado.");
        }

        bool isPasswordValid = await _userService.ValidatePasswordAsync(user, login.Password);

        if (!isPasswordValid)
        {
            return Unauthorized("La contraseña es inválida.");
        }

        var token = _authService.GenerateJwtToken(user);
        UserLoginResponseDto dataUser = new UserLoginResponseDto();
        dataUser.id = user.idPorfesor;
        dataUser.nombres = user.nombres;
        dataUser.apellidos = user.apellidos;
        dataUser.id = user.idPorfesor;

        return Ok(new { User = dataUser, Token = token });
    }
}
