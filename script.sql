USE [master]
GO
/****** Object:  Database [StorageSQL]    Script Date: 07.05.2017 18:24:50 ******/
CREATE DATABASE [StorageSQL] ON  PRIMARY 
( NAME = N'StorageSQL', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\StorageSQL.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'StorageSQL_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\StorageSQL_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [StorageSQL] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StorageSQL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StorageSQL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StorageSQL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StorageSQL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StorageSQL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StorageSQL] SET ARITHABORT OFF 
GO
ALTER DATABASE [StorageSQL] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StorageSQL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StorageSQL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StorageSQL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StorageSQL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StorageSQL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StorageSQL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StorageSQL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StorageSQL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StorageSQL] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StorageSQL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StorageSQL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StorageSQL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StorageSQL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StorageSQL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StorageSQL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StorageSQL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StorageSQL] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StorageSQL] SET  MULTI_USER 
GO
ALTER DATABASE [StorageSQL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StorageSQL] SET DB_CHAINING OFF 
GO
USE [StorageSQL]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 07.05.2017 18:24:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Book](
	[Name] [varchar](50) NULL,
	[Autor] [varchar](50) NULL,
	[Content] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [StorageSQL] SET  READ_WRITE 
GO
