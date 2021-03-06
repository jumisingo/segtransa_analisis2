USE [SEGTRANSA]
GO
/****** Object:  Table [dbo].[Activos]    Script Date: 03-Dec-18 8:04:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activos](
	[idActivo] [int] NOT NULL,
	[nombreActivo] [nvarchar](50) NULL,
	[descripcion] [nvarchar](90) NULL,
	[foto] [image] NULL,
	[precioInicial] [money] NULL,
	[fechaCompra] [datetime] NULL,
	[idProveedor] [int] NULL,
	[idEstadoActivo] [int] NULL,
 CONSTRAINT [PK_Assets] PRIMARY KEY CLUSTERED 
(
	[idActivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Asignaciones]    Script Date: 03-Dec-18 8:04:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignaciones](
	[idAsignacion] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NULL,
	[idActivo] [int] NULL,
	[fechaInicialAsignacion] [datetime] NULL,
	[fechafinalAsignacion] [datetime] NULL,
 CONSTRAINT [PK_Allocations] PRIMARY KEY CLUSTERED 
(
	[idAsignacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bitacora]    Script Date: 03-Dec-18 8:04:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bitacora](
	[idBitacora] [int] IDENTITY(1,1) NOT NULL,
	[fechaBitacora] [timestamp] NULL,
	[detalleBitacora] [nvarchar](90) NULL,
	[idUsuario] [int] NULL,
 CONSTRAINT [PK_Bitacora] PRIMARY KEY CLUSTERED 
(
	[idBitacora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoActivos]    Script Date: 03-Dec-18 8:04:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoActivos](
	[idEstadoActivo] [int] IDENTITY(1,1) NOT NULL,
	[nombreEstado] [nvarchar](50) NULL,
 CONSTRAINT [PK_Assets_Status] PRIMARY KEY CLUSTERED 
(
	[idEstadoActivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 03-Dec-18 8:04:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[idProveedor] [int] NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[telefono] [nvarchar](75) NULL,
	[email] [nvarchar](90) NULL,
	[direccion] [nvarchar](90) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[idProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol_Usuarios]    Script Date: 03-Dec-18 8:04:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol_Usuarios](
	[idRol] [int] IDENTITY(1,1) NOT NULL,
	[nombreRol] [nvarchar](50) NULL,
 CONSTRAINT [PK_Rol_Users] PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 03-Dec-18 8:04:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[apellido1] [nvarchar](50) NOT NULL,
	[apellido2] [nvarchar](50) NULL,
	[contrasena] [nvarchar](50) NOT NULL,
	[telefono] [nvarchar](50) NULL,
	[genero] [char](1) NULL,
	[email] [nvarchar](75) NULL,
	[direccion] [nvarchar](75) NULL,
	[fechaCreacion] [datetime] NULL,
	[idRol] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Activos] ([idActivo], [nombreActivo], [descripcion], [foto], [precioInicial], [fechaCompra], [idProveedor], [idEstadoActivo]) VALUES (1, N'Teclado estandar', N'Conexion ps1 inglés', 0x, 15000.0000, CAST(N'2018-10-15T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Activos] ([idActivo], [nombreActivo], [descripcion], [foto], [precioInicial], [fechaCompra], [idProveedor], [idEstadoActivo]) VALUES (2, N'Teclado inalámbrico', N'Conexion bluetooth inglés', 0x, 20000.0000, CAST(N'2018-10-01T00:00:00.000' AS DateTime), 2, 1)
SET IDENTITY_INSERT [dbo].[Asignaciones] ON 

INSERT [dbo].[Asignaciones] ([idAsignacion], [idUsuario], [idActivo], [fechaInicialAsignacion], [fechafinalAsignacion]) VALUES (1, 1, 1, CAST(N'2018-10-01T00:00:00.000' AS DateTime), CAST(N'2018-12-31T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Asignaciones] OFF
SET IDENTITY_INSERT [dbo].[Bitacora] ON 

INSERT [dbo].[Bitacora] ([idBitacora], [detalleBitacora], [idUsuario]) VALUES (1, N'Ingreso Sistema', 1)
INSERT [dbo].[Bitacora] ([idBitacora], [detalleBitacora], [idUsuario]) VALUES (2, N'Ingreso Inventario', 1)
SET IDENTITY_INSERT [dbo].[Bitacora] OFF
SET IDENTITY_INSERT [dbo].[EstadoActivos] ON 

INSERT [dbo].[EstadoActivos] ([idEstadoActivo], [nombreEstado]) VALUES (1, N'Activo')
INSERT [dbo].[EstadoActivos] ([idEstadoActivo], [nombreEstado]) VALUES (2, N'Inactivo')
INSERT [dbo].[EstadoActivos] ([idEstadoActivo], [nombreEstado]) VALUES (3, N'Retirado')
SET IDENTITY_INSERT [dbo].[EstadoActivos] OFF
INSERT [dbo].[Proveedores] ([idProveedor], [nombre], [telefono], [email], [direccion]) VALUES (1, N'Intcomex', N'4000-0000', N'info@intcomex.com', N'Uruca')
INSERT [dbo].[Proveedores] ([idProveedor], [nombre], [telefono], [email], [direccion]) VALUES (2, N'Cococo', N'4000-q000', N'info@cococo.com', N'San Pedro')
SET IDENTITY_INSERT [dbo].[Rol_Usuarios] ON 

INSERT [dbo].[Rol_Usuarios] ([idRol], [nombreRol]) VALUES (1, N'Admin')
INSERT [dbo].[Rol_Usuarios] ([idRol], [nombreRol]) VALUES (2, N'Vendedor')
INSERT [dbo].[Rol_Usuarios] ([idRol], [nombreRol]) VALUES (3, N'Contador')
INSERT [dbo].[Rol_Usuarios] ([idRol], [nombreRol]) VALUES (4, N'Bodegero')
SET IDENTITY_INSERT [dbo].[Rol_Usuarios] OFF
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido1], [apellido2], [contrasena], [telefono], [genero], [email], [direccion], [fechaCreacion], [idRol]) VALUES (1, N'Efrain', N'Lopez', N'Salazar', N'12345', N'8000-0000', N'M', N'eolscr@gmail.com', N'Alajuela', CAST(N'2018-11-10T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
ALTER TABLE [dbo].[Activos]  WITH CHECK ADD  CONSTRAINT [FK_Assets_Assets_Status] FOREIGN KEY([idEstadoActivo])
REFERENCES [dbo].[EstadoActivos] ([idEstadoActivo])
GO
ALTER TABLE [dbo].[Activos] CHECK CONSTRAINT [FK_Assets_Assets_Status]
GO
ALTER TABLE [dbo].[Activos]  WITH CHECK ADD  CONSTRAINT [FK_Assets_Suppliers] FOREIGN KEY([idProveedor])
REFERENCES [dbo].[Proveedores] ([idProveedor])
GO
ALTER TABLE [dbo].[Activos] CHECK CONSTRAINT [FK_Assets_Suppliers]
GO
ALTER TABLE [dbo].[Asignaciones]  WITH CHECK ADD  CONSTRAINT [FK_Allocations_Assets] FOREIGN KEY([idActivo])
REFERENCES [dbo].[Activos] ([idActivo])
GO
ALTER TABLE [dbo].[Asignaciones] CHECK CONSTRAINT [FK_Allocations_Assets]
GO
ALTER TABLE [dbo].[Asignaciones]  WITH CHECK ADD  CONSTRAINT [FK_Allocations_Users] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuarios] ([idUsuario])
GO
ALTER TABLE [dbo].[Asignaciones] CHECK CONSTRAINT [FK_Allocations_Users]
GO
ALTER TABLE [dbo].[Bitacora]  WITH CHECK ADD  CONSTRAINT [FK_Bitacora_Users] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuarios] ([idUsuario])
GO
ALTER TABLE [dbo].[Bitacora] CHECK CONSTRAINT [FK_Bitacora_Users]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Users_Rol_Users] FOREIGN KEY([idRol])
REFERENCES [dbo].[Rol_Usuarios] ([idRol])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Users_Rol_Users]
GO
