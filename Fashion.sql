create database Fashion_Store 
go 

use Fashion_Store 
/****** Object:  Table [dbo].[Accounts]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Authorities]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[RoleId] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Price] [float] NOT NULL,
	[CreateDate] [date] NOT NULL,
	[Available] [bit] NOT NULL,
	[CategoryId] [char](4) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categories]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [char](4) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Orders] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[OrderDetails]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[Roles]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

GO

INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ALFKI', N'123', N'Maria Anders', N'alfki@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ANATR', N'123', N'Ana Trujillo', N'anatr@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ANTON', N'123', N'Antonio Moreno', N'anton@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'AROUT', N'123', N'Thomas Hardy', N'arout@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BERGS', N'123', N'Christina Berglund', N'bergs@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BLAUS', N'123', N'Hanna Moos', N'blaus@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BLONP', N'123', N'Frédérique Citeaux', N'blonp@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BOLID', N'123', N'Martín Sommer', N'bolid@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BONAP', N'123', N'Laurence Lebihan', N'bonap@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BOTTM', N'123', N'Elizabeth Lincoln', N'bottm@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BSBEV', N'123', N'Victoria Ashworth', N'bsbev@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'CACTU', N'123', N'Patricio Simpson', N'cactu@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'CENTC', N'123', N'Francisco Chang', N'centc@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'MANAGER', N'123', N'Devid', N'cactu@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ADMIN', N'123', N'Thomas', N'cactu@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'abc', N'123', N'Nguyen Van A', N'a@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'staff', N'123', N'Phạm Thị Nở', N'nopt@gmail.com', N'user.png')

SET IDENTITY_INSERT [dbo].[Authorities] ON 

INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (1, N'ALFKI', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (2, N'ANATR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (3, N'ANTON', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (4, N'AROUT', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (5, N'BERGS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (6, N'BLAUS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (7, N'BLONP', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (8, N'BOLID', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (10, N'BONAP', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (11, N'BOTTM', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (12, N'BSBEV', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (13, N'CACTU', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (14, N'CENTC', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (98, N'director', N'DIRE')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (100, N'staff', N'STAF')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (2103, N'director', N'STAF')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (7103, N'staff', N'CUST')


SET IDENTITY_INSERT [dbo].[Authorities] OFF
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'ca01', N'Áo Tops')
INSERT [dbo].[Categories] ([Id], [Name])VALUES (N'ca02', N'Áo Sơ Mi')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'ca03', N'Áo khoác')
INSERT [dbo].[Categories] ([Id], [Name])VALUES (N'ca04', N'Quần')
INSERT [dbo].[Categories] ([Id], [Name])VALUES (N'ca05', N'Phụ kiện')



SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100005, 10249, 1111,253.000,2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100006, 10251, 1112,220.000,1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100007, 10252, 1116,157.000,3)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100008, 10254, 1211,534.000,1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100009, 10251, 1213,478.000,1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100010, 10253, 1311,353.000,1)

GO
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10249, N'ALFKI', CAST(0x000089B100000000 AS DateTime), N'Luisenstr. 48')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10250, N'ANATR', CAST(0x000089B400000000 AS DateTime), N'Rua do Paço, 67')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10251, N'ANTON', CAST(0x000089B400000000 AS DateTime), N'2, rue du Commerce')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10252, N'BOLID', CAST(0x000089B500000000 AS DateTime), N'Boulevard Tirou, 255')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10253, N'ANATR', CAST(0x000089B600000000 AS DateTime), N'Rua do Paço, 67')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10254, N'CENTC', CAST(0x000089B700000000 AS DateTime), N'Hauptstr. 31')


SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 



/* AoThun */
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1111, N'Áo thun có cổ Nam Nút phía trước màu trơn', N'aothun001_01.jpg', 253.000, CAST(N'2023-05-11' AS Date), 100, N'ca01')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1112, N'DAZY Tops Nam màu trơn', N'aothun002_01.jpg', 220.000, CAST(N'2023-05-15' AS Date), 200, N'ca01')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1113, N'Áo thun & Áo lót Nam Textured', N'aothun003_01.jpg', 181.000, CAST(N'2023-05-16' AS Date), 150, N'ca01')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1114, N'DAZY Tops Nam', N'aothun004_01.jpg', 254.000, CAST(N'2023-05-15' AS Date), 500, N'ca01')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1115, N'ROMWE Prep Áo thun', N'aothun005_01.jpg', 189.000, CAST(N'2023-05-12' AS Date), 130, N'ca01')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1116, N'Áo nam Giải Trí', N'aothun006_01.jpg', 157.000, CAST(N'2023-05-13' AS Date), 120, N'ca01')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1117, N'Áo thun hình Slogan', N'aothun007_01.jpg', 164.000, CAST(N'2023-05-14' AS Date), 190, N'ca01')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1118, N'Tops Nam Giải trí', N'aothun008_01.jpg', 166.000, CAST(N'2023-05-14' AS Date), 190, N'ca01')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1119, N'Áo thun có cổ Nam Nút phía trước', N'aothun009_01.jpg', 254.000, CAST(N'2023-05-14' AS Date), 190, N'ca01')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1120, N'Áo thun có cổ Nam Nút Khối Màu', N'aothun010_01.jpg', 258.000, CAST(N'2023-05-14' AS Date), 190, N'ca01')

/* SoMi */
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1211, N'DAZY Áo sơ mi Nam Túi Nút', N'aosomi001_01.jpg', 534.000, CAST(N'2023-05-14' AS Date), 190, N'ca02')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1212, N'Áo sơ mi Nam Nút tròn', N'aosomi002_01.jpg', 317.000, CAST(N'2023-05-14' AS Date), 190, N'ca02')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1213, N'DAZY Áo sơ mi Nam Túi màu trơn', N'aosomi003_01.jpg', 478.000, CAST(N'2023-05-14' AS Date), 190, N'ca02')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1214, N'Áo sơ mi Nam Nút in Boho', N'aosomi004_01.jpg', 230.000, CAST(N'2023-05-14' AS Date), 190, N'ca02')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1215, N'Áo sơ mi Nam Nút Paisley Họa tiết khắn Boho', N'aosomi005_01.jpg', 267.000, CAST(N'2023-05-14' AS Date), 190, N'ca02')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1216, N'Áo sơ mi Nam Túi Nút phía trước', N'aosomi006_01.jpg', 587.000, CAST(N'2023-05-14' AS Date), 190, N'ca02')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1217, N'SHEIN Nam', N'aosomi007_01.jpg', 259.000, CAST(N'2023-05-14' AS Date), 190, N'ca02')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1218, N'Manfinity Hypemode Nam', N'aothun008_01.jpg', 325.000, CAST(N'2023-05-14' AS Date), 190, N'ca02')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1219, N'Nam Túi', N'aosomi009_01.jpg', 354.000, CAST(N'2023-05-14' AS Date), 190, N'ca02')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1220, N'SHEIN Áo sơ mi Nam Nút giải trí', N'aosomi010_01.jpg', 441.000, CAST(N'2023-05-14' AS Date), 190, N'ca02')

/* AoKhoac */
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1311, N'Manfinity Hypemode Áo Nam', N'aokhoac001_01.jpg', 353.000, CAST(N'2023-05-14' AS Date), 190, N'ca03')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1312, N'SHEIN Áo nữ Nam Túi Dây kéo', N'aokhoac002_01.jpg', 554.000, CAST(N'2023-05-14' AS Date), 190, N'ca03')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1313, N'Áo Nam Dây Kéo Túi Lá Thắt', N'aokhoac003_01.jpg', 256.000, CAST(N'2023-05-14' AS Date), 190, N'ca03')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1314, N'Manfinity EMRG Áo Nam Dây kéo', N'aokhoac004_01.jpg', 281.000, CAST(N'2023-05-14' AS Date), 190, N'ca03')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1315, N'Manfinity Hypemode Áo Nam Dây kéo', N'aokhoac005_01.jpg', 282.000, CAST(N'2023-05-14' AS Date), 190, N'ca03')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1316, N'Manfinity EMRG Áo Nam Dây kéo Ombre', N'aokhoac006_01.jpg', 308.000, CAST(N'2023-05-14' AS Date), 190, N'ca03')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1317, N'Manfinity EMRG Áo Nam', N'aokhoac007_01.jpg', 303.000, CAST(N'2023-05-14' AS Date), 190, N'ca03')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1318, N'DAZY Áo Nam Dây kéo Túi màu trơn Giải trí', N'aokhoac008_01.jpg', 479.000, CAST(N'2023-05-14' AS Date), 190, N'ca03')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1319, N'Manfinity Hypemode Áo Nam Giải trí', N'aokhoac009_01.jpg', 294.000, CAST(N'2023-05-14' AS Date), 190, N'ca03')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1320, N'Manfinity Hypemode Áo Nam', N'aokhoac010_01.jpg', 357.000, CAST(N'2023-05-14' AS Date), 190, N'ca03')

SET IDENTITY_INSERT [dbo].[Products] OFF
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'CUST', N'Customers')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'DIRE', N'Directors')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'STAF', N'Staffs')


ALTER TABLE [dbo].[Accounts] ADD  CONSTRAINT [DF_Customers_Photo]  DEFAULT (N'Photo.gif') FOR [Photo]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_UnitPrice]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_OrderDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Image]  DEFAULT (N'Product.gif') FOR [Image]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitPrice]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_ProductDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Available]  DEFAULT ((1)) FOR [Available]
GO

ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_UserRoles_Roles]
GO

ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_UserRoles_Users]
GO

ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]

GO

ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO

ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO

ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK3ess0s7i9qs6sim1pf9kxhkpq] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK3ess0s7i9qs6sim1pf9kxhkpq]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'M?t kh?u ??ng nh?p' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'H? và tên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Fullname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ?nh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Photo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã lo?i' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên ti?ng Vi?t' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chi ti?t' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa ??n' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'OrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'ProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'??n giá bán' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'S? l??ng mua' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa ??n' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày ??t hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'??a ch? nh?n' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ?nh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Image'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'??n giá' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày s?n xu?t' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'?ang kinh doanh ?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Available'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã lo?i, FK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
