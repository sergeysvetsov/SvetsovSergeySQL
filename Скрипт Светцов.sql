USE [master]
GO
/****** Object:  Database [Внутриофисные расходы]    Script Date: 03.04.2020 12:43:37 ******/
CREATE DATABASE [Внутриофисные расходы]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Вунтриофисные расходы', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Вунтриофисные расходы.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Вунтриофисные расходы_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Вунтриофисные расходы_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Внутриофисные расходы] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Внутриофисные расходы].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Внутриофисные расходы] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Внутриофисные расходы] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Внутриофисные расходы] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Внутриофисные расходы] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Внутриофисные расходы] SET ARITHABORT OFF 
GO
ALTER DATABASE [Внутриофисные расходы] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Внутриофисные расходы] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Внутриофисные расходы] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Внутриофисные расходы] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Внутриофисные расходы] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Внутриофисные расходы] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Внутриофисные расходы] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Внутриофисные расходы] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Внутриофисные расходы] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Внутриофисные расходы] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Внутриофисные расходы] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Внутриофисные расходы] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Внутриофисные расходы] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Внутриофисные расходы] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Внутриофисные расходы] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Внутриофисные расходы] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Внутриофисные расходы] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Внутриофисные расходы] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Внутриофисные расходы] SET  MULTI_USER 
GO
ALTER DATABASE [Внутриофисные расходы] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Внутриофисные расходы] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Внутриофисные расходы] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Внутриофисные расходы] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Внутриофисные расходы] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Внутриофисные расходы] SET QUERY_STORE = OFF
GO
USE [Внутриофисные расходы]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Внутриофисные расходы]
GO
/****** Object:  User [Редактор1]    Script Date: 03.04.2020 12:43:38 ******/
CREATE USER [Редактор1] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Просмотр1]    Script Date: 03.04.2020 12:43:38 ******/
CREATE USER [Просмотр1] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Администратор1]    Script Date: 03.04.2020 12:43:38 ******/
CREATE USER [Администратор1] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [Редактор и ввод]    Script Date: 03.04.2020 12:43:38 ******/
CREATE ROLE [Редактор и ввод]
GO
/****** Object:  DatabaseRole [Просмотр]    Script Date: 03.04.2020 12:43:38 ******/
CREATE ROLE [Просмотр]
GO
/****** Object:  DatabaseRole [Администратор]    Script Date: 03.04.2020 12:43:38 ******/
CREATE ROLE [Администратор]
GO
/****** Object:  Table [dbo].[Виды расходов]    Script Date: 03.04.2020 12:43:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Виды расходов](
	[Код вида] [int] NOT NULL,
	[Название] [nvarchar](50) NULL,
	[Описание] [nvarchar](50) NULL,
	[Предельная норма] [money] NULL,
 CONSTRAINT [PK_Виды расходов] PRIMARY KEY CLUSTERED 
(
	[Код вида] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Месяц и год]    Script Date: 03.04.2020 12:43:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Месяц и год](
	[Месяц] [int] NOT NULL,
	[Год] [int] NOT NULL,
 CONSTRAINT [PK_Месяц и год] PRIMARY KEY CLUSTERED 
(
	[Месяц] ASC,
	[Год] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Нормы расходов]    Script Date: 03.04.2020 12:43:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Нормы расходов](
	[Код нормы] [int] NULL,
	[Код вида] [int] NOT NULL,
	[Код отдела] [int] NOT NULL,
	[Месяц] [int] NOT NULL,
	[Год] [int] NOT NULL,
	[Сумма] [money] NULL,
 CONSTRAINT [PK_Нормы расходов] PRIMARY KEY CLUSTERED 
(
	[Код вида] ASC,
	[Код отдела] ASC,
	[Месяц] ASC,
	[Год] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Отделы]    Script Date: 03.04.2020 12:43:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Отделы](
	[Код отдела] [int] NOT NULL,
	[Название] [nvarchar](50) NULL,
	[Количество сотрудников] [int] NULL,
 CONSTRAINT [PK_Отделы] PRIMARY KEY CLUSTERED 
(
	[Код отдела] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Расходы]    Script Date: 03.04.2020 12:43:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Расходы](
	[Код расхода] [int] NOT NULL,
	[Код вида] [int] NULL,
	[Код отдела] [int] NULL,
	[Код сотрудника] [int] NULL,
	[Сумма] [money] NULL,
	[Дата] [datetime] NULL,
 CONSTRAINT [PK_Расходы] PRIMARY KEY CLUSTERED 
(
	[Код расхода] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Сотрудники]    Script Date: 03.04.2020 12:43:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Сотрудники](
	[Код сотрудника] [int] NOT NULL,
	[Код отдела] [int] NULL,
	[ФИО] [varchar](50) NULL,
 CONSTRAINT [PK_Сотрудники] PRIMARY KEY CLUSTERED 
(
	[Код сотрудника] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Нормы расходов]  WITH CHECK ADD  CONSTRAINT [FK_Нормы расходов_Виды расходов] FOREIGN KEY([Код вида])
REFERENCES [dbo].[Виды расходов] ([Код вида])
GO
ALTER TABLE [dbo].[Нормы расходов] CHECK CONSTRAINT [FK_Нормы расходов_Виды расходов]
GO
ALTER TABLE [dbo].[Нормы расходов]  WITH CHECK ADD  CONSTRAINT [FK_Нормы расходов_Месяц и год] FOREIGN KEY([Месяц], [Год])
REFERENCES [dbo].[Месяц и год] ([Месяц], [Год])
GO
ALTER TABLE [dbo].[Нормы расходов] CHECK CONSTRAINT [FK_Нормы расходов_Месяц и год]
GO
ALTER TABLE [dbo].[Нормы расходов]  WITH CHECK ADD  CONSTRAINT [FK_Нормы расходов_Отделы] FOREIGN KEY([Код отдела])
REFERENCES [dbo].[Отделы] ([Код отдела])
GO
ALTER TABLE [dbo].[Нормы расходов] CHECK CONSTRAINT [FK_Нормы расходов_Отделы]
GO
ALTER TABLE [dbo].[Расходы]  WITH CHECK ADD  CONSTRAINT [FK_Расходы_Виды расходов] FOREIGN KEY([Код вида])
REFERENCES [dbo].[Виды расходов] ([Код вида])
GO
ALTER TABLE [dbo].[Расходы] CHECK CONSTRAINT [FK_Расходы_Виды расходов]
GO
ALTER TABLE [dbo].[Расходы]  WITH CHECK ADD  CONSTRAINT [FK_Расходы_Сотрудники] FOREIGN KEY([Код сотрудника])
REFERENCES [dbo].[Сотрудники] ([Код сотрудника])
GO
ALTER TABLE [dbo].[Расходы] CHECK CONSTRAINT [FK_Расходы_Сотрудники]
GO
ALTER TABLE [dbo].[Сотрудники]  WITH CHECK ADD  CONSTRAINT [FK_Сотрудники_Отделы] FOREIGN KEY([Код отдела])
REFERENCES [dbo].[Отделы] ([Код отдела])
GO
ALTER TABLE [dbo].[Сотрудники] CHECK CONSTRAINT [FK_Сотрудники_Отделы]
GO
USE [master]
GO
ALTER DATABASE [Внутриофисные расходы] SET  READ_WRITE 
GO
