USE [master]
GO
/****** Object:  Database [transportes]    Script Date: 06/02/2018 11:41:15 ******/
CREATE DATABASE [transportes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'transportes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\transportes.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'transportes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\transportes_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [transportes] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [transportes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [transportes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [transportes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [transportes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [transportes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [transportes] SET ARITHABORT OFF 
GO
ALTER DATABASE [transportes] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [transportes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [transportes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [transportes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [transportes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [transportes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [transportes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [transportes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [transportes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [transportes] SET  ENABLE_BROKER 
GO
ALTER DATABASE [transportes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [transportes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [transportes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [transportes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [transportes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [transportes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [transportes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [transportes] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [transportes] SET  MULTI_USER 
GO
ALTER DATABASE [transportes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [transportes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [transportes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [transportes] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [transportes] SET DELAYED_DURABILITY = DISABLED 
GO
USE [transportes]
GO
/****** Object:  Table [dbo].[camiones]    Script Date: 06/02/2018 11:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[camiones](
	[matricula] [varchar](15) NOT NULL,
	[marca] [varchar](20) NOT NULL,
	[modelo] [varchar](20) NOT NULL,
	[año_compra] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 06/02/2018 11:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clientes](
	[CIF] [varchar](20) NOT NULL,
	[nombre_empresa] [varchar](50) NOT NULL,
	[dir_empresa] [varchar](50) NOT NULL,
	[telf_empresa] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CIF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[conductores]    Script Date: 06/02/2018 11:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[conductores](
	[codigo_c] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](15) NOT NULL,
	[apellidos] [varchar](30) NOT NULL,
	[movil] [char](9) NOT NULL,
	[sueldo] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_c] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[transportes]    Script Date: 06/02/2018 11:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[transportes](
	[codigo_t] [int] IDENTITY(1,1) NOT NULL,
	[matricula] [varchar](15) NOT NULL,
	[codigo_c] [int] NOT NULL,
	[cif] [varchar](20) NOT NULL,
	[origen] [varchar](50) NOT NULL,
	[destino] [varchar](50) NOT NULL,
	[material] [varchar](50) NOT NULL,
	[kilos] [float] NOT NULL,
	[fecha] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_t] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[camiones] ([matricula], [marca], [modelo], [año_compra]) VALUES (N'3128 PTM', N'Iveco', N'Trakker', CAST(N'2003-05-17' AS Date))
INSERT [dbo].[camiones] ([matricula], [marca], [modelo], [año_compra]) VALUES (N'3141 BMC', N'Jmc', N'Carrying 16 T', CAST(N'2007-11-21' AS Date))
INSERT [dbo].[camiones] ([matricula], [marca], [modelo], [año_compra]) VALUES (N'6320 RSP', N'Isuzu', N'Npr Eco Max', CAST(N'2005-09-07' AS Date))
INSERT [dbo].[camiones] ([matricula], [marca], [modelo], [año_compra]) VALUES (N'7137 CHW', N'Ford', N'Cargo 815', CAST(N'2010-01-25' AS Date))
INSERT [dbo].[camiones] ([matricula], [marca], [modelo], [año_compra]) VALUES (N'7470 QSM', N'Scania', N'R 470', CAST(N'2014-06-13' AS Date))
INSERT [dbo].[clientes] ([CIF], [nombre_empresa], [dir_empresa], [telf_empresa]) VALUES (N'A101798-2', N'Construcciones Barquilla S.A.', N'C/ Ruiz de Mendoza 16  Trujillo 10200 Cáceres', N'927-322140')
INSERT [dbo].[clientes] ([CIF], [nombre_empresa], [dir_empresa], [telf_empresa]) VALUES (N'E3788641-3', N'Jamones y Embutidos El Palacio C.B.', N'C/ Pilar, 1  Cespedosa de Tormes 37750 Salamanca', N'923-152608')
INSERT [dbo].[clientes] ([CIF], [nombre_empresa], [dir_empresa], [telf_empresa]) VALUES (N'E4556129-7', N'Muebles el Tajo C.B.', N'Ctra. San Román Km.4.3  Pepino 45638 Toledo', N'925-709542')
INSERT [dbo].[clientes] ([CIF], [nombre_empresa], [dir_empresa], [telf_empresa]) VALUES (N'F0623548-5', N'ACOPAEX', N'Paseo de los Rosales, 43  Mérida 06800 Badajoz', N'924-832061')
INSERT [dbo].[clientes] ([CIF], [nombre_empresa], [dir_empresa], [telf_empresa]) VALUES (N'F0634518-3', N'CREX', N'C/ Afueras S/N  Valdivia 06720 Badajoz', N'924-323071')
SET IDENTITY_INSERT [dbo].[conductores] ON 

INSERT [dbo].[conductores] ([codigo_c], [nombre], [apellidos], [movil], [sueldo]) VALUES (1, N'Juan', N'Ruiz Gómez', N'677305428', 1500.0000)
INSERT [dbo].[conductores] ([codigo_c], [nombre], [apellidos], [movil], [sueldo]) VALUES (2, N'José', N'Pérez Hernández', N'650321128', 1400.0000)
INSERT [dbo].[conductores] ([codigo_c], [nombre], [apellidos], [movil], [sueldo]) VALUES (3, N'María ', N'Pérez García', N'663428421', 1400.0000)
INSERT [dbo].[conductores] ([codigo_c], [nombre], [apellidos], [movil], [sueldo]) VALUES (4, N'Jesús', N'González García', N'689768967', 140.0000)
SET IDENTITY_INSERT [dbo].[conductores] OFF
SET IDENTITY_INSERT [dbo].[transportes] ON 

INSERT [dbo].[transportes] ([codigo_t], [matricula], [codigo_c], [cif], [origen], [destino], [material], [kilos], [fecha]) VALUES (1, N'7137 CHW', 1, N'A101798-2', N'Mérida', N'Coria', N'Arena', 20000, CAST(N'2018-02-09' AS Date))
INSERT [dbo].[transportes] ([codigo_t], [matricula], [codigo_c], [cif], [origen], [destino], [material], [kilos], [fecha]) VALUES (2, N'7470 QSM', 2, N'F0623548-5', N'Mérida', N'Cáceres', N'Trigo', 30000, CAST(N'2017-11-10' AS Date))
INSERT [dbo].[transportes] ([codigo_t], [matricula], [codigo_c], [cif], [origen], [destino], [material], [kilos], [fecha]) VALUES (3, N'6320 RSP', 2, N'E4556129-7', N'Toledo', N'Plasencia', N'Muebles', 10000, CAST(N'2018-01-21' AS Date))
INSERT [dbo].[transportes] ([codigo_t], [matricula], [codigo_c], [cif], [origen], [destino], [material], [kilos], [fecha]) VALUES (4, N'3141 BMC', 1, N'E3788641-3', N'Jerez de los Caballeros', N'Salamanca', N'Cerdos', 15000, CAST(N'2018-02-09' AS Date))
INSERT [dbo].[transportes] ([codigo_t], [matricula], [codigo_c], [cif], [origen], [destino], [material], [kilos], [fecha]) VALUES (5, N'6320 RSP', 3, N'F0634518-3', N'Miajadas', N'Buñol', N'Tomates', 35000, CAST(N'2017-07-01' AS Date))
SET IDENTITY_INSERT [dbo].[transportes] OFF
ALTER TABLE [dbo].[transportes]  WITH CHECK ADD  CONSTRAINT [transportes_ibfk_1] FOREIGN KEY([matricula])
REFERENCES [dbo].[camiones] ([matricula])
GO
ALTER TABLE [dbo].[transportes] CHECK CONSTRAINT [transportes_ibfk_1]
GO
ALTER TABLE [dbo].[transportes]  WITH CHECK ADD  CONSTRAINT [transportes_ibfk_3] FOREIGN KEY([cif])
REFERENCES [dbo].[clientes] ([CIF])
GO
ALTER TABLE [dbo].[transportes] CHECK CONSTRAINT [transportes_ibfk_3]
GO
ALTER TABLE [dbo].[transportes]  WITH CHECK ADD  CONSTRAINT [transportes_ibfk_4] FOREIGN KEY([codigo_c])
REFERENCES [dbo].[conductores] ([codigo_c])
GO
ALTER TABLE [dbo].[transportes] CHECK CONSTRAINT [transportes_ibfk_4]
GO
USE [master]
GO
ALTER DATABASE [transportes] SET  READ_WRITE 
GO
