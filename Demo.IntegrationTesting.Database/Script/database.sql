USE [master]
GO
/****** Object:  Database [Demo.IntegrationTesting.Database]    Script Date: 11/01/2018 10:41:30 ******/
CREATE DATABASE [Demo.IntegrationTesting.Database] ON  PRIMARY 
( NAME = N'Demo.IntegrationTesting.Database', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Demo.IntegrationTesting.Database.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Demo.IntegrationTesting.Database_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Demo.IntegrationTesting.Database_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Demo.IntegrationTesting.Database].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET ARITHABORT OFF
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET  DISABLE_BROKER
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET  READ_WRITE
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET RECOVERY FULL
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET  MULTI_USER
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Demo.IntegrationTesting.Database] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Demo.IntegrationTesting.Database', N'ON'
GO
USE [Demo.IntegrationTesting.Database]
GO
/****** Object:  Table [dbo].[Persons]    Script Date: 11/01/2018 10:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persons](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CNP] [nvarchar](13) NULL,
	[Age] [int] NULL,
 CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
