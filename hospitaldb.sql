USE [master]
GO
/****** Object:  Database [hospitaldb]    Script Date: 2024-02-29 5:35:35 PM ******/
CREATE DATABASE hospitaldb;
GO
ALTER DATABASE [hospitaldb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [hospitaldb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [hospitaldb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [hospitaldb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [hospitaldb] SET ARITHABORT OFF 
GO
ALTER DATABASE [hospitaldb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [hospitaldb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [hospitaldb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [hospitaldb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [hospitaldb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [hospitaldb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [hospitaldb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [hospitaldb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [hospitaldb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [hospitaldb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [hospitaldb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [hospitaldb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [hospitaldb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [hospitaldb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [hospitaldb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [hospitaldb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [hospitaldb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [hospitaldb] SET RECOVERY FULL 
GO
ALTER DATABASE [hospitaldb] SET  MULTI_USER 
GO
ALTER DATABASE [hospitaldb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [hospitaldb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [hospitaldb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [hospitaldb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [hospitaldb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [hospitaldb] SET QUERY_STORE = OFF
GO
USE [hospitaldb]
GO
/****** Object:  User [ampletemp]    Script Date: 2024-02-29 5:35:35 PM ******/
/****** Object:  Schema [ampletemp]    Script Date: 2024-02-29 5:35:35 PM ******/
CREATE SCHEMA [ampletemp]
GO
/****** Object:  Table [dbo].[Allergy]    Script Date: 2024-02-29 5:35:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Allergy](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Allergy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AllergyDetail]    Script Date: 2024-02-29 5:35:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllergyDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PatientId] [int] NULL,
	[AllergyId] [int] NULL,
 CONSTRAINT [PK_AllergyDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Disease]    Script Date: 2024-02-29 5:35:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Disease](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Disease] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NCD]    Script Date: 2024-02-29 5:35:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCD](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_NCD] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NcdDetail]    Script Date: 2024-02-29 5:35:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NcdDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PatientId] [int] NULL,
	[NcdId] [int] NULL,
 CONSTRAINT [PK_NcdDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 2024-02-29 5:35:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Gender] [varchar](10) NULL,
	[DateOfBirth] [datetime] NULL,
	[DiseaseId] [int] NULL,
	[EpilepsyId] [int] NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Allergy] ([Id], [Name]) VALUES (1, N'Food allergies')
INSERT [dbo].[Allergy] ([Id], [Name]) VALUES (2, N'Drug allergy')
INSERT [dbo].[Allergy] ([Id], [Name]) VALUES (3, N'Hay fever')
INSERT [dbo].[Allergy] ([Id], [Name]) VALUES (4, N'Insect allergy')
INSERT [dbo].[Allergy] ([Id], [Name]) VALUES (5, N'Dust allergy')
INSERT [dbo].[Allergy] ([Id], [Name]) VALUES (6, N'Pet allergies')
INSERT [dbo].[Allergy] ([Id], [Name]) VALUES (7, N'Latex allergy')
INSERT [dbo].[Allergy] ([Id], [Name]) VALUES (8, N'Skin allergy')
INSERT [dbo].[Allergy] ([Id], [Name]) VALUES (9, N'Eczema')
INSERT [dbo].[Allergy] ([Id], [Name]) VALUES (10, N'Asthma')
INSERT [dbo].[Allergy] ([Id], [Name]) VALUES (11, N'Dust')
INSERT [dbo].[Allergy] ([Id], [Name]) VALUES (12, N'Seasonal allergic rhinitis')
INSERT [dbo].[Allergy] ([Id], [Name]) VALUES (13, N'Hives')
INSERT [dbo].[Allergy] ([Id], [Name]) VALUES (14, N'Anaphylaxis')
INSERT [dbo].[Allergy] ([Id], [Name]) VALUES (15, N'Animal dander')
INSERT [dbo].[Allergy] ([Id], [Name]) VALUES (16, N'Casein allergy')
INSERT [dbo].[Allergy] ([Id], [Name]) VALUES (17, N'Cockroaches')
SET IDENTITY_INSERT [dbo].[AllergyDetail] ON 

INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (8, 1, 5)
INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (9, 1, 3)
INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (10, 1, 13)
INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (14, 2, 2)
INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (15, 2, 1)
INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (16, 2, 5)
INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (17, 4, 5)
INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (18, 4, 14)
INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (19, 5, 4)
INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (20, 5, 5)
INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (21, 5, 8)
INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (22, 5, 15)
INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (23, 5, 17)
INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (24, 5, 6)
INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (25, 6, 1)
INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (26, 6, 2)
INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (27, 6, 17)
INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (28, 7, 4)
INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (29, 7, 8)
INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (30, 7, 10)
INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (31, 7, 17)
INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (38, 9, 3)
INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (39, 9, 5)
INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (40, 9, 8)
INSERT [dbo].[AllergyDetail] ([Id], [PatientId], [AllergyId]) VALUES (41, 9, 6)
SET IDENTITY_INSERT [dbo].[AllergyDetail] OFF
INSERT [dbo].[Disease] ([Id], [Name]) VALUES (1, N'Alzheimer''s disease')
INSERT [dbo].[Disease] ([Id], [Name]) VALUES (2, N'Amyotrophic lateral sclerosis')
INSERT [dbo].[Disease] ([Id], [Name]) VALUES (3, N'Anorexia nervosa')
INSERT [dbo].[Disease] ([Id], [Name]) VALUES (4, N'Anxiety disorder')
INSERT [dbo].[Disease] ([Id], [Name]) VALUES (5, N'Asthma')
INSERT [dbo].[Disease] ([Id], [Name]) VALUES (6, N'Atherosclerosis')
INSERT [dbo].[Disease] ([Id], [Name]) VALUES (7, N'Attention deficit hyperactivity disorder')
INSERT [dbo].[Disease] ([Id], [Name]) VALUES (8, N'Autism')
INSERT [dbo].[Disease] ([Id], [Name]) VALUES (9, N'Autoimmune diseases')
INSERT [dbo].[Disease] ([Id], [Name]) VALUES (10, N'Bipolar disorder')
INSERT [dbo].[NCD] ([Id], [Name]) VALUES (1, N'Cardiovascular Diseases')
INSERT [dbo].[NCD] ([Id], [Name]) VALUES (2, N'Cancer')
INSERT [dbo].[NCD] ([Id], [Name]) VALUES (3, N'Respiratory Diseases')
INSERT [dbo].[NCD] ([Id], [Name]) VALUES (4, N'Diabetes')
SET IDENTITY_INSERT [dbo].[NcdDetail] ON 

INSERT [dbo].[NcdDetail] ([Id], [PatientId], [NcdId]) VALUES (4, 1, 3)
INSERT [dbo].[NcdDetail] ([Id], [PatientId], [NcdId]) VALUES (6, 2, 1)
INSERT [dbo].[NcdDetail] ([Id], [PatientId], [NcdId]) VALUES (7, 4, 3)
INSERT [dbo].[NcdDetail] ([Id], [PatientId], [NcdId]) VALUES (8, 5, 4)
INSERT [dbo].[NcdDetail] ([Id], [PatientId], [NcdId]) VALUES (9, 6, 4)
INSERT [dbo].[NcdDetail] ([Id], [PatientId], [NcdId]) VALUES (10, 7, 3)
INSERT [dbo].[NcdDetail] ([Id], [PatientId], [NcdId]) VALUES (13, 9, 1)
SET IDENTITY_INSERT [dbo].[NcdDetail] OFF
SET IDENTITY_INSERT [dbo].[Patient] ON 

INSERT [dbo].[Patient] ([Id], [Name], [Gender], [DateOfBirth], [DiseaseId], [EpilepsyId]) VALUES (1, N'Soumitra', NULL, NULL, 6, 2)
INSERT [dbo].[Patient] ([Id], [Name], [Gender], [DateOfBirth], [DiseaseId], [EpilepsyId]) VALUES (2, N'Aiman', NULL, NULL, 8, 1)
INSERT [dbo].[Patient] ([Id], [Name], [Gender], [DateOfBirth], [DiseaseId], [EpilepsyId]) VALUES (4, N'Sanzida', NULL, NULL, 2, 2)
INSERT [dbo].[Patient] ([Id], [Name], [Gender], [DateOfBirth], [DiseaseId], [EpilepsyId]) VALUES (5, N'Raju', NULL, NULL, 3, 3)
INSERT [dbo].[Patient] ([Id], [Name], [Gender], [DateOfBirth], [DiseaseId], [EpilepsyId]) VALUES (6, N'Rokeya', NULL, NULL, 7, 3)
INSERT [dbo].[Patient] ([Id], [Name], [Gender], [DateOfBirth], [DiseaseId], [EpilepsyId]) VALUES (7, N'Faiza', NULL, NULL, 4, 3)
INSERT [dbo].[Patient] ([Id], [Name], [Gender], [DateOfBirth], [DiseaseId], [EpilepsyId]) VALUES (9, N'Siraj', NULL, NULL, 7, 3)
SET IDENTITY_INSERT [dbo].[Patient] OFF
ALTER TABLE [dbo].[AllergyDetail]  WITH CHECK ADD  CONSTRAINT [FK_AllergyDetail_Allergy] FOREIGN KEY([AllergyId])
REFERENCES [dbo].[Allergy] ([Id])
GO
ALTER TABLE [dbo].[AllergyDetail] CHECK CONSTRAINT [FK_AllergyDetail_Allergy]
GO
ALTER TABLE [dbo].[AllergyDetail]  WITH CHECK ADD  CONSTRAINT [FK_AllergyDetail_Patient] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([Id])
GO
ALTER TABLE [dbo].[AllergyDetail] CHECK CONSTRAINT [FK_AllergyDetail_Patient]
GO
ALTER TABLE [dbo].[NcdDetail]  WITH CHECK ADD  CONSTRAINT [FK_NcdDetail_NCD] FOREIGN KEY([NcdId])
REFERENCES [dbo].[NCD] ([Id])
GO
ALTER TABLE [dbo].[NcdDetail] CHECK CONSTRAINT [FK_NcdDetail_NCD]
GO
ALTER TABLE [dbo].[NcdDetail]  WITH CHECK ADD  CONSTRAINT [FK_NcdDetail_Patient] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([Id])
GO
ALTER TABLE [dbo].[NcdDetail] CHECK CONSTRAINT [FK_NcdDetail_Patient]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Disease] FOREIGN KEY([DiseaseId])
REFERENCES [dbo].[Disease] ([Id])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Disease]
GO
USE [master]
GO
ALTER DATABASE [hospitaldb] SET  READ_WRITE 
GO
