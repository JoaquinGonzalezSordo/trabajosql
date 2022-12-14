USE [Videoclub_Sardinero]
GO
/****** Object:  Table [dbo].[Alquiler]    Script Date: 09/11/2022 9:16:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alquiler](
	[Codalq] [char](3) NOT NULL,
	[Codcli] [char](3) NULL,
	[Codpel] [char](2) NULL,
	[numpel] [int] NULL,
	[fecha_alquiler] [date] NULL,
	[fechaprev_devolucion] [date] NULL,
	[fechareal_devolucion] [date] NULL,
	[sancion] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Codalq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 09/11/2022 9:16:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Codcli] [char](3) NOT NULL,
	[nombre] [varchar](20) NOT NULL,
	[apellidos] [varchar](40) NOT NULL,
	[dni] [nvarchar](9) NULL,
	[direccion] [varchar](100) NULL,
	[ciudad] [varchar](30) NULL,
	[telefono] [varchar](15) NULL,
	[fecha_inscripcion] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Codcli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distribuidoras]    Script Date: 09/11/2022 9:16:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distribuidoras](
	[coddis] [char](3) NOT NULL,
	[nombre] [varchar](30) NULL,
	[Direccon] [varchar](50) NULL,
	[telefono] [varchar](15) NULL,
	[persona_contacto] [varchar](80) NULL,
	[fecha_contrato] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[coddis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 09/11/2022 9:16:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[Codpel] [char](2) NOT NULL,
	[numpel] [int] NOT NULL,
	[fecha_entrada] [date] NULL,
	[disponibilidad] [bit] NOT NULL,
	[Fecha_salida] [date] NULL,
	[Fecha_vuelta] [date] NULL,
	[precio] [float] NULL,
	[calificacion] [float] NULL,
 CONSTRAINT [PK__Inventar__B5FDF8E32069DE26] PRIMARY KEY CLUSTERED 
(
	[Codpel] ASC,
	[numpel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 09/11/2022 9:16:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[Codped] [char](3) NOT NULL,
	[coddis] [char](3) NULL,
	[Codpel] [char](2) NULL,
	[numeropel] [int] NULL,
	[fecha_llegada] [date] NULL,
	[formapago] [char](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Codped] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 09/11/2022 9:16:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas](
	[Codpel] [char](2) NOT NULL,
	[titulo] [varchar](70) NOT NULL,
	[genero] [varchar](20) NOT NULL,
	[pais] [varchar](20) NULL,
	[anio] [smallint] NULL,
	[director] [varchar](40) NOT NULL,
	[actorprincipal] [varchar](40) NULL,
	[actrizprincipal] [varchar](40) NULL,
	[numoscars] [tinyint] NULL,
	[productora] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[Codpel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Alquiler] ([Codalq], [Codcli], [Codpel], [numpel], [fecha_alquiler], [fechaprev_devolucion], [fechareal_devolucion], [sancion]) VALUES (N'A01', N'c01', N'BN', 2, CAST(N'2022-11-02' AS Date), CAST(N'2022-11-05' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[Alquiler] ([Codalq], [Codcli], [Codpel], [numpel], [fecha_alquiler], [fechaprev_devolucion], [fechareal_devolucion], [sancion]) VALUES (N'A03', N'c06', N'SM', 2, CAST(N'2022-11-04' AS Date), CAST(N'2022-11-07' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[Alquiler] ([Codalq], [Codcli], [Codpel], [numpel], [fecha_alquiler], [fechaprev_devolucion], [fechareal_devolucion], [sancion]) VALUES (N'A04', N'c02', N'AM', 1, CAST(N'2022-11-03' AS Date), CAST(N'2022-11-06' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[Alquiler] ([Codalq], [Codcli], [Codpel], [numpel], [fecha_alquiler], [fechaprev_devolucion], [fechareal_devolucion], [sancion]) VALUES (N'A05', N'c03', N'I1', 1, CAST(N'2022-11-05' AS Date), CAST(N'2022-11-07' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[Alquiler] ([Codalq], [Codcli], [Codpel], [numpel], [fecha_alquiler], [fechaprev_devolucion], [fechareal_devolucion], [sancion]) VALUES (N'A08', N'c11', N'SM', 1, CAST(N'2022-11-05' AS Date), CAST(N'2022-11-07' AS Date), CAST(N'1900-01-01' AS Date), 0)
GO
INSERT [dbo].[Clientes] ([Codcli], [nombre], [apellidos], [dni], [direccion], [ciudad], [telefono], [fecha_inscripcion]) VALUES (N'c01', N'Juan', N'Perez', N'12345678a', N'Calle Rosa 3', N'Santander', N'456546543', CAST(N'2007-11-18' AS Date))
INSERT [dbo].[Clientes] ([Codcli], [nombre], [apellidos], [dni], [direccion], [ciudad], [telefono], [fecha_inscripcion]) VALUES (N'c02', N'Luisa', N'Ruiz', N'22222222b', N'Calle Barco 3', N'Bezana', N'656546543', CAST(N'2009-10-18' AS Date))
INSERT [dbo].[Clientes] ([Codcli], [nombre], [apellidos], [dni], [direccion], [ciudad], [telefono], [fecha_inscripcion]) VALUES (N'c03', N'Carlos', N'Suarezs', N'33333333C', N'Calle Golondrina 3', N'Astillero', N'656547843', CAST(N'2013-10-18' AS Date))
INSERT [dbo].[Clientes] ([Codcli], [nombre], [apellidos], [dni], [direccion], [ciudad], [telefono], [fecha_inscripcion]) VALUES (N'c04', N'Miguel', N'Hernandez', N'44444444D', N'Calle Tomás 3', N'Santander', N'656547213', CAST(N'2015-10-18' AS Date))
INSERT [dbo].[Clientes] ([Codcli], [nombre], [apellidos], [dni], [direccion], [ciudad], [telefono], [fecha_inscripcion]) VALUES (N'c05', N'Federico', N'Lopez', N'56789432e', N'Calle Montes 3', N'Santander', N'656547363', CAST(N'2015-08-18' AS Date))
INSERT [dbo].[Clientes] ([Codcli], [nombre], [apellidos], [dni], [direccion], [ciudad], [telefono], [fecha_inscripcion]) VALUES (N'c06', N'Laura', N'Rodriguez', N'44556754F', N'Avenida Cantabria 7', N'Santander', N'656547993', CAST(N'2011-08-18' AS Date))
INSERT [dbo].[Clientes] ([Codcli], [nombre], [apellidos], [dni], [direccion], [ciudad], [telefono], [fecha_inscripcion]) VALUES (N'c07', N'Pedro', N'Rodriguez', N'87654321H', N'Avenida Constitucion 7', N'Bezana', N'656541193', CAST(N'2011-03-18' AS Date))
INSERT [dbo].[Clientes] ([Codcli], [nombre], [apellidos], [dni], [direccion], [ciudad], [telefono], [fecha_inscripcion]) VALUES (N'c08', N'María', N'Arganda', N'43216789H', N'Avenida Pereda 7', N'Santander', N'657521193', CAST(N'2011-03-12' AS Date))
INSERT [dbo].[Clientes] ([Codcli], [nombre], [apellidos], [dni], [direccion], [ciudad], [telefono], [fecha_inscripcion]) VALUES (N'c09', N'Iker', N'Jimenez', N'34567890K', N'Calle Sotileza 1', N'Bezana', N'656541223', CAST(N'2011-03-18' AS Date))
INSERT [dbo].[Clientes] ([Codcli], [nombre], [apellidos], [dni], [direccion], [ciudad], [telefono], [fecha_inscripcion]) VALUES (N'c10', N'Irene', N'Gonzalez', N'88888888l', N'Avenida Montés 7', N'Santander', N'656520093', CAST(N'2017-03-19' AS Date))
INSERT [dbo].[Clientes] ([Codcli], [nombre], [apellidos], [dni], [direccion], [ciudad], [telefono], [fecha_inscripcion]) VALUES (N'c11', N'Alberto', N'Rodriguez', N'54367845d', N'calle San javier 3', N'Bezana', N'654321987', CAST(N'2022-07-09' AS Date))
GO
INSERT [dbo].[Distribuidoras] ([coddis], [nombre], [Direccon], [telefono], [persona_contacto], [fecha_contrato]) VALUES (N'd01', N'Warner', N'Calle Menchaza 7 Madrid', N'111111111', N'Raul', CAST(N'2010-03-01' AS Date))
INSERT [dbo].[Distribuidoras] ([coddis], [nombre], [Direccon], [telefono], [persona_contacto], [fecha_contrato]) VALUES (N'd02', N'Universal', N'Calle Albiol 7 Barcelona', N'222222222', N'Carlos', CAST(N'2014-03-01' AS Date))
INSERT [dbo].[Distribuidoras] ([coddis], [nombre], [Direccon], [telefono], [persona_contacto], [fecha_contrato]) VALUES (N'd03', N'Paramount', N'Calle Victoria 7 Madrid', N'333333333', N'Ana', CAST(N'2017-03-01' AS Date))
INSERT [dbo].[Distribuidoras] ([coddis], [nombre], [Direccon], [telefono], [persona_contacto], [fecha_contrato]) VALUES (N'd04', N'20 th centuries', N'Calle San Luis 7 Barcelona', N'444444444', N'Miguel', CAST(N'2015-03-01' AS Date))
INSERT [dbo].[Distribuidoras] ([coddis], [nombre], [Direccon], [telefono], [persona_contacto], [fecha_contrato]) VALUES (N'd05', N'Disney', N'Calle Mayor 7 Bilbao', N'555555555', N'Gorka', CAST(N'2018-03-01' AS Date))
INSERT [dbo].[Distribuidoras] ([coddis], [nombre], [Direccon], [telefono], [persona_contacto], [fecha_contrato]) VALUES (N'd06', N'Columbia', N'Calle Arroyo 7 Madrid', N'666666666', N'Javier', CAST(N'2014-08-01' AS Date))
INSERT [dbo].[Distribuidoras] ([coddis], [nombre], [Direccon], [telefono], [persona_contacto], [fecha_contrato]) VALUES (N'd07', N'Metro Goldwin Mayer', N'Calle Santa Teresa 7 Madrid', N'777777777', N'Jimena', CAST(N'2019-08-01' AS Date))
INSERT [dbo].[Distribuidoras] ([coddis], [nombre], [Direccon], [telefono], [persona_contacto], [fecha_contrato]) VALUES (N'd08', N'United artists', N'Paseo de la Castellana 11 Madrid', N'888888888', N'Victor', CAST(N'2020-08-01' AS Date))
GO
INSERT [dbo].[Inventario] ([Codpel], [numpel], [fecha_entrada], [disponibilidad], [Fecha_salida], [Fecha_vuelta], [precio], [calificacion]) VALUES (N'AH', 1, CAST(N'2013-05-02' AS Date), 1, CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 2, 3)
INSERT [dbo].[Inventario] ([Codpel], [numpel], [fecha_entrada], [disponibilidad], [Fecha_salida], [Fecha_vuelta], [precio], [calificacion]) VALUES (N'AM', 1, CAST(N'2014-05-02' AS Date), 0, CAST(N'2022-11-03' AS Date), CAST(N'2022-11-06' AS Date), 2, 4)
INSERT [dbo].[Inventario] ([Codpel], [numpel], [fecha_entrada], [disponibilidad], [Fecha_salida], [Fecha_vuelta], [precio], [calificacion]) VALUES (N'BN', 1, CAST(N'2011-03-02' AS Date), 1, CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 2, 4)
INSERT [dbo].[Inventario] ([Codpel], [numpel], [fecha_entrada], [disponibilidad], [Fecha_salida], [Fecha_vuelta], [precio], [calificacion]) VALUES (N'BN', 2, CAST(N'2011-05-02' AS Date), 0, CAST(N'2022-11-02' AS Date), CAST(N'2022-11-05' AS Date), 2, 4)
INSERT [dbo].[Inventario] ([Codpel], [numpel], [fecha_entrada], [disponibilidad], [Fecha_salida], [Fecha_vuelta], [precio], [calificacion]) VALUES (N'I1', 1, CAST(N'2010-05-02' AS Date), 0, CAST(N'2022-11-03' AS Date), CAST(N'2022-11-06' AS Date), 2, 5)
INSERT [dbo].[Inventario] ([Codpel], [numpel], [fecha_entrada], [disponibilidad], [Fecha_salida], [Fecha_vuelta], [precio], [calificacion]) VALUES (N'I2', 1, CAST(N'2010-07-02' AS Date), 1, CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 2, 3)
INSERT [dbo].[Inventario] ([Codpel], [numpel], [fecha_entrada], [disponibilidad], [Fecha_salida], [Fecha_vuelta], [precio], [calificacion]) VALUES (N'I3', 1, CAST(N'2011-07-02' AS Date), 0, CAST(N'2022-11-04' AS Date), CAST(N'2022-11-06' AS Date), 2, 4)
INSERT [dbo].[Inventario] ([Codpel], [numpel], [fecha_entrada], [disponibilidad], [Fecha_salida], [Fecha_vuelta], [precio], [calificacion]) VALUES (N'SM', 1, CAST(N'2014-07-02' AS Date), 1, CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 2, 5)
INSERT [dbo].[Inventario] ([Codpel], [numpel], [fecha_entrada], [disponibilidad], [Fecha_salida], [Fecha_vuelta], [precio], [calificacion]) VALUES (N'SM', 2, CAST(N'2014-07-02' AS Date), 0, CAST(N'2022-11-04' AS Date), CAST(N'2022-11-07' AS Date), 2, 5)
GO
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P01', N'd01', N'CB', 2, CAST(N'2014-08-07' AS Date), N'Cheque                        ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P02', N'd01', N'H1', 2, CAST(N'2012-08-07' AS Date), N'Transferencia                 ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P03', N'd01', N'IM', 1, CAST(N'2022-08-07' AS Date), N'Metálico                      ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P04', N'd01', N'LG', 3, CAST(N'2019-08-07' AS Date), N'Metálico                      ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P05', N'd01', N'SM', 2, CAST(N'2010-08-07' AS Date), N'Cheque                        ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P06', N'd04', N'G1', 1, CAST(N'2017-08-07' AS Date), N'Transferencia                 ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P07', N'd04', N'G2', 1, CAST(N'2017-08-07' AS Date), N'Transferencia                 ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P08', N'd04', N'G3', 1, CAST(N'2017-08-07' AS Date), N'Transferencia                 ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P09', N'd04', N'G4', 1, CAST(N'2017-08-07' AS Date), N'Transferencia                 ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P10', N'd04', N'G5', 1, CAST(N'2017-08-07' AS Date), N'Transferencia                 ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P11', N'd04', N'G6', 1, CAST(N'2017-08-07' AS Date), N'Transferencia                 ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P12', N'd04', N'SL', 1, CAST(N'2015-08-07' AS Date), N'Transferencia                 ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P13', N'd04', N'VZ', 1, CAST(N'2018-08-07' AS Date), N'Transferencia                 ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P14', N'd02', N'EG', 1, CAST(N'2018-01-07' AS Date), N'Cheque                        ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P15', N'd02', N'ET', 1, CAST(N'2016-01-07' AS Date), N'Cheque                        ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P16', N'd02', N'GD', 1, CAST(N'2015-01-07' AS Date), N'Cheque                        ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P17', N'd02', N'TS', 1, CAST(N'2015-01-07' AS Date), N'Cheque                        ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P18', N'd03', N'FG', 2, CAST(N'2019-01-07' AS Date), N'Metálico                      ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P19', N'd03', N'I1', 1, CAST(N'2020-01-07' AS Date), N'Metálico                      ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P20', N'd03', N'I2', 1, CAST(N'2020-01-07' AS Date), N'Metálico                      ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P21', N'd03', N'I3', 1, CAST(N'2020-01-07' AS Date), N'Metálico                      ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P22', N'd03', N'I4', 1, CAST(N'2021-01-07' AS Date), N'Metálico                      ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P23', N'd03', N'P1', 2, CAST(N'2018-05-07' AS Date), N'Metálico                      ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P24', N'd03', N'P2', 2, CAST(N'2018-05-07' AS Date), N'Metálico                      ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P25', N'd03', N'TT', 1, CAST(N'2015-05-07' AS Date), N'Metálico                      ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P26', N'd05', N'BN', 2, CAST(N'2011-05-07' AS Date), N'Cheque                        ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P27', N'd06', N'GH', 1, CAST(N'2015-05-07' AS Date), N'Cheque                        ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P28', N'd06', N'LA', 1, CAST(N'2018-05-07' AS Date), N'Cheque                        ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P29', N'd07', N'BH', 1, CAST(N'2017-05-07' AS Date), N'Transferencia                 ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P30', N'd07', N'VL', 1, CAST(N'2017-05-07' AS Date), N'Transferencia                 ')
INSERT [dbo].[Pedidos] ([Codped], [coddis], [Codpel], [numeropel], [fecha_llegada], [formapago]) VALUES (N'P31', N'd08', N'AH', 1, CAST(N'2014-05-07' AS Date), N'Transferencia                 ')
GO
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'AH', N'Annie Hall', N'Comedia', N'EEUU', 1977, N'Woody Allen', N'Woody Allen', N'Diane Keaton', 4, N'United artists')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'AM', N'Amelie', N'Comedia', N'Francia', 1998, N'Jean Pierre Jeunet', N'Audrey Tatou', N'Mathieu Kassovitz', 1, N'Union Generale')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'BH', N'Ben Hur', N'Drama', N'EEUU', 1959, N'William Wyler', N'Charlton Heston', N'', 11, N'Metro Goldwin Mayer')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'BL', N'Bailando con lobos', N'Western', N'EEUU', 1990, N'Kevin Costner', N'Kevin Costner', N'Mary McDonnell', 8, N'Orion')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'BN', N'Blancanieves', N'Infantil', N'EEUU', 1937, N'Walt Disney', N'El principe', N'Blancanieves', 1, N'Disney')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'CB', N'Casablanca', N'Drama', N'EEUU', 1942, N'Michel Curtiz', N'Humphrey Bogart', N'Ingrid Bergman', 3, N'Warner')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'EG', N'El golpe', N'Comedia', N'EEUU', 1973, N'George Roy Hill', N'Paul Newman', N'', 7, N'Universal')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'ET', N'ET el extraterrestre', N'Ciencia ficcion', N'EEUU', 1982, N'Steven Spielberg', N'Henry Thomas', N'Drew Barrymore', 4, N'Universal')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'FG', N'Forrest Gump', N'Comedia', N'EEUU', 1994, N'Robert Zemeckis', N'Tom Hanks', N'Mary McDonnell', 6, N'Paramount')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'G1', N'Amenaza fantasma', N'Ciencia ficcion', N'EEUU', 1999, N'George Lucas', N'Ewan McGregor', N'Natalie Portman', 0, N'20 th centuries')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'G2', N'El ataque de los clones', N'Ciencia ficcion', N'EEUU', 2002, N'George Lucas', N'Ewan McGregor', N'Natalie Portman', 0, N'20 th centuries')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'G3', N'La venganza de los Sith', N'Ciencia ficcion', N'EEUU', 2005, N'George Lucas', N'Ewan McGregor', N'Natalie Portman', 0, N'20 th centuries')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'G4', N'Una nueva esperanza', N'Ciencia ficcion', N'EEUU', 1977, N'George Lucas', N'Harrison Ford', N'Carrie Fisher', 7, N'20 th centuries')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'G5', N'El imperio contraataca', N'Ciencia ficcion', N'EEUU', 1980, N'George Lucas', N'Harrison Ford', N'Carrie Fisher', 0, N'20 th centuries')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'G6', N'El retorno del Jedi', N'Ciencia ficcion', N'EEUU', 1983, N'George Lucas', N'Harrison Ford', N'Carrie Fisher', 0, N'20 th centuries')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'GD', N'Gladiator', N'Historica', N'EEUU', 2000, N'Ridley Scott', N'Russel Crowe', N'Connie Nielsen', 5, N'Universal')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'GH', N'Gandhi', N'Historica', N'Reino Unido', 1982, N'Richard Attenborough', N'Ben Kingsley', N'Rohini Attangadhi', 8, N'Columbia')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'H1', N'Harry Potter y la piedra filosofal', N'Infantil', N'Reino Unido', 2001, N'Chris Columbus', N'Daniel Radcliffe', N'Emma Watson', 0, N'Warner')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'I1', N'En busca del arca perdida', N'Aventuras', N'EEUU', 1981, N'Steven Spielberg', N'Harrison Ford', N'Karen Allen', 5, N'Paramount')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'I2', N'El templo maldito', N'Aventuras', N'EEUU', 1984, N'Steven Spielberg', N'Harrison Ford', N'Kate Capshaw', 0, N'Paramount')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'I3', N'La ultima cruzada', N'Aventuras', N'EEUU', 1989, N'Steven Spielberg', N'Harrison Ford', N'Alison Doody', 0, N'Paramount')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'I4', N'La calavera de cristal', N'Aventuras', N'EEUU', 2006, N'Steven Spielberg', N'Harrison Ford', N'Cate Blanchett', 0, N'Paramount')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'IM', N'La isla minima', N'Policiaca', N'España', 2014, N'Alberto Rodriguez', N'Javier Gutierrez', N'Maria Varod', 0, N'Warner')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'LA', N'Lawrence de Arabia', N'Historica', N'Reino Unido', 1962, N'David Lean', N'Peter O Toole', N'', 7, N'Columbia')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'LG', N'Los Goonies', N'Aventuras', N'EEUU', 1985, N'Steven Spielberg', N'Sean Astin', N'', 0, N'Warner')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'P1', N'El Padrino', N'Drama', N'EEUU', 1972, N'Francis Ford Coppola', N'Marlon Brando', N'Diane Keaton', 3, N'Paramount')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'P2', N'El Padrino 2', N'Drama', N'EEUU', 1974, N'Francis Ford Coppola', N'Al Pacino', N'Diane Keaton', 6, N'Paramount')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'S3', N'El señor de los anillos el retorno del rey', N'fantasía', N'EEUU', 2003, N'Peter Jackson', N'Elijah Wood', N'Liv Tyler', 11, N'New line cinema')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'SC', N'El silencio de los corderos', N'Terror', N'EEUU', 1991, N'Jonathan Demmer', N'Anthony Hopkins', N'Jodie Foster', 5, N'Orion')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'SL', N'Sonrisas y lagrimas', N'musical', N'EEUU', 1965, N'Robert Wise', N'Cristopher Plummer', N'Julie Andrews', 5, N'20 th centuries')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'SM', N'Superman', N'Aventuras', N'EEUU', 1978, N'Richard Donner', N'Cristopher Reeve', N'Margot Kidder', 1, N'Warner')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'T1', N'Torrente', N'Comedia', N'España', 1998, N'Santiago Segura', N'Santiago Segura', N'Neus Asensi', 0, N'ADS Service')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'TS', N'Tesis', N'Terror', N'España', 1996, N'Alejandro Amenabar', N'Eduardo Noriega', N'Ana Torrent', 0, N'Universal')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'TT', N'Titanic', N'Drama', N'EEUU', 1997, N'James Cameron', N'Leonardo di Caprio', N'Kate Winslet', 11, N'Paramount')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'VL', N'Lo que el viento de llevó', N'Drama', N'EEUU', 1939, N'Victor Fleming', N'Clark Gable', N'Vivien Leigh', 8, N'Metro Goldwin Mayer')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'VZ', N'Viva Zapata', N'Drama', N'EEUU', 1952, N'Elia Kazan', N'Marlon Brando', N'Jean Peters', 1, N'20 th centuries')
INSERT [dbo].[Peliculas] ([Codpel], [titulo], [genero], [pais], [anio], [director], [actorprincipal], [actrizprincipal], [numoscars], [productora]) VALUES (N'WS', N'West side story', N'musical', N'EEUU', 1961, N'Robert Wise', N'Richard Beymer', N'Natalie Wood', 10, N'Seven Arts')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Pelicula__38FA640F4F086B6A]    Script Date: 09/11/2022 9:17:00 ******/
ALTER TABLE [dbo].[Peliculas] ADD UNIQUE NONCLUSTERED 
(
	[titulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Alquiler]  WITH CHECK ADD  CONSTRAINT [FK_Codalqcli] FOREIGN KEY([Codcli])
REFERENCES [dbo].[Clientes] ([Codcli])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Alquiler] CHECK CONSTRAINT [FK_Codalqcli]
GO
ALTER TABLE [dbo].[Alquiler]  WITH CHECK ADD  CONSTRAINT [FK_Codalqpel] FOREIGN KEY([Codpel], [numpel])
REFERENCES [dbo].[Inventario] ([Codpel], [numpel])
GO
ALTER TABLE [dbo].[Alquiler] CHECK CONSTRAINT [FK_Codalqpel]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Codpel] FOREIGN KEY([Codpel])
REFERENCES [dbo].[Peliculas] ([Codpel])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_Codpel]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Coddis] FOREIGN KEY([coddis])
REFERENCES [dbo].[Distribuidoras] ([coddis])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Coddis]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Codpeli] FOREIGN KEY([Codpel])
REFERENCES [dbo].[Peliculas] ([Codpel])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Codpeli]
GO
/****** Object:  StoredProcedure [dbo].[Procdisponibilidadgenero]    Script Date: 09/11/2022 9:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Procdisponibilidadgenero]
	    
@genero as varchar(20)

as
begin
select I.Codpel,
       P.titulo,
	   P.genero,
       I.disponibilidad
	from Inventario I
	   right join
	     Peliculas P
	   on I.Codpel=P.Codpel
	 where P.genero=@genero;
RETURN;
END
GO
/****** Object:  StoredProcedure [dbo].[Procdisponibilidadtitulo]    Script Date: 09/11/2022 9:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Procdisponibilidadtitulo]
	    
@titulo as varchar(70)

as
begin
select I.Codpel,
       P.titulo,
       I.disponibilidad
	from Inventario I
	   right join
	     Peliculas P
	   on I.Codpel=P.Codpel
	 where P.titulo=@titulo;
RETURN;
END
GO
/****** Object:  StoredProcedure [dbo].[Procinsertaralq]    Script Date: 09/11/2022 9:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Procinsertaralq]
	    
@Codalq as char(3),
@telefono as varchar(15),
@Codpel as char(2),
@numpel as int,
@fecha_alquiler as date,
@fechaprev_devolucion as date,
@fechareal_devolucion as date,
@sancion as bit



as
begin
Declare @Codcli char(3)
set @Codcli = (select Codcli from Clientes where telefono=@telefono)

if @Codcli is null
      select 'No existe dicho cliente, introducir sus datos'
else
insert into Alquiler
    values(@Codalq,
	       @Codcli,
		   @Codpel,
		   @numpel,
		   @fecha_alquiler,
		   @fechaprev_devolucion,
		   @fechareal_devolucion,
		   @sancion)

RETURN;
END
GO
/****** Object:  StoredProcedure [dbo].[Procinsertarcli]    Script Date: 09/11/2022 9:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Procinsertarcli]
	    
@Codcli as char(3),
@nombre as varchar(20),
@apellidos as varchar(40),
@dni as nvarchar(9),
@direccion as varchar(100),
@ciudad as varchar(30),
@telefono as varchar(15),
@fecha_inscripcion as date


as
begin

insert into Clientes
    values(@Codcli,
	       @nombre,
		   @apellidos,
		   @dni,
		   @direccion,
		   @ciudad,
		   @telefono,
		   @fecha_inscripcion)

RETURN;
END
GO
/****** Object:  StoredProcedure [dbo].[Procsabersiescliente]    Script Date: 09/11/2022 9:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Procsabersiescliente]
	    
@telefono as varchar(15)


as
begin
if (select Codcli
	 from Clientes
	 where telefono=@telefono) 
is not null 
select(select Codcli
	 from Clientes
	 where telefono=@telefono)
ELSE
 SELECT 'NO ES CLIENTE'
RETURN;
END
GO
