USE [plataformaEducativa]
GO
/****** Object:  Table [dbo].[calificacion]    Script Date: 24/06/2024 12:11:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[calificacion](
	[idCalificacion] [int] IDENTITY(1,1) NOT NULL,
	[idEstudiante] [int] NULL,
	[idGrupo] [int] NULL,
	[valorCalificacion] [int] NULL,
	[recomendaciones] [varchar](150) NULL,
 CONSTRAINT [PK_calificacion] PRIMARY KEY CLUSTERED 
(
	[idCalificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ciudad]    Script Date: 24/06/2024 12:11:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ciudad](
	[idCiudad] [int] IDENTITY(1,1) NOT NULL,
	[nombreCiudad] [varchar](100) NULL,
	[idPais] [int] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[idCiudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estudiante]    Script Date: 24/06/2024 12:11:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estudiante](
	[idEstudiante] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [varchar](100) NULL,
	[apellidos] [varchar](100) NULL,
	[tipoDocumento] [int] NULL,
	[nroDocumento] [int] NULL,
	[idCarrera] [int] NULL,
	[usuario] [varchar](150) NULL,
	[password] [varchar](150) NULL,
	[idRol] [int] NOT NULL,
 CONSTRAINT [PK_estudiante] PRIMARY KEY CLUSTERED 
(
	[idEstudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grupo]    Script Date: 24/06/2024 12:11:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grupo](
	[idGrupo] [int] IDENTITY(1,1) NOT NULL,
	[idProfesor] [int] NOT NULL,
	[idMateria] [int] NOT NULL,
 CONSTRAINT [PK_grupo] PRIMARY KEY CLUSTERED 
(
	[idGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materia]    Script Date: 24/06/2024 12:11:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materia](
	[idMateria] [int] IDENTITY(1,1) NOT NULL,
	[nombreCurso] [varchar](150) NULL,
	[areaEstudio] [varchar](150) NULL,
	[descripcion] [varchar](250) NULL,
 CONSTRAINT [PK_cursos] PRIMARY KEY CLUSTERED 
(
	[idMateria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pais]    Script Date: 24/06/2024 12:11:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pais](
	[idPais] [int] IDENTITY(1,1) NOT NULL,
	[nombrePais] [varchar](100) NULL,
 CONSTRAINT [PK_pais] PRIMARY KEY CLUSTERED 
(
	[idPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[profesor]    Script Date: 24/06/2024 12:11:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[profesor](
	[idPorfesor] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [varchar](100) NULL,
	[apellidos] [varchar](100) NULL,
	[tituloProfesional] [varchar](100) NULL,
	[tipoDocumento] [int] NULL,
	[idRol] [int] NOT NULL,
	[password] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[idCiudad] [int] NULL,
	[idPais] [int] NULL,
	[nroDocumento] [int] NULL,
	[fechaNacimiento] [datetime] NULL,
 CONSTRAINT [PK_profesor] PRIMARY KEY CLUSTERED 
(
	[idPorfesor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rol]    Script Date: 24/06/2024 12:11:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rol](
	[idRol] [int] IDENTITY(1,1) NOT NULL,
	[nombreRol] [varchar](50) NULL,
 CONSTRAINT [PK_rol] PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipoDocumento]    Script Date: 24/06/2024 12:11:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoDocumento](
	[idDocumento] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](15) NULL,
 CONSTRAINT [PK_tipoDocumento] PRIMARY KEY CLUSTERED 
(
	[idDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ciudad] ON 
GO
INSERT [dbo].[ciudad] ([idCiudad], [nombreCiudad], [idPais]) VALUES (1, N'Ciudad de México', 1)
GO
INSERT [dbo].[ciudad] ([idCiudad], [nombreCiudad], [idPais]) VALUES (2, N'Guadalajara', 1)
GO
INSERT [dbo].[ciudad] ([idCiudad], [nombreCiudad], [idPais]) VALUES (3, N'Monterrey', 1)
GO
INSERT [dbo].[ciudad] ([idCiudad], [nombreCiudad], [idPais]) VALUES (4, N'Buenos Aires', 2)
GO
INSERT [dbo].[ciudad] ([idCiudad], [nombreCiudad], [idPais]) VALUES (5, N'Córdoba', 2)
GO
INSERT [dbo].[ciudad] ([idCiudad], [nombreCiudad], [idPais]) VALUES (6, N'Rosario', 2)
GO
INSERT [dbo].[ciudad] ([idCiudad], [nombreCiudad], [idPais]) VALUES (7, N'Bogotá', 3)
GO
INSERT [dbo].[ciudad] ([idCiudad], [nombreCiudad], [idPais]) VALUES (8, N'Medellín', 3)
GO
INSERT [dbo].[ciudad] ([idCiudad], [nombreCiudad], [idPais]) VALUES (9, N'Cali', 3)
GO
SET IDENTITY_INSERT [dbo].[ciudad] OFF
GO
SET IDENTITY_INSERT [dbo].[pais] ON 
GO
INSERT [dbo].[pais] ([idPais], [nombrePais]) VALUES (1, N'México')
GO
INSERT [dbo].[pais] ([idPais], [nombrePais]) VALUES (2, N'Argentina')
GO
INSERT [dbo].[pais] ([idPais], [nombrePais]) VALUES (3, N'Colombia')
GO
SET IDENTITY_INSERT [dbo].[pais] OFF
GO
SET IDENTITY_INSERT [dbo].[profesor] ON 
GO
INSERT [dbo].[profesor] ([idPorfesor], [nombres], [apellidos], [tituloProfesional], [tipoDocumento], [idRol], [password], [email], [idCiudad], [idPais], [nroDocumento], [fechaNacimiento]) VALUES (2, N'profe mario', N'alvarez vallejo', N'Licenciado en bellas artes', 1, 2, N'/wQ0gk7pC8UuspA+37/m7w==', N'mario@profe.com', 1, 1, 0, CAST(N'2024-06-24T16:26:00.873' AS DateTime))
GO
INSERT [dbo].[profesor] ([idPorfesor], [nombres], [apellidos], [tituloProfesional], [tipoDocumento], [idRol], [password], [email], [idCiudad], [idPais], [nroDocumento], [fechaNacimiento]) VALUES (3, N'profe juan', N'paez', N'Licenciado en fisica nuclear', 1, 2, N'/wQ0gk7pC8UuspA+37/m7w==', N'mario@profe.com', 1, 1, 0, CAST(N'2024-06-24T16:26:00.873' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[profesor] OFF
GO
SET IDENTITY_INSERT [dbo].[rol] ON 
GO
INSERT [dbo].[rol] ([idRol], [nombreRol]) VALUES (1, N'admin')
GO
INSERT [dbo].[rol] ([idRol], [nombreRol]) VALUES (2, N'profesor')
GO
INSERT [dbo].[rol] ([idRol], [nombreRol]) VALUES (3, N'estudiante')
GO
SET IDENTITY_INSERT [dbo].[rol] OFF
GO
SET IDENTITY_INSERT [dbo].[tipoDocumento] ON 
GO
INSERT [dbo].[tipoDocumento] ([idDocumento], [nombre], [descripcion]) VALUES (1, N'Cedula', N'CC')
GO
INSERT [dbo].[tipoDocumento] ([idDocumento], [nombre], [descripcion]) VALUES (2, N'Registro Civil', N'RC')
GO
INSERT [dbo].[tipoDocumento] ([idDocumento], [nombre], [descripcion]) VALUES (3, N'Tarjeta Identidad', N'TI')
GO
SET IDENTITY_INSERT [dbo].[tipoDocumento] OFF
GO
ALTER TABLE [dbo].[calificacion]  WITH CHECK ADD  CONSTRAINT [FK_calificacion_estudiante] FOREIGN KEY([idEstudiante])
REFERENCES [dbo].[estudiante] ([idEstudiante])
GO
ALTER TABLE [dbo].[calificacion] CHECK CONSTRAINT [FK_calificacion_estudiante]
GO
ALTER TABLE [dbo].[calificacion]  WITH CHECK ADD  CONSTRAINT [FK_calificacion_grupo] FOREIGN KEY([idGrupo])
REFERENCES [dbo].[grupo] ([idGrupo])
GO
ALTER TABLE [dbo].[calificacion] CHECK CONSTRAINT [FK_calificacion_grupo]
GO
ALTER TABLE [dbo].[estudiante]  WITH CHECK ADD  CONSTRAINT [FK_estudiante_rol] FOREIGN KEY([idRol])
REFERENCES [dbo].[rol] ([idRol])
GO
ALTER TABLE [dbo].[estudiante] CHECK CONSTRAINT [FK_estudiante_rol]
GO
ALTER TABLE [dbo].[estudiante]  WITH CHECK ADD  CONSTRAINT [FK_estudiante_tipoDocumento] FOREIGN KEY([tipoDocumento])
REFERENCES [dbo].[tipoDocumento] ([idDocumento])
GO
ALTER TABLE [dbo].[estudiante] CHECK CONSTRAINT [FK_estudiante_tipoDocumento]
GO
ALTER TABLE [dbo].[grupo]  WITH CHECK ADD  CONSTRAINT [FK_grupo_materia] FOREIGN KEY([idMateria])
REFERENCES [dbo].[materia] ([idMateria])
GO
ALTER TABLE [dbo].[grupo] CHECK CONSTRAINT [FK_grupo_materia]
GO
ALTER TABLE [dbo].[grupo]  WITH CHECK ADD  CONSTRAINT [FK_grupo_profesor] FOREIGN KEY([idProfesor])
REFERENCES [dbo].[profesor] ([idPorfesor])
GO
ALTER TABLE [dbo].[grupo] CHECK CONSTRAINT [FK_grupo_profesor]
GO
ALTER TABLE [dbo].[profesor]  WITH CHECK ADD  CONSTRAINT [FK_profesor_rol] FOREIGN KEY([idRol])
REFERENCES [dbo].[rol] ([idRol])
GO
ALTER TABLE [dbo].[profesor] CHECK CONSTRAINT [FK_profesor_rol]
GO
ALTER TABLE [dbo].[profesor]  WITH CHECK ADD  CONSTRAINT [FK_profesor_tipoDocumento] FOREIGN KEY([tipoDocumento])
REFERENCES [dbo].[tipoDocumento] ([idDocumento])
GO
ALTER TABLE [dbo].[profesor] CHECK CONSTRAINT [FK_profesor_tipoDocumento]
GO
