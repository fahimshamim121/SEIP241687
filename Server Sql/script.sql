USE [StudentDB]
GO
/****** Object:  Table [dbo].[Districts]    Script Date: 6/13/2019 10:06:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Districts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Students]    Script Date: 6/13/2019 10:06:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Students](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RollNo] [varchar](10) NULL,
	[Name] [varchar](100) NULL,
	[Age] [int] NULL,
	[Address] [varchar](max) NULL,
	[DistrictID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Districts] ON 

INSERT [dbo].[Districts] ([ID], [Name]) VALUES (1, N'Dhaka')
INSERT [dbo].[Districts] ([ID], [Name]) VALUES (2, N'Chitagong')
SET IDENTITY_INSERT [dbo].[Districts] OFF
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([ID], [RollNo], [Name], [Age], [Address], [DistrictID]) VALUES (1, N'CSE001', N'Ali', 21, N'Mirpur', 1)
INSERT [dbo].[Students] ([ID], [RollNo], [Name], [Age], [Address], [DistrictID]) VALUES (2, N'CSE002', N'Arif', 22, N'Savar', 2)
INSERT [dbo].[Students] ([ID], [RollNo], [Name], [Age], [Address], [DistrictID]) VALUES (3, N'CSE003', N'Kabir', 20, N'Dhanmondi', 2)
INSERT [dbo].[Students] ([ID], [RollNo], [Name], [Age], [Address], [DistrictID]) VALUES (4, N'EEE001', N'Araf', 21, N'Uttora', 1)
INSERT [dbo].[Students] ([ID], [RollNo], [Name], [Age], [Address], [DistrictID]) VALUES (5, N'EEE002', N'Ali', 21, N'Motijhil', 2)
INSERT [dbo].[Students] ([ID], [RollNo], [Name], [Age], [Address], [DistrictID]) VALUES (6, N'EEE003', N'Snigdha', 21, N'Uttora', 1)
SET IDENTITY_INSERT [dbo].[Students] OFF
