USE [StockDB]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/18/2019 12:06:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 6/18/2019 12:06:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Companies](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemConditions]    Script Date: 6/18/2019 12:06:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemConditions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Condition] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Items]    Script Date: 6/18/2019 12:06:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Items](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](100) NULL,
	[ReorderLevel] [int] NULL,
	[AvailableQuantity] [int] NULL,
	[CategoryID] [int] NULL,
	[CompanyID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockIns]    Script Date: 6/18/2019 12:06:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockIns](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NULL,
	[CategoryID] [int] NULL,
	[ItemID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StockOuts]    Script Date: 6/18/2019 12:06:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockOuts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NULL,
	[CategoryID] [int] NULL,
	[ItemID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([ID], [CategoryName]) VALUES (1, N'Stationary')
INSERT [dbo].[Categories] ([ID], [CategoryName]) VALUES (2, N'Cosmetics')
INSERT [dbo].[Categories] ([ID], [CategoryName]) VALUES (3, N'Electronics')
INSERT [dbo].[Categories] ([ID], [CategoryName]) VALUES (4, N'Kitchen Items')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Companies] ON 

INSERT [dbo].[Companies] ([ID], [CompanyName]) VALUES (1, N'Unilever')
INSERT [dbo].[Companies] ([ID], [CompanyName]) VALUES (2, N'RFL')
INSERT [dbo].[Companies] ([ID], [CompanyName]) VALUES (3, N'Walton')
INSERT [dbo].[Companies] ([ID], [CompanyName]) VALUES (4, N'Nova')
SET IDENTITY_INSERT [dbo].[Companies] OFF
SET IDENTITY_INSERT [dbo].[ItemConditions] ON 

INSERT [dbo].[ItemConditions] ([ID], [Condition]) VALUES (1, N'Sell')
INSERT [dbo].[ItemConditions] ([ID], [Condition]) VALUES (2, N'Lost')
INSERT [dbo].[ItemConditions] ([ID], [Condition]) VALUES (3, N'Damage')
SET IDENTITY_INSERT [dbo].[ItemConditions] OFF
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([ID], [ItemName], [ReorderLevel], [AvailableQuantity], [CategoryID], [CompanyID]) VALUES (1, N'Mobile', 20, 50, 3, 3)
INSERT [dbo].[Items] ([ID], [ItemName], [ReorderLevel], [AvailableQuantity], [CategoryID], [CompanyID]) VALUES (2, N'Pen', 30, 70, 4, 4)
INSERT [dbo].[Items] ([ID], [ItemName], [ReorderLevel], [AvailableQuantity], [CategoryID], [CompanyID]) VALUES (3, N'Blender', 10, 35, 1, 2)
SET IDENTITY_INSERT [dbo].[Items] OFF
SET IDENTITY_INSERT [dbo].[StockIns] ON 

INSERT [dbo].[StockIns] ([ID], [CompanyID], [CategoryID], [ItemID]) VALUES (1, 3, 3, 1)
INSERT [dbo].[StockIns] ([ID], [CompanyID], [CategoryID], [ItemID]) VALUES (2, 4, 4, 2)
INSERT [dbo].[StockIns] ([ID], [CompanyID], [CategoryID], [ItemID]) VALUES (3, 2, 1, 3)
SET IDENTITY_INSERT [dbo].[StockIns] OFF
SET IDENTITY_INSERT [dbo].[StockOuts] ON 

INSERT [dbo].[StockOuts] ([ID], [CompanyID], [CategoryID], [ItemID]) VALUES (1, 3, 3, 1)
INSERT [dbo].[StockOuts] ([ID], [CompanyID], [CategoryID], [ItemID]) VALUES (2, 4, 4, 2)
SET IDENTITY_INSERT [dbo].[StockOuts] OFF
ALTER TABLE [dbo].[Items]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([ID])
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Companies] ([ID])
GO
ALTER TABLE [dbo].[StockIns]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([ID])
GO
ALTER TABLE [dbo].[StockIns]  WITH CHECK ADD FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Companies] ([ID])
GO
ALTER TABLE [dbo].[StockIns]  WITH CHECK ADD FOREIGN KEY([ItemID])
REFERENCES [dbo].[Items] ([ID])
GO
ALTER TABLE [dbo].[StockOuts]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([ID])
GO
ALTER TABLE [dbo].[StockOuts]  WITH CHECK ADD FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Companies] ([ID])
GO
ALTER TABLE [dbo].[StockOuts]  WITH CHECK ADD FOREIGN KEY([ItemID])
REFERENCES [dbo].[Items] ([ID])
GO
