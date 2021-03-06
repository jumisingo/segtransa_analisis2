USE [SEGTRANSA]
GO
SET IDENTITY_INSERT [dbo].[Rol_Usuarios] ON 

INSERT [dbo].[Rol_Usuarios] ([idRol], [nombreRol]) VALUES (1, N'Admin')
INSERT [dbo].[Rol_Usuarios] ([idRol], [nombreRol]) VALUES (2, N'Vendedor')
INSERT [dbo].[Rol_Usuarios] ([idRol], [nombreRol]) VALUES (3, N'Contador')
INSERT [dbo].[Rol_Usuarios] ([idRol], [nombreRol]) VALUES (4, N'Bodegero')
SET IDENTITY_INSERT [dbo].[Rol_Usuarios] OFF
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido1], [apellido2], [contrasena], [telefono], [genero], [email], [direccion], [fechaCreacion], [idRol]) VALUES (1, N'Efrain', N'Lopez', N'Salazar', N'12345', N'8000-0000', N'M', N'eolscr@gmail.com', N'Alajuela', CAST(N'2018-11-10T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido1], [apellido2], [contrasena], [telefono], [genero], [email], [direccion], [fechaCreacion], [idRol]) VALUES (2, N'Ana', N'Perez', N'Molina', N'patito', N'8000-1000', N'F', N'anapm@gmail.com', N'San José', CAST(N'2018-12-01T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido1], [apellido2], [contrasena], [telefono], [genero], [email], [direccion], [fechaCreacion], [idRol]) VALUES (3, N'Pedro', N'Infante', N'Castro', N'mariachi', N'7000-1000', N'M', N'infante@gmail.com', N'Mexico', CAST(N'2018-12-10T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido1], [apellido2], [contrasena], [telefono], [genero], [email], [direccion], [fechaCreacion], [idRol]) VALUES (4, N'Luis', N'Vargas', N'Torres', N'felix', N'6000-1000', N'M', N'lvargas@gmail.com', N'Limón', CAST(N'2018-12-05T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido1], [apellido2], [contrasena], [telefono], [genero], [email], [direccion], [fechaCreacion], [idRol]) VALUES (5, N'María', N'Carmona', N'Solís', N'vivecartago', N'5000-1000', N'F', N'carmonasolis@gmail.com', N'Cartago', CAST(N'2018-11-05T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido1], [apellido2], [contrasena], [telefono], [genero], [email], [direccion], [fechaCreacion], [idRol]) VALUES (7, N'Esteban', N'Cordero', N'Montero', N'comanche', N'8000-2000', N'M', N'corderomontero@gmail.com', N'Guanacaste', CAST(N'2018-11-19T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Usuarios] ([idUsuario], [nombre], [apellido1], [apellido2], [contrasena], [telefono], [genero], [email], [direccion], [fechaCreacion], [idRol]) VALUES (8, N'Carmen', N'Soto', N'Ugalde', N'cadenita', N'7000-2000', N'F', N'csu1976@gmail.com', N'Heredia', CAST(N'2018-11-30T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
SET IDENTITY_INSERT [dbo].[EstadoActivos] ON 

INSERT [dbo].[EstadoActivos] ([idEstadoActivo], [nombreEstado]) VALUES (1, N'Activo')
INSERT [dbo].[EstadoActivos] ([idEstadoActivo], [nombreEstado]) VALUES (2, N'Inactivo')
INSERT [dbo].[EstadoActivos] ([idEstadoActivo], [nombreEstado]) VALUES (3, N'Retirado')
SET IDENTITY_INSERT [dbo].[EstadoActivos] OFF
INSERT [dbo].[Proveedores] ([idProveedor], [nombre], [telefono], [email], [direccion]) VALUES (1, N'Intcomex', N'4000-0000', N'info@intcomex.com', N'Uruca')
INSERT [dbo].[Proveedores] ([idProveedor], [nombre], [telefono], [email], [direccion]) VALUES (2, N'Cococo', N'4000-q000', N'info@cococo.com', N'San Pedro')
INSERT [dbo].[Proveedores] ([idProveedor], [nombre], [telefono], [email], [direccion]) VALUES (3, N'IBM', N'5000-q000', N'info@ibm.com', N'Paseo Colón')
INSERT [dbo].[Proveedores] ([idProveedor], [nombre], [telefono], [email], [direccion]) VALUES (4, N'Toshiba', N'5000-9000', N'info@Toshiba.com', N'Heredia')
INSERT [dbo].[Proveedores] ([idProveedor], [nombre], [telefono], [email], [direccion]) VALUES (5, N'Lenovo', N'6000-3000', N'info@lenovo.com', N'Cartago')
INSERT [dbo].[Proveedores] ([idProveedor], [nombre], [telefono], [email], [direccion]) VALUES (6, N'Dell', N'7000-2000', N'info@dell.com', N'Alajuela')
INSERT [dbo].[Proveedores] ([idProveedor], [nombre], [telefono], [email], [direccion]) VALUES (7, N'Asus', N'2000-1000', N'info@asus.com', N'San José')
INSERT [dbo].[Activos] ([idActivo], [nombreActivo], [descripcion], [foto], [precioInicial], [fechaCompra], [idProveedor], [idEstadoActivo]) VALUES (1, N'Teclado estandar', N'Conexion ps1 inglés', 0x, 15000.0000, CAST(N'2018-10-15T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Activos] ([idActivo], [nombreActivo], [descripcion], [foto], [precioInicial], [fechaCompra], [idProveedor], [idEstadoActivo]) VALUES (2, N'Teclado inalámbrico', N'Conexion bluetooth inglés', 0x, 20000.0000, CAST(N'2018-10-01T00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[Activos] ([idActivo], [nombreActivo], [descripcion], [foto], [precioInicial], [fechaCompra], [idProveedor], [idEstadoActivo]) VALUES (3, N'Monitor lcd 14 pulgadas', N'Conexion usb ', 0x, 50000.0000, CAST(N'2018-11-01T00:00:00.000' AS DateTime), 3, 1)
INSERT [dbo].[Activos] ([idActivo], [nombreActivo], [descripcion], [foto], [precioInicial], [fechaCompra], [idProveedor], [idEstadoActivo]) VALUES (4, N'Mouse 3 botones', N'Conexion usb', 0x, 5000.0000, CAST(N'2018-11-05T00:00:00.000' AS DateTime), 4, 1)
INSERT [dbo].[Activos] ([idActivo], [nombreActivo], [descripcion], [foto], [precioInicial], [fechaCompra], [idProveedor], [idEstadoActivo]) VALUES (5, N'Mouse 2 botones', N'Conexion ps2', 0x, 4000.0000, CAST(N'2018-12-05T00:00:00.000' AS DateTime), 5, 1)
INSERT [dbo].[Activos] ([idActivo], [nombreActivo], [descripcion], [foto], [precioInicial], [fechaCompra], [idProveedor], [idEstadoActivo]) VALUES (6, N'UPS 800w', N'4 conectores y red', 0x, 40000.0000, CAST(N'2018-12-01T00:00:00.000' AS DateTime), 6, 1)
INSERT [dbo].[Activos] ([idActivo], [nombreActivo], [descripcion], [foto], [precioInicial], [fechaCompra], [idProveedor], [idEstadoActivo]) VALUES (7, N'Laptop 14 pulgas', N'4GB 500GB', 0x, 140000.0000, CAST(N'2018-11-15T00:00:00.000' AS DateTime), 7, 1)
SET IDENTITY_INSERT [dbo].[Asignaciones] ON 

INSERT [dbo].[Asignaciones] ([idAsignacion], [idUsuario], [idActivo], [fechaInicialAsignacion], [fechafinalAsignacion]) VALUES (1, 1, 1, CAST(N'2018-10-01T00:00:00.000' AS DateTime), CAST(N'2018-12-31T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Asignaciones] OFF
SET IDENTITY_INSERT [dbo].[Bitacora] ON 

INSERT [dbo].[Bitacora] ([idBitacora], [detalleBitacora], [idUsuario]) VALUES (3, N'Ingreso Inventario', 1)
INSERT [dbo].[Bitacora] ([idBitacora], [detalleBitacora], [idUsuario]) VALUES (4, N'Ingreso Sistema', 1)
INSERT [dbo].[Bitacora] ([idBitacora], [detalleBitacora], [idUsuario]) VALUES (5, N'Ingreso Sistema', 2)
INSERT [dbo].[Bitacora] ([idBitacora], [detalleBitacora], [idUsuario]) VALUES (6, N'Ingreso Sistema', 3)
INSERT [dbo].[Bitacora] ([idBitacora], [detalleBitacora], [idUsuario]) VALUES (7, N'Ingreso Sistema', 4)
INSERT [dbo].[Bitacora] ([idBitacora], [detalleBitacora], [idUsuario]) VALUES (8, N'Ingreso Inventario', 4)
INSERT [dbo].[Bitacora] ([idBitacora], [detalleBitacora], [idUsuario]) VALUES (9, N'Ingreso Inventario', 3)
INSERT [dbo].[Bitacora] ([idBitacora], [detalleBitacora], [idUsuario]) VALUES (10, N'Ingreso Asignaciones', 3)
INSERT [dbo].[Bitacora] ([idBitacora], [detalleBitacora], [idUsuario]) VALUES (11, N'Ingreso Sistema', 7)
INSERT [dbo].[Bitacora] ([idBitacora], [detalleBitacora], [idUsuario]) VALUES (12, N'Ingreso Inventario', 7)
INSERT [dbo].[Bitacora] ([idBitacora], [detalleBitacora], [idUsuario]) VALUES (13, N'Ingreso Asignaciones', 7)
SET IDENTITY_INSERT [dbo].[Bitacora] OFF
