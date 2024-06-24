using plataformaEstudiantes.Interfaces.Service;
using plataformaEstudiantes.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace plataformaEstudiantes.Controllers
{
    
    [Route("api/profesores")]
    [ApiController]
    public class UserController : ControllerBase
    {
        private readonly IUserService _userService;

        public UserController(IUserService userService)
        {
            _userService = userService ?? throw new ArgumentNullException(nameof(userService));
        }

        //[Authorize]
        [HttpGet]
        public async Task<ActionResult<List<profesor>>> GetUsuarios()
        {
            try
            {
                var usuarios = await _userService.GetUsuariosAsync();
                if (usuarios == null || usuarios.Count == 0)
                {
                    return NotFound("No se encontraron usuarios.");
                }
                return Ok(usuarios);
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Error interno del servidor: {ex.Message}");
            }
        }

        //[Authorize]
        [HttpGet("{id}")]
        public async Task<ActionResult<profesor>> GetUsuario(int id)
        {
            try
            {
                var usuario = await _userService.GetUsuarioByIdAsync(id);
                if (usuario == null)
                {
                    return NotFound($"Usuario con ID {id} no encontrado.");
                }
                return Ok(usuario);
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Error interno del servidor: {ex.Message}");
            }
        }

        
        [HttpPost]
        //[Authorize(Roles = "Admin")]
        public async Task<ActionResult<profesor>> CrearUsuario(profesor usuario)
        {
            try
            {
                var nuevoUsuario = await _userService.CrearUsuarioAsync(usuario);
                return CreatedAtAction(nameof(GetUsuario), new { id = nuevoUsuario.idPorfesor }, nuevoUsuario);
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Error interno del servidor: {ex.Message}");
            }
        }

        //[Authorize]
        [HttpPut("{id}")]
        public async Task<IActionResult> ActualizarUsuario(int id, profesor usuario)
        {
            try
            {
                var result = await _userService.ActualizarUsuarioAsync(id, usuario);
                if (!result)
                {
                    return NotFound($"Usuario con ID {id} no encontrado.");
                }
                return NoContent();
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Error interno del servidor: {ex.Message}");
            }
        }

        
        [HttpDelete("{id}")]
        //[Authorize(Roles = "Admin")]
        public async Task<IActionResult> EliminarUsuario(int id)
        {
            try
            {
                var result = await _userService.EliminarUsuarioAsync(id);
                if (!result)
                {
                    return NotFound($"Usuario con ID {id} no encontrado.");
                }
                return NoContent();
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Error interno del servidor: {ex.Message}");
            }
        }
    }
}
