USE [master]
GO
/****** Object:  Database [FA]    Script Date: 11/03/2011 22:34:52 ******/
CREATE DATABASE [FA] ON  PRIMARY 
( NAME = N'FA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\FA.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\FA_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FA] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FA] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [FA] SET ANSI_NULLS OFF
GO
ALTER DATABASE [FA] SET ANSI_PADDING OFF
GO
ALTER DATABASE [FA] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [FA] SET ARITHABORT OFF
GO
ALTER DATABASE [FA] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [FA] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [FA] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [FA] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [FA] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [FA] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [FA] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [FA] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [FA] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [FA] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [FA] SET  ENABLE_BROKER
GO
ALTER DATABASE [FA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [FA] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [FA] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [FA] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [FA] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [FA] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [FA] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [FA] SET  READ_WRITE
GO
ALTER DATABASE [FA] SET RECOVERY FULL
GO
ALTER DATABASE [FA] SET  MULTI_USER
GO
ALTER DATABASE [FA] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [FA] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'FA', N'ON'
GO
USE [FA]
GO
/****** Object:  Table [dbo].[Player]    Script Date: 11/03/2011 22:34:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Player](
	[player_id] [char](20) NOT NULL,
	[pname] [char](20) NULL,
	[position] [char](20) NULL,
	[salary] [char](20) NULL,
	[country] [char](20) NULL,
	[club_name] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[player_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Leagutc]    Script Date: 11/03/2011 22:34:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Leagutc](
	[lidc] [char](20) NOT NULL,
	[leaguename] [char](50) NULL,
	[club] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[lidc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Leagues]    Script Date: 11/03/2011 22:34:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Leagues](
	[lids] [char](20) NOT NULL,
	[leaguename] [char](50) NULL,
	[spon] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[lids] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[club]    Script Date: 11/03/2011 22:34:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[club](
	[Name] [char](20) NOT NULL,
	[Manager] [char](20) NULL,
	[Stadium] [char](20) NULL,
	[Sponsors] [char](20) NULL,
	[Ownar] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[addevent]    Script Date: 11/03/2011 22:34:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[addevent](
	[srno] [int] NOT NULL,
	[ht] [char](20) NULL,
	[at] [char](20) NULL,
	[date] [char](20) NULL,
	[leagueae] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[srno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
