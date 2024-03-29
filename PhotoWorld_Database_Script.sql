USE [master]
GO
/****** Object:  Database [FairFaxQA_Gallery]    Script Date: 05/12/2019 17:08:18 ******/
CREATE DATABASE [FairFaxQA_Gallery] 

begin
EXEC [FairFaxQA_Gallery].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FairFaxQA_Gallery] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [FairFaxQA_Gallery] SET ANSI_NULLS OFF
GO
ALTER DATABASE [FairFaxQA_Gallery] SET ANSI_PADDING OFF
GO
ALTER DATABASE [FairFaxQA_Gallery] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [FairFaxQA_Gallery] SET ARITHABORT OFF
GO
ALTER DATABASE [FairFaxQA_Gallery] SET AUTO_CLOSE ON
GO
ALTER DATABASE [FairFaxQA_Gallery] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [FairFaxQA_Gallery] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [FairFaxQA_Gallery] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [FairFaxQA_Gallery] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [FairFaxQA_Gallery] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [FairFaxQA_Gallery] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [FairFaxQA_Gallery] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [FairFaxQA_Gallery] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [FairFaxQA_Gallery] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [FairFaxQA_Gallery] SET  DISABLE_BROKER
GO
ALTER DATABASE [FairFaxQA_Gallery] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [FairFaxQA_Gallery] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [FairFaxQA_Gallery] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [FairFaxQA_Gallery] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [FairFaxQA_Gallery] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [FairFaxQA_Gallery] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [FairFaxQA_Gallery] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [FairFaxQA_Gallery] SET  READ_WRITE
GO
ALTER DATABASE [FairFaxQA_Gallery] SET RECOVERY SIMPLE
GO
ALTER DATABASE [FairFaxQA_Gallery] SET  MULTI_USER
GO
ALTER DATABASE [FairFaxQA_Gallery] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [FairFaxQA_Gallery] SET DB_CHAINING OFF
GO
USE [FairFaxQA_Gallery]
GO
/****** Object:  Table [dbo].[User]    Script Date: 05/12/2019 17:08:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[EmailAddress] [varchar](250) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[MiddleName] [varchar](100) NULL,
	[LastName] [varchar](100) NOT NULL,
	[Password] [varchar](250) NOT NULL,
	[DateAdded] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([UserID], [EmailAddress], [FirstName], [MiddleName], [LastName], [Password], [DateAdded], [DateUpdated]) VALUES (1, N'ya@a.com', N'Yasser', NULL, N'Mumtaz', N'123456', CAST(0x0000A55B00CB37B6 AS DateTime), NULL)
INSERT [dbo].[User] ([UserID], [EmailAddress], [FirstName], [MiddleName], [LastName], [Password], [DateAdded], [DateUpdated]) VALUES (2, N'a@b.com', N'Yasser', NULL, N'Mumtaz', N'123456', CAST(0x0000A55F012A8140 AS DateTime), NULL)
INSERT [dbo].[User] ([UserID], [EmailAddress], [FirstName], [MiddleName], [LastName], [Password], [DateAdded], [DateUpdated]) VALUES (3, N'g@f.com', N'Yasser', NULL, N'Mumtaz', N'123456', CAST(0x0000A55F012BBDA2 AS DateTime), NULL)
INSERT [dbo].[User] ([UserID], [EmailAddress], [FirstName], [MiddleName], [LastName], [Password], [DateAdded], [DateUpdated]) VALUES (4, N'yas@yahoo.com', N'Yaseer', NULL, N'Mumtaz', N'123456', CAST(0x0000A5670141D7F3 AS DateTime), NULL)
INSERT [dbo].[User] ([UserID], [EmailAddress], [FirstName], [MiddleName], [LastName], [Password], [DateAdded], [DateUpdated]) VALUES (5, N'fairfaxqa@yahoo.com', N'Yasser', NULL, N'Mumtaz', N'123456', CAST(0x0000A56801664DFC AS DateTime), NULL)
INSERT [dbo].[User] ([UserID], [EmailAddress], [FirstName], [MiddleName], [LastName], [Password], [DateAdded], [DateUpdated]) VALUES (6, N'davidhenry@gmail.com', N'David', NULL, N'Henry', N'loveyou', CAST(0x0000A5C50145EBAD AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[GalleryType]    Script Date: 05/12/2019 17:08:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GalleryType](
	[GalleryTypeID] [int] IDENTITY(1,1) NOT NULL,
	[GalleryTypeName] [varchar](200) NOT NULL,
	[DateAdded] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[GalleryTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[GalleryType] ON
INSERT [dbo].[GalleryType] ([GalleryTypeID], [GalleryTypeName], [DateAdded], [DateUpdated]) VALUES (2, N'Animal', CAST(0x0000A55B00FC7FC1 AS DateTime), NULL)
INSERT [dbo].[GalleryType] ([GalleryTypeID], [GalleryTypeName], [DateAdded], [DateUpdated]) VALUES (3, N'Nature', CAST(0x0000A55B00FCC1BC AS DateTime), NULL)
INSERT [dbo].[GalleryType] ([GalleryTypeID], [GalleryTypeName], [DateAdded], [DateUpdated]) VALUES (4, N'Education', CAST(0x0000A55B00FCDA71 AS DateTime), NULL)
INSERT [dbo].[GalleryType] ([GalleryTypeID], [GalleryTypeName], [DateAdded], [DateUpdated]) VALUES (1002, N'Mountains', CAST(0x0000A5640186285E AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[GalleryType] OFF
/****** Object:  Table [dbo].[UserPurchase]    Script Date: 05/12/2019 17:08:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPurchase](
	[PurchaseID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[DatePurchased] [datetime] NULL,
	[DateAdded] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PurchaseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserPurchase] ON
INSERT [dbo].[UserPurchase] ([PurchaseID], [UserID], [DatePurchased], [DateAdded], [DateUpdated]) VALUES (3, 1, CAST(0x0000A564018A97F3 AS DateTime), NULL, CAST(0x0000A564018A97F3 AS DateTime))
INSERT [dbo].[UserPurchase] ([PurchaseID], [UserID], [DatePurchased], [DateAdded], [DateUpdated]) VALUES (5, 5, CAST(0x0000A5680169EFF2 AS DateTime), NULL, CAST(0x0000A5680169EFF2 AS DateTime))
SET IDENTITY_INSERT [dbo].[UserPurchase] OFF
/****** Object:  Table [dbo].[UserAddress]    Script Date: 05/12/2019 17:08:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserAddress](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[AddressType] [varchar](10) NOT NULL,
	[IsBillingAddressSame] [bit] NOT NULL,
	[PhoneNum] [varchar](20) NULL,
	[AddressLine1] [varchar](250) NOT NULL,
	[AddressLine2] [varchar](250) NULL,
	[City] [varchar](100) NOT NULL,
	[State] [varchar](100) NOT NULL,
	[Zip] [decimal](10, 0) NOT NULL,
	[Country] [varchar](100) NOT NULL,
	[DateAdded] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 05/12/2019 17:08:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[CardHolderName] [varchar](250) NOT NULL,
	[CardType] [varchar](20) NOT NULL,
	[CardNum] [int] NOT NULL,
	[CCV] [int] NOT NULL,
	[ExpiryMonth] [int] NOT NULL,
	[ExpiryYear] [int] NOT NULL,
	[DateAdded] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 05/12/2019 17:08:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Gallery](
	[GalleryID] [int] IDENTITY(1,1) NOT NULL,
	[GalleryTypeID] [int] NOT NULL,
	[DateAdded] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
	[GalleryName] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GalleryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Gallery] ON
INSERT [dbo].[Gallery] ([GalleryID], [GalleryTypeID], [DateAdded], [DateUpdated], [GalleryName]) VALUES (3, 2, CAST(0x0000A55B00FD0DE4 AS DateTime), NULL, N'Jungle')
INSERT [dbo].[Gallery] ([GalleryID], [GalleryTypeID], [DateAdded], [DateUpdated], [GalleryName]) VALUES (4, 3, CAST(0x0000A55B00FD2A3B AS DateTime), NULL, N'Sky')
INSERT [dbo].[Gallery] ([GalleryID], [GalleryTypeID], [DateAdded], [DateUpdated], [GalleryName]) VALUES (5, 3, CAST(0x0000A55B00FD4435 AS DateTime), NULL, N'Water')
INSERT [dbo].[Gallery] ([GalleryID], [GalleryTypeID], [DateAdded], [DateUpdated], [GalleryName]) VALUES (6, 4, CAST(0x0000A55B00FD528C AS DateTime), NULL, N'College')
INSERT [dbo].[Gallery] ([GalleryID], [GalleryTypeID], [DateAdded], [DateUpdated], [GalleryName]) VALUES (1002, 1002, CAST(0x0000A564018663A0 AS DateTime), NULL, N'Pakistani Mountains')
SET IDENTITY_INSERT [dbo].[Gallery] OFF
/****** Object:  Table [dbo].[Picture]    Script Date: 05/12/2019 17:08:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Picture](
	[PictureID] [int] IDENTITY(1,1) NOT NULL,
	[GalleryID] [int] NOT NULL,
	[PictureName] [varchar](200) NOT NULL,
	[PicturePath] [varchar](250) NOT NULL,
	[PictureSizeW] [int] NOT NULL,
	[PictureSizeH] [int] NOT NULL,
	[PictureSizeMB] [int] NOT NULL,
	[Price] [decimal](16, 2) NOT NULL,
	[DateAdded] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PictureID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Picture] ON
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (2, 3, N'Animal Dsc tm', N'~/Pictures/bad5e128-2a34-46f5-af50-0dd449bed4b5.jpg', 0, 0, 0, CAST(0.00 AS Decimal(16, 2)), NULL, NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (3, 3, N'Animal two form', N'~/Pictures/b787dce3-a8f0-4c75-9aeb-ed21dae46c92.jpg', 200, 200, 1, CAST(500.00 AS Decimal(16, 2)), NULL, NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (4, 3, N'Animal three', N'~/Pictures/36449618-1bae-4275-95c8-70b2f7d1ae4d.jpg', 200, 200, 1, CAST(4.00 AS Decimal(16, 2)), CAST(0x0000A55B00FEC70F AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (5, 4, N'Sky 1', N'~/Pictures/54a90cb2-b83f-4041-b7f3-16f13ba45aee.jpg', 600, 100, 2, CAST(0.00 AS Decimal(16, 2)), CAST(0x0000A55B00FF2EA6 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (6, 4, N'Sky 2', N'~/Pictures/9b9cd01c-3670-4394-a095-60614eef024c.JPG', 300, 200, 2, CAST(0.00 AS Decimal(16, 2)), CAST(0x0000A55B00FF5537 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (7, 4, N'Sky 3', N'~/Pictures/00cac380-1606-403a-aa97-fca09e9b4ec6.jpg', 800, 300, 4, CAST(0.00 AS Decimal(16, 2)), CAST(0x0000A55B00FF8095 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (8, 4, N'Sky 4', N'~/Pictures/8d5b8130-d4bc-4750-8176-622ed74da29f.jpg', 100, 100, 4, CAST(1.00 AS Decimal(16, 2)), CAST(0x0000A55B00FFBC4D AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (9, 5, N'Water 1', N'~/Pictures/38aebfec-c754-4d31-9bbc-5142ad4331c9.jpg', 100, 100, 2, CAST(0.00 AS Decimal(16, 2)), CAST(0x0000A55B00FFE271 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (10, 5, N'Water 2', N'~/Pictures/8adc8e01-f844-4da0-95c5-2e9ae52bef91.jpg', 200, 400, 1, CAST(0.00 AS Decimal(16, 2)), CAST(0x0000A55B01000397 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (11, 5, N'Water 3', N'~/Pictures/426cc5b7-8357-4462-9bec-132957e990fe.jpg', 700, 300, 1, CAST(0.00 AS Decimal(16, 2)), CAST(0x0000A55B01002F44 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (12, 6, N'College 1', N'~/Pictures/b6973b9e-226f-4a3a-8206-e795d51b3c27.jpg', 100, 300, 1, CAST(0.00 AS Decimal(16, 2)), CAST(0x0000A55B010053BF AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (13, 6, N'College 2', N'~/Pictures/6907f22d-5792-4c5a-9fa6-824bb8030de9.jpg', 400, 200, 1, CAST(0.00 AS Decimal(16, 2)), CAST(0x0000A55B0100826C AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (14, 6, N'College 3', N'~/Pictures/ecdeae5b-1ca0-439d-95ac-fe088472633d.jpg', 500, 300, 1, CAST(0.00 AS Decimal(16, 2)), CAST(0x0000A55B0100AA1D AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1002, 3, N'Horse', N'~/Pictures/f56abca5-6b44-4fa4-a4e6-97fbe24072e6.jpg', 400, 300, 500, CAST(12.00 AS Decimal(16, 2)), CAST(0x0000A563017EC443 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1003, 3, N'Awsome Picture', N'~/Pictures/97274577-a90b-4809-95da-946fb867b7a6.jpg', 6000, 400, 4, CAST(400.00 AS Decimal(16, 2)), CAST(0x0000A563017EEAD8 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1005, 3, N'Sitting ', N'~/Pictures/beced88b-160e-496f-a618-c48efbb286af.jpg', 1920, 1080, 0, CAST(500.00 AS Decimal(16, 2)), CAST(0x0000A5630183535A AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1006, 3, N'Snake', N'~/Pictures/ac97c59c-d70c-45fe-b3a9-c46753c8d0fe.jpg', 1920, 1200, 0, CAST(200.00 AS Decimal(16, 2)), CAST(0x0000A56301858303 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1007, 3, N'Wonderful Image', N'~/Pictures/c2de873a-72f3-48d1-98d8-26539a0524c6.jpg', 1920, 1200, 2, CAST(500.00 AS Decimal(16, 2)), CAST(0x0000A56401303845 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1008, 3, N'Wild Animal', N'~/Pictures/f3417026-bfd8-45f0-b5d6-825bfbb5043d.jpg', 1920, 1080, 0, CAST(500.00 AS Decimal(16, 2)), CAST(0x0000A564018168F1 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1009, 3, N'HIppo Face Baby', N'~/Pictures/af52173f-c604-474f-8c84-6bc8d93651ba.jpg', 1920, 1200, 1, CAST(100.00 AS Decimal(16, 2)), CAST(0x0000A56401818607 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1010, 3, N'Baby Elephant', N'~/Pictures/cb101f9b-b1a3-428f-97b1-df0055aab64f.jpg', 1920, 1080, 1, CAST(600.00 AS Decimal(16, 2)), CAST(0x0000A5640181A29D AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1011, 3, N'Exotic Parrot', N'~/Pictures/524cd087-bca2-4059-a67f-a37a871b81e7.jpg', 1024, 768, 0, CAST(200.00 AS Decimal(16, 2)), CAST(0x0000A5640181CF99 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1012, 3, N'Lion Face', N'~/Pictures/2ca2667d-3005-458b-bcaf-c9346f5aa961.jpg', 1600, 1200, 0, CAST(400.00 AS Decimal(16, 2)), CAST(0x0000A564018219E1 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1013, 3, N'Puppies', N'~/Pictures/6dc28723-a1c4-4f9d-8b05-e7108c781594.jpg', 1600, 1200, 0, CAST(200.00 AS Decimal(16, 2)), CAST(0x0000A5640182492B AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1014, 4, N'Sky Wallpaper', N'~/Pictures/197d2adc-d2c3-42a3-b2bc-a1fbe0dc8d77.jpg', 1920, 1180, 1, CAST(300.00 AS Decimal(16, 2)), CAST(0x0000A5640182C9BD AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1015, 4, N'Sunny Sky', N'~/Pictures/d865d799-8d43-468b-96d6-0ccf76d7ae07.jpg', 1280, 768, 0, CAST(700.00 AS Decimal(16, 2)), CAST(0x0000A5640182F78F AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1016, 4, N'Green Sky', N'~/Pictures/c5d8db95-411f-403c-ab3b-0a8a9dbaeadb.jpg', 1680, 1050, 1, CAST(500.00 AS Decimal(16, 2)), CAST(0x0000A5640183222E AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1017, 4, N'Baloon Sky', N'~/Pictures/9a5e716b-f63a-4ccf-9a13-45b9d443b1fb.jpg', 2160, 1920, 1, CAST(100.00 AS Decimal(16, 2)), CAST(0x0000A56401836BF0 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1018, 4, N'Multicolor sky', N'~/Pictures/7b37e3c1-2d4c-4e1b-935a-b95aa8ba1b3f.png', 1280, 854, 1, CAST(700.00 AS Decimal(16, 2)), CAST(0x0000A56401839223 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1019, 4, N'Spectrum sky', N'~/Pictures/ebaf72aa-f57d-4890-b950-8fba38d0fed6.jpg', 1920, 1080, 1, CAST(100.00 AS Decimal(16, 2)), CAST(0x0000A5640183C08F AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1020, 4, N'Paris Night Sky', N'~/Pictures/fd7ffdc2-84cc-4774-8924-e5661163bb50.jpg', 2560, 1600, 3, CAST(500.00 AS Decimal(16, 2)), CAST(0x0000A5640183F772 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1021, 5, N'Underwater Fish', N'~/Pictures/3ebfe95f-e4f5-41ba-bba7-d4488c0d367b.jpg', 1920, 1200, 2, CAST(900.00 AS Decimal(16, 2)), CAST(0x0000A56401853462 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1022, 5, N'Sea Side', N'~/Pictures/fbeabe98-5afe-40c1-88cf-0ef7da317967.jpg', 2560, 1600, 1, CAST(89.00 AS Decimal(16, 2)), CAST(0x0000A5640185487D AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1023, 5, N'Blue Sea', N'~/Pictures/03fb0b95-ab1e-47ec-b5f3-363f9e87d9b7.jpg', 1440, 900, 0, CAST(900.00 AS Decimal(16, 2)), CAST(0x0000A56401855D83 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1024, 5, N'City View Sea', N'~/Pictures/51a2cb13-a7a6-44ff-adf9-42a0439297bf.jpeg', 640, 360, 0, CAST(89.00 AS Decimal(16, 2)), CAST(0x0000A56401857409 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1025, 5, N'Fabulous Sunset', N'~/Pictures/73e7f548-d64d-4049-9e70-660c05226e29.jpg', 1920, 1080, 1, CAST(800.00 AS Decimal(16, 2)), CAST(0x0000A56401859A35 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1026, 5, N'Sunset Sea Beatiful View', N'~/Pictures/168ef4d8-11e2-4e32-87bf-461e0ee8cd21.jpg', 2560, 1600, 1, CAST(800.00 AS Decimal(16, 2)), CAST(0x0000A5640185B7E9 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1027, 5, N'Tumbler Static Sea', N'~/Pictures/a20588b7-34e8-47fd-9625-c916847628ac.jpg', 2048, 1536, 1, CAST(230.00 AS Decimal(16, 2)), CAST(0x0000A5640185D9C5 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1028, 5, N'Water Sea', N'~/Pictures/ceadac29-aac8-457e-a2a5-fc9cedae67ee.jpg', 1920, 1080, 0, CAST(800.00 AS Decimal(16, 2)), CAST(0x0000A5640185F3AE AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1029, 1002, N'Broad Peak', N'~/Pictures/196f63cd-665c-48ce-b40a-8bc114ce5bde.jpg', 1194, 768, 0, CAST(100.00 AS Decimal(16, 2)), CAST(0x0000A56401874364 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1030, 1002, N'Clean View', N'~/Pictures/1b597d41-2d5d-4da3-a307-a5beea32a208.jpg', 3264, 2448, 1, CAST(200.00 AS Decimal(16, 2)), CAST(0x0000A56401875542 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1031, 1002, N'White Mountains', N'~/Pictures/237eb0ba-4e8b-4dc6-b29f-30ed063a0d32.jpg', 4000, 3000, 1, CAST(500.00 AS Decimal(16, 2)), CAST(0x0000A564018798A7 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1032, 1002, N'Baltoro Glacier ', N'~/Pictures/c9aef6c6-5a4b-4c5d-acc2-bae4e5b736ac.jpg', 2848, 2136, 1, CAST(100.00 AS Decimal(16, 2)), NULL, NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1033, 1002, N'Chogolisa', N'~/Pictures/d77a5bd0-08ad-4e8f-9520-43ec86142d8b.jpg', 1229, 744, 0, CAST(877.00 AS Decimal(16, 2)), CAST(0x0000A5640187D8D0 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1034, 1002, N'Diran Mountains', N'~/Pictures/158f1706-4c0e-443a-ba97-6b131ad87723.jpg', 1024, 768, 0, CAST(500.00 AS Decimal(16, 2)), NULL, NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1035, 1002, N'Haramosh Peak', N'~/Pictures/eee06933-c25f-4123-9dd6-b778d434a1b0.jpg', 1024, 815, 0, CAST(300.00 AS Decimal(16, 2)), NULL, NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1036, 1002, N'K2 Mountains', N'~/Pictures/f601cb2c-588e-4ccd-9c01-e10b5325ebfa.jpg', 1197, 1533, 1, CAST(200.00 AS Decimal(16, 2)), CAST(0x0000A564018829B8 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1039, 6, N'Class ', N'~/Pictures/af05eaae-0f16-4624-82b7-4b777b30eeb8.jpg', 1920, 1200, 1, CAST(400.00 AS Decimal(16, 2)), CAST(0x0000A5680164D6AC AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1040, 6, N'Green Grass Outdoor', N'~/Pictures/647df1b6-e635-4c50-834f-3604a5e54817.jpg', 1024, 768, 0, CAST(100.00 AS Decimal(16, 2)), CAST(0x0000A568016507CF AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1041, 6, N'Great Outdoor', N'~/Pictures/45c671e8-5ae6-45c5-a6e1-b301e6e3200d.jpg', 1024, 768, 1, CAST(500.00 AS Decimal(16, 2)), CAST(0x0000A56801653482 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1042, 6, N'Student Caps', N'~/Pictures/8fcafd47-cbdf-47cf-b6b1-ed28126e64bb.jpg', 1920, 1080, 0, CAST(200.00 AS Decimal(16, 2)), CAST(0x0000A568016549C2 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1043, 6, N'Building', N'~/Pictures/07701caf-08d4-472a-950a-7316a2ba0fec.jpg', 1366, 768, 0, CAST(100.00 AS Decimal(16, 2)), CAST(0x0000A56801655C2A AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1044, 6, N'Historical Building', N'~/Pictures/c7e1b994-c6ea-4378-b1b3-6b44f530492f.jpg', 1600, 1200, 0, CAST(300.00 AS Decimal(16, 2)), CAST(0x0000A568016571AD AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1045, 6, N'Cloud Building', N'~/Pictures/7bc11a35-b33d-413e-b429-cf4400c1a56e.jpg', 2800, 2100, 1, CAST(300.00 AS Decimal(16, 2)), CAST(0x0000A56801658B58 AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1046, 6, N'Fort College', N'~/Pictures/c1adb3af-0a60-4d64-88e9-df6af032c07f.jpg', 1600, 1200, 0, CAST(340.00 AS Decimal(16, 2)), CAST(0x0000A5680165A1BA AS DateTime), NULL)
INSERT [dbo].[Picture] ([PictureID], [GalleryID], [PictureName], [PicturePath], [PictureSizeW], [PictureSizeH], [PictureSizeMB], [Price], [DateAdded], [DateUpdated]) VALUES (1047, 6, N'Black Could', N'~/Pictures/c2f5efe2-f4ca-4d9c-a222-f39429625872.jpg', 1920, 1200, 1, CAST(200.00 AS Decimal(16, 2)), CAST(0x0000A5680165B8B2 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Picture] OFF
/****** Object:  Table [dbo].[ItemPurchase]    Script Date: 05/12/2019 17:08:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemPurchase](
	[ItemPurchaseID] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseID] [int] NOT NULL,
	[PictureID] [int] NOT NULL,
	[NumberofItems] [int] NOT NULL,
	[DateAdded] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ItemPurchaseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ItemPurchase] ON
INSERT [dbo].[ItemPurchase] ([ItemPurchaseID], [PurchaseID], [PictureID], [NumberofItems], [DateAdded], [DateUpdated]) VALUES (3, 3, 3, 1, CAST(0x0000A563016AF31B AS DateTime), NULL)
INSERT [dbo].[ItemPurchase] ([ItemPurchaseID], [PurchaseID], [PictureID], [NumberofItems], [DateAdded], [DateUpdated]) VALUES (4, 3, 3, 1, CAST(0x0000A563016BD659 AS DateTime), NULL)
INSERT [dbo].[ItemPurchase] ([ItemPurchaseID], [PurchaseID], [PictureID], [NumberofItems], [DateAdded], [DateUpdated]) VALUES (5, 3, 2, 1, CAST(0x0000A563016BE2B8 AS DateTime), NULL)
INSERT [dbo].[ItemPurchase] ([ItemPurchaseID], [PurchaseID], [PictureID], [NumberofItems], [DateAdded], [DateUpdated]) VALUES (6, 3, 1005, 1, CAST(0x0000A5630185DEF0 AS DateTime), NULL)
INSERT [dbo].[ItemPurchase] ([ItemPurchaseID], [PurchaseID], [PictureID], [NumberofItems], [DateAdded], [DateUpdated]) VALUES (7, 3, 1011, 1, CAST(0x0000A564018A97FC AS DateTime), NULL)
INSERT [dbo].[ItemPurchase] ([ItemPurchaseID], [PurchaseID], [PictureID], [NumberofItems], [DateAdded], [DateUpdated]) VALUES (8, 5, 1005, 1, CAST(0x0000A56801666E5B AS DateTime), NULL)
INSERT [dbo].[ItemPurchase] ([ItemPurchaseID], [PurchaseID], [PictureID], [NumberofItems], [DateAdded], [DateUpdated]) VALUES (9, 5, 4, 1, CAST(0x0000A5680169F0D1 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[ItemPurchase] OFF
/****** Object:  ForeignKey [FK_UserID_User]    Script Date: 05/12/2019 17:08:20 ******/
ALTER TABLE [dbo].[UserPurchase]  WITH CHECK ADD  CONSTRAINT [FK_UserID_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserPurchase] CHECK CONSTRAINT [FK_UserID_User]
GO
/****** Object:  ForeignKey [FK_UserID_User1]    Script Date: 05/12/2019 17:08:20 ******/
ALTER TABLE [dbo].[UserAddress]  WITH CHECK ADD  CONSTRAINT [FK_UserID_User1] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserAddress] CHECK CONSTRAINT [FK_UserID_User1]
GO
/****** Object:  ForeignKey [FK_UserID_User2]    Script Date: 05/12/2019 17:08:20 ******/
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_UserID_User2] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_UserID_User2]
GO
/****** Object:  ForeignKey [FK_GalleryTypeID_GalleryType]    Script Date: 05/12/2019 17:08:20 ******/
ALTER TABLE [dbo].[Gallery]  WITH CHECK ADD  CONSTRAINT [FK_GalleryTypeID_GalleryType] FOREIGN KEY([GalleryTypeID])
REFERENCES [dbo].[GalleryType] ([GalleryTypeID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Gallery] CHECK CONSTRAINT [FK_GalleryTypeID_GalleryType]
GO
/****** Object:  ForeignKey [FK_GalleryID_Gallery]    Script Date: 05/12/2019 17:08:20 ******/
ALTER TABLE [dbo].[Picture]  WITH CHECK ADD  CONSTRAINT [FK_GalleryID_Gallery] FOREIGN KEY([GalleryID])
REFERENCES [dbo].[Gallery] ([GalleryID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Picture] CHECK CONSTRAINT [FK_GalleryID_Gallery]
GO
/****** Object:  ForeignKey [FK_PictureID_Picture]    Script Date: 05/12/2019 17:08:20 ******/
ALTER TABLE [dbo].[ItemPurchase]  WITH CHECK ADD  CONSTRAINT [FK_PictureID_Picture] FOREIGN KEY([PictureID])
REFERENCES [dbo].[Picture] ([PictureID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ItemPurchase] CHECK CONSTRAINT [FK_PictureID_Picture]
GO
/****** Object:  ForeignKey [FK_PurchaseID_UserPurchase]    Script Date: 05/12/2019 17:08:20 ******/
ALTER TABLE [dbo].[ItemPurchase]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseID_UserPurchase] FOREIGN KEY([PurchaseID])
REFERENCES [dbo].[UserPurchase] ([PurchaseID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ItemPurchase] CHECK CONSTRAINT [FK_PurchaseID_UserPurchase]
GO
