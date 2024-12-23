USE [master]
GO
/****** Object:  Database [Assignment3]    Script Date: 11/24/2024 4:15:02 PM ******/
CREATE DATABASE [Assignment3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Assignment3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Assignment3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Assignment3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Assignment3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Assignment3] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Assignment3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Assignment3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Assignment3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Assignment3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Assignment3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Assignment3] SET ARITHABORT OFF 
GO
ALTER DATABASE [Assignment3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Assignment3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Assignment3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Assignment3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Assignment3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Assignment3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Assignment3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Assignment3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Assignment3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Assignment3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Assignment3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Assignment3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Assignment3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Assignment3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Assignment3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Assignment3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Assignment3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Assignment3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Assignment3] SET  MULTI_USER 
GO
ALTER DATABASE [Assignment3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Assignment3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Assignment3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Assignment3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Assignment3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Assignment3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Assignment3] SET QUERY_STORE = OFF
GO
USE [Assignment3]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 11/24/2024 4:15:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[course_id] [int] IDENTITY(1,1) NOT NULL,
	[course_name] [nvarchar](50) NOT NULL,
	[instructor_id] [int] NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 11/24/2024 4:15:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[instructor_id] [int] IDENTITY(1,1) NOT NULL,
	[instructor_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[instructor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 11/24/2024 4:15:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[student_id] [int] IDENTITY(1,1) NOT NULL,
	[student_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentTakenCourse]    Script Date: 11/24/2024 4:15:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentTakenCourse](
	[taken_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NOT NULL,
	[course_id] [int] NOT NULL,
 CONSTRAINT [PK_StudentTakenCourse] PRIMARY KEY CLUSTERED 
(
	[taken_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([course_id], [course_name], [instructor_id]) VALUES (1, N'Math', 1)
INSERT [dbo].[Course] ([course_id], [course_name], [instructor_id]) VALUES (2, N'Physics', 2)
INSERT [dbo].[Course] ([course_id], [course_name], [instructor_id]) VALUES (3, N'Chemistry', 3)
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Instructor] ON 

INSERT [dbo].[Instructor] ([instructor_id], [instructor_name]) VALUES (1, N'Dr. Smith')
INSERT [dbo].[Instructor] ([instructor_id], [instructor_name]) VALUES (2, N'Dr. Brown')
INSERT [dbo].[Instructor] ([instructor_id], [instructor_name]) VALUES (3, N'Dr. Taylor')
SET IDENTITY_INSERT [dbo].[Instructor] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([student_id], [student_name]) VALUES (1, N'Alice')
INSERT [dbo].[Student] ([student_id], [student_name]) VALUES (2, N'Bob')
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[StudentTakenCourse] ON 

INSERT [dbo].[StudentTakenCourse] ([taken_id], [student_id], [course_id]) VALUES (1, 1, 1)
INSERT [dbo].[StudentTakenCourse] ([taken_id], [student_id], [course_id]) VALUES (2, 1, 2)
INSERT [dbo].[StudentTakenCourse] ([taken_id], [student_id], [course_id]) VALUES (3, 1, 3)
INSERT [dbo].[StudentTakenCourse] ([taken_id], [student_id], [course_id]) VALUES (4, 2, 1)
INSERT [dbo].[StudentTakenCourse] ([taken_id], [student_id], [course_id]) VALUES (5, 2, 3)
SET IDENTITY_INSERT [dbo].[StudentTakenCourse] OFF
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Instructor] FOREIGN KEY([instructor_id])
REFERENCES [dbo].[Instructor] ([instructor_id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Instructor]
GO
ALTER TABLE [dbo].[StudentTakenCourse]  WITH CHECK ADD  CONSTRAINT [FK_StudentTakenCourse_Course] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[StudentTakenCourse] CHECK CONSTRAINT [FK_StudentTakenCourse_Course]
GO
ALTER TABLE [dbo].[StudentTakenCourse]  WITH CHECK ADD  CONSTRAINT [FK_StudentTakenCourse_Student] FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[StudentTakenCourse] CHECK CONSTRAINT [FK_StudentTakenCourse_Student]
GO
USE [master]
GO
ALTER DATABASE [Assignment3] SET  READ_WRITE 
GO
