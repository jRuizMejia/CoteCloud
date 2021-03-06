USE [master]
GO
/****** Object:  Database [Cote_Cloud]    Script Date: 8/12/2018 11:27:27 ******/
CREATE DATABASE [Cote_Cloud]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cote_Cloud', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Cote_Cloud.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Cote_Cloud_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Cote_Cloud_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Cote_Cloud] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cote_Cloud].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cote_Cloud] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cote_Cloud] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cote_Cloud] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cote_Cloud] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cote_Cloud] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cote_Cloud] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Cote_Cloud] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cote_Cloud] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cote_Cloud] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cote_Cloud] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cote_Cloud] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cote_Cloud] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cote_Cloud] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cote_Cloud] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cote_Cloud] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Cote_Cloud] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cote_Cloud] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cote_Cloud] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cote_Cloud] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [Cote_Cloud] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cote_Cloud] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Cote_Cloud] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cote_Cloud] SET RECOVERY FULL 
GO
ALTER DATABASE [Cote_Cloud] SET  MULTI_USER 
GO
ALTER DATABASE [Cote_Cloud] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cote_Cloud] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cote_Cloud] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cote_Cloud] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Cote_Cloud] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Cote_Cloud', N'ON'
GO
ALTER DATABASE [Cote_Cloud] SET QUERY_STORE = ON
GO
ALTER DATABASE [Cote_Cloud] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 7), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 10, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO)
GO
USE [Cote_Cloud]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Cote_Cloud]
GO
/****** Object:  Table [dbo].[tAdmitidos]    Script Date: 8/12/2018 11:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tAdmitidos](
	[id] [bigint] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellidos] [varchar](50) NOT NULL,
	[correo] [varchar](50) NOT NULL,
	[especialidad] [varchar](100) NULL,
	[telefono] [int] NOT NULL,
 CONSTRAINT [PK_tAdmitidos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tDataAdmision]    Script Date: 8/12/2018 11:27:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tDataAdmision](
	[yearAdmision] [varchar](4) NOT NULL,
	[cantStudents] [int] NOT NULL,
	[inicio] [varchar](15) NOT NULL,
	[final] [varchar](15) NOT NULL,
	[priceSobre] [int] NOT NULL,
	[pinesAvailables] [int] NOT NULL,
 CONSTRAINT [PK_tDataAdmision] PRIMARY KEY CLUSTERED 
(
	[yearAdmision] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tEspecialidades]    Script Date: 8/12/2018 11:27:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tEspecialidades](
	[especialidad] [varchar](100) NOT NULL,
	[disponible] [varchar](50) NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK_tEspecialidades_1] PRIMARY KEY CLUSTERED 
(
	[especialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tEstudiantes]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tEstudiantes](
	[cedula] [bigint] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellidos] [varchar](50) NOT NULL,
	[correo] [varchar](50) NOT NULL,
	[especialidad] [varchar](100) NULL,
	[nacimiento] [date] NOT NULL,
	[telefono] [int] NOT NULL,
	[nacionalidad] [varchar](50) NOT NULL,
	[edad] [int] NOT NULL,
	[sexo] [varchar](20) NOT NULL,
	[localizacion] [varchar](200) NULL,
	[telefonoResidencia] [int] NULL,
	[direccionResidencia] [varchar](500) NULL,
	[nomPadre] [varchar](200) NULL,
	[nomMadre] [varchar](200) NULL,
	[nomEncargado] [varchar](200) NULL,
	[cedPadre] [bigint] NULL,
	[cedMadre] [bigint] NULL,
	[cedEncargado] [bigint] NULL,
	[telPadre] [int] NULL,
	[telMadre] [int] NULL,
	[telEncargado] [int] NULL,
	[ingresoEncargado] [int] NULL,
	[ingresoMadre] [int] NULL,
	[ingresoPadre] [int] NULL,
	[telTrabajoEncargado] [int] NULL,
	[telTrabajoMadre] [int] NULL,
	[telTrabajoPadre] [int] NULL,
	[cuota] [int] NOT NULL,
	[poliza] [varchar](50) NOT NULL,
 CONSTRAINT [PK__tEstudia__415B7BE41C0EEC89] PRIMARY KEY CLUSTERED 
(
	[cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tMaterias]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tMaterias](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[materia] [varchar](100) NOT NULL,
	[area] [varchar](50) NOT NULL,
	[especialidad] [varchar](100) NULL,
 CONSTRAINT [PK__tMateria__3213E83FAFB2308F] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tNotasAdmision]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tNotasAdmision](
	[cedula] [bigint] NOT NULL,
	[EspaSet] [decimal](18, 2) NOT NULL,
	[EspaOct] [decimal](18, 2) NOT NULL,
	[EspaNov] [decimal](18, 2) NOT NULL,
	[InglesSet] [decimal](18, 2) NOT NULL,
	[InglesOct] [decimal](18, 2) NOT NULL,
	[InglesNov] [decimal](18, 2) NOT NULL,
	[MateSet] [decimal](18, 2) NOT NULL,
	[MateOct] [decimal](18, 2) NOT NULL,
	[MateNov] [decimal](18, 2) NOT NULL,
	[EstudiosSet] [decimal](18, 2) NOT NULL,
	[EstudiosOct] [decimal](18, 2) NOT NULL,
	[EstudiosNov] [decimal](18, 2) NOT NULL,
	[CivicaSet] [decimal](18, 2) NOT NULL,
	[CivicaOct] [decimal](18, 2) NOT NULL,
	[CivicaNov] [decimal](18, 2) NOT NULL,
	[CienciasSet] [decimal](18, 2) NOT NULL,
	[CienciasOct] [decimal](18, 2) NOT NULL,
	[CienciasNov] [decimal](18, 2) NOT NULL,
	[AusInjustSet] [int] NOT NULL,
	[AusInjustOct] [int] NOT NULL,
	[AusInjustNov] [int] NOT NULL,
	[ConductaSet] [decimal](18, 2) NOT NULL,
	[ConductaOct] [decimal](18, 2) NOT NULL,
	[ConductaNov] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_tNotasAdmision] PRIMARY KEY CLUSTERED 
(
	[cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tPinnes]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tPinnes](
	[pin] [varchar](10) NOT NULL,
	[seleccionado] [varchar](50) NOT NULL,
	[fecha] [smalldatetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tPreMatricula]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tPreMatricula](
	[cedula] [bigint] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellidos] [varchar](50) NOT NULL,
	[correo] [varchar](50) NOT NULL,
	[opcion1] [varchar](100) NULL,
	[opcion2] [varchar](100) NULL,
	[nacimiento] [date] NOT NULL,
	[telefono] [int] NOT NULL,
	[nacionalidad] [varchar](50) NOT NULL,
	[coleprocedencia] [varchar](100) NULL,
	[edad] [int] NOT NULL,
	[sexo] [varchar](20) NOT NULL,
	[provincia] [varchar](50) NULL,
	[canton] [varchar](50) NULL,
	[distrito] [varchar](50) NULL,
	[telefonoResidencia] [int] NULL,
	[direccionResidencia] [varchar](500) NULL,
	[nomPadre] [varchar](200) NULL,
	[nomMadre] [varchar](200) NULL,
	[nomEncargado] [varchar](200) NULL,
	[cedPadre] [bigint] NULL,
	[cedMadre] [bigint] NULL,
	[cedEncargado] [bigint] NULL,
	[telPadre] [int] NULL,
	[telMadre] [int] NULL,
	[telEncargado] [int] NULL,
	[ingresoEncargado] [int] NULL,
	[ingresoMadre] [int] NULL,
	[ingresoPadre] [int] NULL,
	[ocupacionEncargado] [varchar](200) NULL,
	[ocupacionMadre] [varchar](200) NULL,
	[ocupacionPadre] [varchar](200) NULL,
	[telTrabajoEncargado] [int] NULL,
	[telTrabajoMadre] [int] NULL,
	[telTrabajoPadre] [int] NULL,
	[notas] [decimal](18, 2) NULL,
	[entrevista] [decimal](18, 2) NULL,
	[examen] [decimal](18, 2) NULL,
	[resultado] [decimal](18, 2) NULL,
	[admitido] [varchar](5) NULL,
	[sobre] [int] NULL,
	[pin] [varchar](10) NULL,
	[ausencias] [int] NULL,
	[conducta] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tPreMatricula] PRIMARY KEY CLUSTERED 
(
	[cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tProfesor]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tProfesor](
	[Cedula] [bigint] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
	[Correo] [varchar](100) NOT NULL,
	[Telefono] [int] NOT NULL,
	[materia1] [int] NOT NULL,
	[materia2] [int] NULL,
	[materia3] [int] NULL,
 CONSTRAINT [PK_Profesor] PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tUsers]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tUsers](
	[usuario] [varchar](30) NOT NULL,
	[id] [bigint] NOT NULL,
	[contra] [varchar](50) NOT NULL,
	[iniciado] [bit] NOT NULL,
	[rol] [varchar](20) NOT NULL,
	[foto] [image] NULL,
	[correo] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tUsers_1] PRIMARY KEY CLUSTERED 
(
	[usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[tMaterias]  WITH CHECK ADD  CONSTRAINT [FK_especialidad_tEspecialidades] FOREIGN KEY([especialidad])
REFERENCES [dbo].[tEspecialidades] ([especialidad])
GO
ALTER TABLE [dbo].[tMaterias] CHECK CONSTRAINT [FK_especialidad_tEspecialidades]
GO
ALTER TABLE [dbo].[tNotasAdmision]  WITH CHECK ADD  CONSTRAINT [FK_tPreMatricula_cedula] FOREIGN KEY([cedula])
REFERENCES [dbo].[tPreMatricula] ([cedula])
GO
ALTER TABLE [dbo].[tNotasAdmision] CHECK CONSTRAINT [FK_tPreMatricula_cedula]
GO
ALTER TABLE [dbo].[tProfesor]  WITH CHECK ADD  CONSTRAINT [FK_tMateria_materia1] FOREIGN KEY([materia1])
REFERENCES [dbo].[tMaterias] ([id])
GO
ALTER TABLE [dbo].[tProfesor] CHECK CONSTRAINT [FK_tMateria_materia1]
GO
ALTER TABLE [dbo].[tProfesor]  WITH CHECK ADD  CONSTRAINT [FK_tMateria_materia2] FOREIGN KEY([materia2])
REFERENCES [dbo].[tMaterias] ([id])
GO
ALTER TABLE [dbo].[tProfesor] CHECK CONSTRAINT [FK_tMateria_materia2]
GO
ALTER TABLE [dbo].[tProfesor]  WITH CHECK ADD  CONSTRAINT [FK_tMateria_materia3] FOREIGN KEY([materia3])
REFERENCES [dbo].[tMaterias] ([id])
GO
ALTER TABLE [dbo].[tProfesor] CHECK CONSTRAINT [FK_tMateria_materia3]
GO
/****** Object:  StoredProcedure [dbo].[delPin]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delPin]
	-- Add the parameters for the stored procedure here
	 @pin varchar(10)
AS
BEGIN TRANSACTION
	delete from tPinnes where pin = @pin
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[editPin]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[editPin]
	-- Add the parameters for the stored procedure here
	 @pin varchar(10),
	 @estado varchar(11)
AS
BEGIN TRANSACTION
	update tPinnes set seleccionado = @estado where pin = @pin
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spDelAdmitido]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDelAdmitido]
@id bigint,@especialidad varchar(100)
AS
BEGIN TRANSACTION
delete from tAdmitidos where id=@id
update tPreMatricula set admitido='NO' where cedula=@id
update tEspecialidades set cantidad=(cantidad+1) where especialidad = @especialidad;

IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spDelEsp]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDelEsp]
@espe varchar(100)
AS
BEGIN TRANSACTION
delete from tEspecialidades where especialidad=@espe
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spDelMateria]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDelMateria] 
@materia varchar(50),@area varchar(50), @especialidad varchar(100)
AS
BEGIN TRANSACTION
	delete from tMaterias where materia= @materia and area=@area and especialidad=@especialidad
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spDelPinFechas]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDelPinFechas] 
	 @fecha smalldatetime
AS
BEGIN TRANSACTION
	delete from tPinnes where fecha = @fecha
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spDelPre]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDelPre]
@id int
AS
BEGIN TRANSACTION
	delete from tPreMatricula where cedula = @id
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spDelPreMatricula]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDelPreMatricula]
AS
BEGIN TRANSACTION
delete from tNotasAdmision
delete from tAdmitidos
delete from tPreMatricula
update tEspecialidades set disponible='cerrado', cantidad=0
delete from tPinnes
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spDelPrematriculado]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDelPrematriculado] 
@id bigint, @year varchar(4)
AS
BEGIN TRANSACTION
declare @pin varchar(10)
select @pin =(select pin from tPreMatricula where cedula=@id)
delete from tAdmitidos where id=@id
delete from tPreMatricula where cedula=@id
update tDataAdmision set cantStudents-=1, pinesAvailables+=1
update tPinnes set seleccionado='disponible' where pin=@pin
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spDelProfe]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDelProfe] 
@id bigint
AS
BEGIN TRANSACTION
delete from tProfesor where Cedula=@id
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spDelSubArea2Profe]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDelSubArea2Profe] 
@id bigint
AS
BEGIN TRANSACTION
update tProfesor set materia2=null where Cedula=@id
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spDelSubArea3Profe]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDelSubArea3Profe] 
@id bigint
AS
BEGIN TRANSACTION
update tProfesor set materia3=null where Cedula=@id
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spEditDataUser]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditDataUser]
@id bigint,@usuario varchar(30),@Nuevousuario varchar(30), @correo varchar(100),@foto image, @cel int
AS
BEGIN TRANSACTION
update tUsers set usuario=@Nuevousuario, foto=@foto,correo= @correo where usuario=@usuario
update tEstudiantes set telefono=@cel where cedula=@id
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spEditEspecia]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditEspecia]
@newespe varchar(100),@espe varchar(100),@disponi varchar(50),@cant int
AS
BEGIN TRANSACTION
Update tEspecialidades set especialidad=@newespe, disponible=@disponi,cantidad=@cant where especialidad=@espe;
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spEditMateria]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditMateria] 
@materiaN varchar(100),@materia varchar(100),@area varchar(50), @especialidad varchar(100)
AS
BEGIN TRANSACTION
update tMaterias set materia=@materiaN where materia= @materia and area=@area and especialidad=@especialidad
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spEditNotasAdmitidos]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditNotasAdmitidos] 
	@ced bigint,@setEspa decimal(18,2), @setIng decimal(18,2), @setMate decimal(18,2), @setEst decimal(18,2), 
	@setCiv decimal(18,2), @setCien decimal(18,2), @setAusIn int,
	@setCond decimal(18,2), @octEspa decimal(18,2), @octIng decimal(18,2), @octMate decimal(18,2),
	@octEst decimal(18,2), @octCiv decimal(18,2), @octCien decimal(18,2),@octAusIn int, 
	@octCond decimal(18,2), @novEspa decimal(18,2), @novIng decimal(18,2), @novMate decimal(18,2), 
	@novEst decimal(18,2), @novCiv decimal(18,2), @novCien decimal(18,2), @novAusIn int, @novCond decimal(18,2)
AS
BEGIN TRANSACTION
	update tNotasAdmision set EspaSet= @setEspa,EspaOct=@octEspa,EspaNov=@novEspa,
	InglesSet=@setIng,InglesOct=@octIng,InglesNov=@novIng, MateSet=@setMate,
	MateNov=@novMate,MateOct=@octMate,EstudiosNov=@novEst,EstudiosOct=@octEst,
	EstudiosSet=@setEst,CivicaSet=@setCiv,CivicaOct=@octCiv,CivicaNov=@novCiv,
	CienciasSet=@setCien,CienciasOct=@octCien,CienciasNov=@novCien,AusInjustSet=@setAusIn,
	AusInjustOct=@octAusIn,AusInjustNov=@novAusIn,ConductaSet=@setCond,ConductaOct=@octCond,
	ConductaNov=@novCond  where cedula=@ced
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spEditPreMatriculado]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditPreMatriculado] 
@id bigint,@Newid bigint,@nombre varchar(50),@apellidos varchar(50),@tel int,@correo varchar(50),@provincia varchar(50),@canton varchar(50),@distrito varchar(50),
 @telRes int null,@direccion varchar(500),@nomP varchar(200) null,@nomE varchar(200) null,@nomM varchar(200) null,@cedM bigint null,@cedP bigint null,
 @cedE bigint null, @telM int null, @telP int null,@telE int null,@ingresoE int null,@ingresoM int null, @ingresoP int null,@ocupacionM varchar(200) null,
 @ocupacionP varchar(200) null,@ocupacionE varchar(200) null,@telTm int null,@telTe int null,@telTp int null,@edad int
AS
BEGIN
Update tPreMatricula set cedula=@Newid,nombre=@nombre,apellidos=@apellidos,
correo=@correo,telefono=@tel,edad=@edad,distrito=@distrito,canton=@canton,
provincia=@provincia,telefonoResidencia=@telRes,direccionResidencia=@direccion,
nomPadre=@nomP,nomMadre=@nomM,nomEncargado=@nomE,cedPadre=@cedP,cedMadre=@cedM,
cedEncargado=@cedE,telPadre=@telP,telMadre=@telM,telEncargado=@telE,ingresoPadre=@ingresoP,
ingresoMadre=@ingresoM,ingresoEncargado=@ingresoE,telTrabajoPadre=@telTp,telTrabajoMadre=@telTm,
telTrabajoEncargado=@telTe where cedula=@id
END
GO
/****** Object:  StoredProcedure [dbo].[spEditProcess]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditProcess]
@year varchar(4),@cant int,@inicio varchar(15),@final varchar(15),@sobre int,@pines int
AS
BEGIN TRANSACTION
update tDataAdmision set cantStudents+=@cant, inicio=@inicio,final=@final,priceSobre=@sobre,
pinesAvailables+=@pines where yearAdmision=@year
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spEditProfe]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditProfe]
@id bigint,@nombre varchar(50), @apellidos varchar(50),@tel int,
@mat int
AS
BEGIN TRANSACTION
update tProfesor set Nombre=@nombre,Apellidos=@apellidos,Telefono=@tel,
materia1=@mat where Cedula=@id
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spEditProfeSubArea2]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditProfeSubArea2]
@id bigint,@mat int
AS
BEGIN TRANSACTION
update tProfesor set materia2=@mat where Cedula=@id
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spEditProfeSubArea3]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditProfeSubArea3]
@id bigint,@mat int
AS
BEGIN TRANSACTION
update tProfesor set materia3=@mat where Cedula=@id
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spEditUser]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditUser]
@usuario varchar(30), @iniciado bit, @contra varchar(20)
AS
BEGIN TRANSACTION
update tUsers set iniciado=@iniciado,contra=@contra where usuario=@usuario
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spGetAdmitidos]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetAdmitidos] 
@especialidad varchar(100)
AS
BEGIN TRANSACTION
select id,nombre,apellidos,correo from tAdmitidos where especialidad=@especialidad
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spGetAllDataPines]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetAllDataPines]	
AS
BEGIN TRANSACTION
	select * from tPinnes
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spGetAllPines]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetAllPines]	
AS
BEGIN TRANSACTION
	select pin from tPinnes
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spGetAllPreMatriculado]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetAllPreMatriculado]

AS
BEGIN TRANSACTION
select * from tPreMatricula order by apellidos asc
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spGetAllUsers]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetAllUsers]

AS
BEGIN TRANSACTION
select * from tUsers
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spGetCantEsp]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetCantEsp]
@especialidad varchar(100)
AS
BEGIN TRANSACTION
	select cantidad from tEspecialidades where especialidad=@especialidad;
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spGetDataProceso]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetDataProceso]
	@year varchar(4)
AS
BEGIN TRANSACTION
	select * from tDataAdmision where yearAdmision=@year
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spGetEsp]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetEsp]
AS
BEGIN TRANSACTION
select * from tEspecialidades
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spGetFechasDisponibles]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetFechasDisponibles]
AS
BEGIN TRANSACTION
SELECT fecha FROM tPinnes where seleccionado='disponible';
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spGetMaterias]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetMaterias] 
@area varchar(50)
AS
BEGIN TRANSACTION
	select * from tMaterias where area=@area
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spGetMateriasProfe]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetMateriasProfe] 
@id bigint
AS
BEGIN TRANSACTION
	select (select tMaterias.materia from tProfesor inner join tMaterias on tProfesor.materia1=tMaterias.id where Cedula=@id) as 'Materia1',
	 (select tMaterias.materia from tProfesor inner join tMaterias on tProfesor.materia2=tMaterias.id where Cedula=@id) as 'Materia2',
	 (select tMaterias.materia from tProfesor inner join tMaterias on tProfesor.materia3=tMaterias.id where Cedula=@id) as 'Materia3',
	 (select tMaterias.especialidad from tProfesor inner join tMaterias on tProfesor.materia1=tMaterias.id where Cedula=@id) as 'Especialidad'
	 from tProfesor where Cedula=@id
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spGetNotas]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[spGetNotas]
@especialidad varchar(100)
AS
BEGIN TRANSACTION
select nombre,apellidos,cedula,resultado as Promedio, ingresoEncargado as 'Salario Encargado',
ingresoMadre as 'Salario Madre',ingresoPadre as 'Salario Padre' from tPreMatricula  
where admitido='NO' and (opcion1=@especialidad or opcion2=@especialidad) order by resultado DESC;
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spGetNotasEstudiante]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetNotasEstudiante] 
@id bigint
AS
BEGIN TRANSACTION
select * from tNotasAdmision where cedula=@id
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spGetNotasOpcion1]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[spGetNotasOpcion1]
	@especialidad varchar(100)
AS
BEGIN TRANSACTION
select nombre,apellidos,cedula,resultado as Promedio, ingresoEncargado as 'Salario Encargado',
ingresoMadre as 'Salario Madre',ingresoPadre as 'Salario Padre' from tPreMatricula  
where admitido='NO' and opcion1=@especialidad order by resultado DESC;
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spGetNotasOpcion2]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[spGetNotasOpcion2]
	@especialidad varchar(100)
AS
BEGIN TRANSACTION
select nombre,apellidos,cedula,resultado as Promedio, ingresoEncargado as 'Salario Encargado',
ingresoMadre as 'Salario Madre',ingresoPadre as 'Salario Padre' from tPreMatricula  
where admitido='NO' and opcion2=@especialidad order by resultado DESC;
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spGetPinesDisponibles]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetPinesDisponibles]
AS
BEGIN TRANSACTION
SELECT pin FROM tPinnes where seleccionado='disponible';
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spGetPinesFechas]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetPinesFechas]
@fecha Datetime
AS
BEGIN TRANSACTION
SELECT pin FROM tPinnes where fecha=@fecha and seleccionado='disponible'
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spGetPreMatriculado]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetPreMatriculado] 
@id bigint
AS
BEGIN TRANSACTION
select * from tPreMatricula where cedula=@id;
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spGetPrematriculados]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetPrematriculados]
	@especialidad varchar(100)
AS
BEGIN TRANSACTION
SELECT cedula, opcion1,opcion2 FROM tPreMatricula WHERE (opcion1 = @especialidad or opcion2= @especialidad) and admitido='NO'
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spGetProfe]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetProfe]
AS
BEGIN TRANSACTION
	select Cedula,Nombre,Apellidos,Telefono,Correo,materia1,materia2,materia3 from tProfesor
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spGetStudents]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetStudents]
AS
BEGIN TRANSACTION
select * from tEstudiantes
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spGetUsers]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetUsers]
@user varchar(30)
AS
BEGIN TRANSACTION
select * from tUsers where usuario=@user;
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spInPines]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInPines]
 @pin varchar(10),
 @seleccion varchar(50),
 @fecha datetime
AS
BEGIN TRANSACTION
INSERT INTO tPinnes (pin,seleccionado,fecha) VALUES (@pin,@seleccion,@fecha)
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spInPreadmitido]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInPreadmitido] 
@id bigint,@tel int,@nom varchar(50),@correo varchar(50),@opcion1 varchar(100),
 @opcion2 varchar(100),@nacionalidad varchar(50),@coleprocedencia varchar(100),@ape1 varchar(50),
 @nacimiento date,@sexo varchar(20),@edad int,@provincia varchar(50),@canton varchar(50),@distrito varchar(50),
 @telRes int,@direccion varchar(500),@nomP varchar(200),@nomE varchar(200),@nomM varchar(200),@cedM bigint,@cedP bigint,
 @cedE bigint, @telM int, @telP int,@telE int,@ingresoE int,@ingresoM int, @ingresoP int,@ocupacionM varchar(200),
 @ocupacionP varchar(200),@ocupacionE varchar(200),@telTm int,@telTe int,@telTp int,@sobre int, @pin varchar(10)
AS
BEGIN TRANSACTION
INSERT INTO tPreMatricula  (nombre,apellidos,correo,opcion1,opcion2,nacimiento,
telefono,nacionalidad,coleprocedencia,cedula,admitido,sexo,edad,notas,entrevista,examen,provincia,canton,distrito,telefonoResidencia,
direccionResidencia,nomPadre,nomMadre,nomEncargado,cedPadre,cedMadre,cedEncargado,
telPadre,telMadre,telEncargado,ingresoEncargado,ingresoMadre,ingresoPadre,ocupacionEncargado,ocupacionMadre,ocupacionPadre,
telTrabajoMadre,telTrabajoPadre,telTrabajoEncargado,sobre,pin) 
VALUES (@nom,@ape1,@correo,@opcion1,@opcion2,@nacimiento,@tel,@nacionalidad,@coleprocedencia,@id,'NO',@sexo,@edad,0,0,0,@provincia,
@canton,@distrito,@telRes,@direccion,@nomP,@nomM,@nomE,@cedP,@cedM,@cedE,@telP,@telM,@telE,@ingresoE,@ingresoM,@ingresoP,@ocupacionE,@ocupacionM,
@ocupacionP,@telTm,@telTp,@telTe,@sobre,@pin)
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spInsertarAdmitido]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertarAdmitido]
@id bigint, @especialidad varchar(100)
AS
BEGIN TRANSACTION

update tPreMatricula set admitido='SI' where cedula=@id;

declare @nombre varchar(50)
select @nombre=(select nombre from tPreMatricula where cedula=@id);

declare @tel int
select @tel=(select telefono from tPreMatricula where cedula=@id);

declare @correo varchar(50)
select @correo=(select correo from tPreMatricula where cedula=@id);

declare @nacionalidad varchar(50);
select @nacionalidad=(select nacionalidad from tPreMatricula where cedula=@id);

declare @apellidos varchar(50)
select @apellidos=(select apellidos from tPreMatricula where cedula=@id);

INSERT INTO tAdmitidos(id,nombre,apellidos,correo,especialidad,telefono)
VALUES (@id,@nombre,@apellidos,@correo,@especialidad,@tel);
update tEspecialidades set cantidad=(cantidad-1) where especialidad = @especialidad;
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spInsertarUsuario]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertarUsuario] 
@id bigint,
 @usuario varchar(30),
 @contra varchar(20),
 @rol varchar(20),
 @correo varchar(100)
AS
BEGIN TRANSACTION
INSERT INTO tUsers (id,usuario,contra,iniciado,rol,correo) VALUES (@id,@usuario,@contra,0,@rol,@correo)
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spInsertResults]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertResults]
@notas decimal(18,2),@entrevista decimal(18,2),@examen decimal(18,2),@resultado decimal(18,2),@ced bigint,
@conducta decimal(18,2),@ausencias int
AS
BEGIN transaction
update tPreMatricula set conducta=@conducta,ausencias=@ausencias,
 entrevista=@entrevista, notas=@notas,examen=@examen,resultado=@resultado where cedula=@ced;
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spInsEspeciali]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsEspeciali]
 @especialidad varchar(100)
 AS
BEGIN TRANSACTION
INSERT INTO tEspecialidades(especialidad,disponible,cantidad) VALUES (@especialidad,'cerrado',0)
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spInsMateria]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsMateria]
@materia varchar(100),@area varchar(50)
AS
BEGIN TRANSACTION
	insert into tMaterias(materia,area)values(@materia,@area)
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spInsMatriculado]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsMatriculado] 
@id bigint,@poliza varchar(50),
@cuota int,@tel int,@correo varchar(50),@provincia varchar(50),@canton varchar(50),@distrito varchar(50),
 @telRes int null,@direccion varchar(500),@nomP varchar(200) null,@nomE varchar(200) null,@nomM varchar(200) null,@cedM bigint null,@cedP bigint null,
 @cedE bigint null, @telM int null, @telP int null,@telE int null,@ingresoE int null,@ingresoM int null, @ingresoP int null,@ocupacionM varchar(200) null,
 @ocupacionP varchar(200) null,@ocupacionE varchar(200) null,@telTm int null,@telTe int null,@telTp int null,@edad int

AS
BEGIN TRANSACTION

declare @nombre varchar(50)
select @nombre=(select nombre from tPreMatricula where cedula=@id);

declare @apellidos varchar(50)
select @apellidos=(select apellidos from tPreMatricula where cedula=@id);

declare @nacimiento date
select @nacimiento=(select nacimiento from tPreMatricula where cedula=@id);

declare @nacionalidad varchar(50);
select @nacionalidad=(select nacionalidad from tPreMatricula where cedula=@id);

declare @sexo varchar(20);
select @sexo=(select sexo from tPreMatricula where cedula=@id);

declare @especialidad varchar(100)=(select especialidad from tAdmitidos where id=@id);

declare @locali varchar(200)
select @locali =@distrito+', '+@canton+', '+@provincia;

INSERT INTO tEstudiantes(cedula,nombre,apellidos,correo,especialidad,nacimiento,telefono,nacionalidad,
edad,sexo,localizacion,telefonoResidencia,direccionResidencia,nomPadre,nomMadre,nomEncargado,cedPadre,cedMadre,
cedEncargado,telPadre,telMadre,telEncargado,ingresoPadre,ingresoMadre,ingresoEncargado,telTrabajoPadre,telTrabajoMadre,
telTrabajoEncargado,cuota,poliza) 
values(@id,@nombre,@apellidos,@correo,@especialidad,@nacimiento,@tel,@nacionalidad,@edad,@sexo,@locali,@telRes,@direccion,@nomP,
@nomM,@nomE,@cedP,@cedM,@cedE,@telP,@telM,@telE,@ingresoP,@ingresoM,@ingresoE,@telTp,@telTm,@telTe,@cuota,@poliza);
delete from tAdmitidos where id=@id
delete from tNotasAdmision where cedula=@id
delete from tPreMatricula where cedula=@id
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spInsNewProceso]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsNewProceso]
	@year varchar(4)
AS
BEGIN TRANSACTION
	insert into tDataAdmision(yearAdmision,cantStudents,final,pinesAvailables,priceSobre,inicio)
	values(@year,0,'',0,0,'')
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spInsNotasAdmitidos]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsNotasAdmitidos] 
	@ced bigint,@setEspa decimal(18,2), @setIng decimal(18,2), @setMate decimal(18,2), @setEst decimal(18,2), 
	@setCiv decimal(18,2), @setCien decimal(18,2), @setAusIn int,
	@setCond decimal(18,2), @octEspa decimal(18,2), @octIng decimal(18,2), @octMate decimal(18,2),
	@octEst decimal(18,2), @octCiv decimal(18,2), @octCien decimal(18,2),@octAusIn int, 
	@octCond decimal(18,2), @novEspa decimal(18,2), @novIng decimal(18,2), @novMate decimal(18,2), 
	@novEst decimal(18,2), @novCiv decimal(18,2), @novCien decimal(18,2), @novAusIn int, @novCond decimal(18,2)
AS
BEGIN TRANSACTION
	insert into tNotasAdmision(cedula,EspaSet,EspaOct,EspaNov,InglesSet,InglesOct,InglesNov,
	MateSet,MateNov,MateOct,EstudiosNov,EstudiosOct,EstudiosSet,CivicaSet,CivicaOct,CivicaNov,
	CienciasSet,CienciasOct,CienciasNov,AusInjustSet,AusInjustOct,AusInjustNov,ConductaSet,ConductaOct,
	ConductaNov) values(@ced,@setEspa,@octEspa,@novEspa,@setIng,@octIng,@novIng,@setMate,@novMate,@octMate,
	@novEst,@octEst,@setEst,@setCiv,@octCiv,@novCiv,@setCien,@octCien,@novCien,@setAusIn,@octAusIn,@novAusIn,
	@setCond,@octCond,@novCond)
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spInsProfe]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsProfe]
@id bigint,@nombre varchar(50), @apellidos varchar(50),@correo varchar(100),@tel int,
@mat int
AS
BEGIN TRANSACTION
insert into tProfesor(Cedula,Nombre,Apellidos,Correo,Telefono,materia1)
values(@id,@nombre,@apellidos,@correo,@tel,@mat)
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spInsSubArea]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsSubArea] 
@materia varchar(100),@area varchar(50), @especialidad varchar(100)
AS
BEGIN TRANSACTION
	insert into tMaterias(materia,area,especialidad)values(@materia,@area,@especialidad)
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spInsSubArea2]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsSubArea2]
@id bigint,@mat int
AS
BEGIN TRANSACTION
update tProfesor set materia2=@mat where Cedula=@id
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spInsSubArea3]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsSubArea3]
@id bigint,@mat int
AS
BEGIN TRANSACTION
update tProfesor set materia3=@mat where Cedula=@id
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spModifEspecialidad]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spModifEspecialidad]
 @especialidad varchar(100),
 @disponible varchar(50),@cant int
 AS
BEGIN TRANSACTION
update tEspecialidades set disponible =@disponible,cantidad=@cant where especialidad=@especialidad
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spSacarPreAdmitidosOpcion1]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSacarPreAdmitidosOpcion1]
	@especialidad varchar(100)
AS
BEGIN
SELECT sobre,cedula,nombre, apellidos,conducta,
case 
when ausencias>= 0 and ausencias<= 10  then '5' 
when ausencias>= 11 and ausencias<= 30 then '4'
when ausencias>= 31 and ausencias<= 50 then '3'
when ausencias>= 51 and ausencias<= 70 then '2'
when ausencias>= 71 and ausencias<= 90 then '1'
else '0'
END AS 'ausencias',notas,examen,entrevista, resultado, ingresoEncargado,ingresoPadre,ingresoMadre
FROM tPreMatricula WHERE opcion1 = @especialidad and admitido='NO'
order by resultado DESC
END
GO
/****** Object:  StoredProcedure [dbo].[spSacarPreAdmitidosOpcion2]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSacarPreAdmitidosOpcion2]
	@especialidad varchar(100)
AS
BEGIN
SELECT sobre,cedula,nombre, apellidos,conducta,
case 
when ausencias>= 0 and ausencias<= 10  then '5' 
when ausencias>= 11 and ausencias<= 30 then '4'
when ausencias>= 31 and ausencias<= 50 then '3'
when ausencias>= 51 and ausencias<= 70 then '2'
when ausencias>= 71 and ausencias<= 90 then '1'
else '0'
END AS 'ausencias',notas,examen,entrevista, resultado, ingresoEncargado,ingresoPadre,ingresoMadre
FROM tPreMatricula WHERE opcion2 = @especialidad and admitido='NO'
order by resultado DESC
END
GO
/****** Object:  StoredProcedure [dbo].[spSacarPreMatriculados]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSacarPreMatriculados]
	@especialidad varchar(100)
AS
BEGIN
SELECT cedula,nombre, apellidos,correo,opcion1,opcion2,sobre FROM tPreMatricula WHERE (opcion1 = @especialidad or opcion2= @especialidad) and admitido='NO'
order by sobre asc
END
GO
/****** Object:  StoredProcedure [dbo].[spSacarPreMatriculadosOpcion1]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spSacarPreMatriculadosOpcion1]
	@especialidad varchar(100)
AS
BEGIN transaction
declare @ausencias int
SELECT cedula,nombre,apellidos, sobre,(notas * 0.25) as 'notas',examen,entrevista,
(conducta* 0.05) as 'conducta',
case 
when ausencias>= 0 and ausencias<= 10  then '5' 
when ausencias>= 11 and ausencias<= 30 then '4'
when ausencias>= 31 and ausencias<= 50 then '3'
when ausencias>= 51 and ausencias<= 70 then '2'
when ausencias>= 71 and ausencias<= 90 then '1'
else '0'
END AS 'ausencias', resultado
FROM tPreMatricula WHERE opcion1 = @especialidad and admitido='NO'
order by apellidos ASC
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spSacarPreMatriculadosOpcion2]    Script Date: 8/12/2018 11:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spSacarPreMatriculadosOpcion2]
	@especialidad varchar(100)
AS
BEGIN transaction
declare @conducta decimal(18,2)
SELECT cedula,nombre, apellidos, sobre,(notas * 0.25) as 'notas',examen,entrevista,
(conducta* 0.05) as 'conducta',
case 
when ausencias>= 0 and ausencias<= 10  then '5' 
when ausencias>= 11 and ausencias<= 30 then '4'
when ausencias>= 31 and ausencias<= 50 then '3'
when ausencias>= 51 and ausencias<= 70 then '2'
when ausencias>= 71 and ausencias<= 90 then '1'
else '0'
END AS 'ausencias', resultado
FROM tPreMatricula WHERE opcion2 = @especialidad and admitido='NO'
order by apellidos ASC
IF @@error<>0
BEGIN
ROLLBACK TRANSACTION
RETURN
END
COMMIT TRANSACTION
GO
USE [master]
GO
ALTER DATABASE [Cote_Cloud] SET  READ_WRITE 
GO
