USE [master]
GO
/****** Object:  Database [JJOO]    Script Date: 27/8/2024 22:22:03 ******/
CREATE DATABASE [JJOO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JJOO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\JJOO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JJOO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\JJOO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [JJOO] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JJOO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JJOO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JJOO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JJOO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JJOO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JJOO] SET ARITHABORT OFF 
GO
ALTER DATABASE [JJOO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JJOO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JJOO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JJOO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JJOO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JJOO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JJOO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JJOO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JJOO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JJOO] SET  DISABLE_BROKER 
GO
ALTER DATABASE [JJOO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JJOO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JJOO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JJOO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JJOO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JJOO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JJOO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JJOO] SET RECOVERY FULL 
GO
ALTER DATABASE [JJOO] SET  MULTI_USER 
GO
ALTER DATABASE [JJOO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JJOO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JJOO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JJOO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JJOO] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JJOO] SET QUERY_STORE = OFF
GO
USE [JJOO]
GO
/****** Object:  Table [dbo].[Deportes]    Script Date: 27/8/2024 22:22:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deportes](
	[idDeporte] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Foto] [text] NOT NULL,
 CONSTRAINT [PK_Deportes] PRIMARY KEY CLUSTERED 
(
	[idDeporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deportistas]    Script Date: 27/8/2024 22:22:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deportistas](
	[IdDeportista] [int] IDENTITY(1,1) NOT NULL,
	[Apellido] [varchar](200) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[FechaDeNacimiento] [date] NOT NULL,
	[Foto] [text] NOT NULL,
	[idPais] [int] NOT NULL,
	[idDeporte] [int] NOT NULL,
 CONSTRAINT [PK_Deportistas] PRIMARY KEY CLUSTERED 
(
	[IdDeportista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 27/8/2024 22:22:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[idPais] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Bandera] [text] NOT NULL,
	[FechaFundacion] [date] NOT NULL,
 CONSTRAINT [PK_Paises] PRIMARY KEY CLUSTERED 
(
	[idPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Deportes] ON 

INSERT [dbo].[Deportes] ([idDeporte], [Nombre], [Foto]) VALUES (1, N'Fútbol', N'futbol.png')
INSERT [dbo].[Deportes] ([idDeporte], [Nombre], [Foto]) VALUES (2, N'Baloncesto', N'baloncesto.png')
INSERT [dbo].[Deportes] ([idDeporte], [Nombre], [Foto]) VALUES (3, N'Tenis', N'tenis.png')
INSERT [dbo].[Deportes] ([idDeporte], [Nombre], [Foto]) VALUES (4, N'Atletismo', N'atletismo.png')
INSERT [dbo].[Deportes] ([idDeporte], [Nombre], [Foto]) VALUES (5, N'Natación', N'natacion.png')
SET IDENTITY_INSERT [dbo].[Deportes] OFF
SET IDENTITY_INSERT [dbo].[Deportistas] ON 

INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaDeNacimiento], [Foto], [idPais], [idDeporte]) VALUES (1, N'Ramos', N'Sergio', CAST(N'1986-03-30' AS Date), N'sergio_ramos.png', 1, 1)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaDeNacimiento], [Foto], [idPais], [idDeporte]) VALUES (2, N'Ginóbili', N'Manu', CAST(N'1977-07-28' AS Date), N'manu_ginobili.png', 2, 2)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaDeNacimiento], [Foto], [idPais], [idDeporte]) VALUES (3, N'Nadal', N'Rafael', CAST(N'1986-06-03' AS Date), N'rafael_nadal.png', 1, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaDeNacimiento], [Foto], [idPais], [idDeporte]) VALUES (4, N'Pelé', N'Edson Arantes', CAST(N'1940-10-23' AS Date), N'pele.png', 3, 1)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaDeNacimiento], [Foto], [idPais], [idDeporte]) VALUES (5, N'Phelps', N'Michael', CAST(N'1985-06-30' AS Date), N'michael_phelps.png', 5, 5)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaDeNacimiento], [Foto], [idPais], [idDeporte]) VALUES (6, N'prueba', N'prueba', CAST(N'2024-08-12' AS Date), N'1', 2, 2)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaDeNacimiento], [Foto], [idPais], [idDeporte]) VALUES (7, N'prueba1', N'prueba1', CAST(N'2024-08-21' AS Date), N'1', 4, 5)
SET IDENTITY_INSERT [dbo].[Deportistas] OFF
SET IDENTITY_INSERT [dbo].[Paises] ON 

INSERT [dbo].[Paises] ([idPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (1, N'España', N'bandera_espana.png', CAST(N'1469-10-19' AS Date))
INSERT [dbo].[Paises] ([idPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (2, N'Argentina', N'bandera_argentina.png', CAST(N'1816-07-09' AS Date))
INSERT [dbo].[Paises] ([idPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (3, N'Brasil', N'bandera_brasil.png', CAST(N'1822-09-07' AS Date))
INSERT [dbo].[Paises] ([idPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (4, N'México', N'bandera_mexico.png', CAST(N'1810-09-16' AS Date))
INSERT [dbo].[Paises] ([idPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (5, N'Estados Unidos', N'bandera_eeuu.png', CAST(N'1776-07-04' AS Date))
SET IDENTITY_INSERT [dbo].[Paises] OFF
ALTER TABLE [dbo].[Deportistas]  WITH CHECK ADD  CONSTRAINT [FK_Deportistas_Deportes] FOREIGN KEY([idDeporte])
REFERENCES [dbo].[Deportes] ([idDeporte])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Deportistas] CHECK CONSTRAINT [FK_Deportistas_Deportes]
GO
ALTER TABLE [dbo].[Deportistas]  WITH CHECK ADD  CONSTRAINT [FK_Deportistas_Paises] FOREIGN KEY([idPais])
REFERENCES [dbo].[Paises] ([idPais])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Deportistas] CHECK CONSTRAINT [FK_Deportistas_Paises]
GO
USE [master]
GO
ALTER DATABASE [JJOO] SET  READ_WRITE 
GO
