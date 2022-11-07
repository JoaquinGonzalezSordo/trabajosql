USE [master]
GO
/****** Object:  Database [Videoclub_Sardinero]    Script Date: 07/11/2022 9:04:02 ******/
CREATE DATABASE [Videoclub_Sardinero]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Videoclub_Sardinero', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Videoclub_Sardinero.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Videoclub_Sardinero_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Videoclub_Sardinero_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Videoclub_Sardinero] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Videoclub_Sardinero].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Videoclub_Sardinero] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Videoclub_Sardinero] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Videoclub_Sardinero] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Videoclub_Sardinero] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Videoclub_Sardinero] SET ARITHABORT OFF 
GO
ALTER DATABASE [Videoclub_Sardinero] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Videoclub_Sardinero] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Videoclub_Sardinero] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Videoclub_Sardinero] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Videoclub_Sardinero] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Videoclub_Sardinero] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Videoclub_Sardinero] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Videoclub_Sardinero] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Videoclub_Sardinero] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Videoclub_Sardinero] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Videoclub_Sardinero] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Videoclub_Sardinero] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Videoclub_Sardinero] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Videoclub_Sardinero] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Videoclub_Sardinero] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Videoclub_Sardinero] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Videoclub_Sardinero] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Videoclub_Sardinero] SET RECOVERY FULL 
GO
ALTER DATABASE [Videoclub_Sardinero] SET  MULTI_USER 
GO
ALTER DATABASE [Videoclub_Sardinero] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Videoclub_Sardinero] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Videoclub_Sardinero] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Videoclub_Sardinero] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Videoclub_Sardinero] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Videoclub_Sardinero] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Videoclub_Sardinero', N'ON'
GO
ALTER DATABASE [Videoclub_Sardinero] SET QUERY_STORE = OFF
GO
USE [Videoclub_Sardinero]
GO
/****** Object:  Table [dbo].[Alquiler]    Script Date: 07/11/2022 9:04:02 ******/
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
/****** Object:  Table [dbo].[Clientes]    Script Date: 07/11/2022 9:04:02 ******/
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
/****** Object:  Table [dbo].[Distribuidoras]    Script Date: 07/11/2022 9:04:02 ******/
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
/****** Object:  Table [dbo].[Inventario]    Script Date: 07/11/2022 9:04:02 ******/
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
/****** Object:  Table [dbo].[Pedidos]    Script Date: 07/11/2022 9:04:02 ******/
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
/****** Object:  Table [dbo].[Peliculas]    Script Date: 07/11/2022 9:04:02 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[titulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
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
/****** Object:  StoredProcedure [dbo].[Procdisponibilidadgenero]    Script Date: 07/11/2022 9:04:02 ******/
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
/****** Object:  StoredProcedure [dbo].[Procdisponibilidadtitulo]    Script Date: 07/11/2022 9:04:02 ******/
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
/****** Object:  StoredProcedure [dbo].[Procinsertaralq]    Script Date: 07/11/2022 9:04:02 ******/
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
/****** Object:  StoredProcedure [dbo].[Procinsertarcli]    Script Date: 07/11/2022 9:04:02 ******/
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
/****** Object:  StoredProcedure [dbo].[Procsabersiescliente]    Script Date: 07/11/2022 9:04:02 ******/
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
USE [master]
GO
ALTER DATABASE [Videoclub_Sardinero] SET  READ_WRITE 
GO
