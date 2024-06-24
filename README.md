# Plataforma Educativa - Prueba Técnica
Este proyecto es una plataforma educativa desarrollada en ASP.NET Core, que incluye la gestión de notas, usuarios y autenticación. A continuación, se describen los principales componentes y cómo ejecutar el proyecto.


## Características
- CRUD de Notas
- Gestión de Usuarios (Profesores y Estudiantes)
- Autenticación y Autorización
- Asignación de Roles
- Relación entre Materias, Grupos, Profesores y Estudiantes

## Tecnologías Utilizadas
- ASP.NET Core
- Entity Framework Core
- SQL Server
- Swagger (para documentación de la API)
- JWT (JSON Web Tokens) para autenticación
- Configuración del Entorno
- Clonar el repositorio:

```bash
git clone https://github.com/MrDavidAlv/PlataformaEducativa-ASP-NET-Core.git
cd PlataformaEducativa-ASP-NET-Core
```
## Configurar la cadena de conexión a la base de datos:

Editar el archivo appsettings.json y configurar la cadena de conexión a tu servidor SQL Server:

```json
"ConnectionStrings": {
    "DefaultConnection": "Server=.;Database=plataformaEducativa;Trusted_Connection=True;MultipleActiveResultSets=true"
}
```

## Migraciones de Base de Datos
Agregar las migraciones y actualizar la base de datos:
```bash
dotnet ef migrations add InitialCreate
dotnet ef database update
```

## Replicar la  de Base de Datos
Puedes replicar la base de datos con [`este script`](./database.sql)
![imagen diagrama relacion](/diagrama.PNG)


## Ejecución del Proyecto

### Ejecutar la aplicación:

```bash
    dotnet run
```
Abrir el navegador y navegar a:

```bash 
    https://localhost:7348/swagger
```
Esto abrirá la interfaz de Swagger donde puedes probar los endpoints de la API.

## API Endpoints
### Autenticación
#### Login
POST /api/auth/login
Parámetros: { "usuario": "string", "password": "string" }

### Profesores
####  Crear un profesor

POST /api/profesores
Parámetros: { "nombres": "string", "apellidos": "string", "tituloProfesional": "string", "tipoDocumentoId": int, "idRol": int }

#### Buscar un profesor

GET /api/profesores/{id}

#### Editar un profesor

PUT /api/profesores/{id}
Parámetros: { "nombres": "string", "apellidos": "string", "tituloProfesional": "string", "tipoDocumentoId": int, "idRol": int }
#### Eliminar un profesor

DELETE /api/profesores/{id}

### Estudiantes
 
 #### No se alcanzo a terminar este crud

 ### Calificaciones
 
 #### No se alcanzo a terminar este crud

## Collection Imsomnia
Pruebe los servicios con [`esta colección`](./Insomnia_2024-06-24.json)
![imagen servicios](/servicios.PNG)