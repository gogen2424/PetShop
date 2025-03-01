USE [master]
GO
/****** Object:  Database [Stepanyan_Georgy]    Script Date: 24.09.2024 22:44:13 ******/
CREATE DATABASE [Stepanyan_Georgy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Stepanyan_Georgy', FILENAME = N'D:\MyNewGame\MSSQL16.SQLEXPRESS\MSSQL\DATA\Stepanyan_Georgy.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Stepanyan_Georgy_log', FILENAME = N'D:\MyNewGame\MSSQL16.SQLEXPRESS\MSSQL\DATA\Stepanyan_Georgy_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Stepanyan_Georgy] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Stepanyan_Georgy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Stepanyan_Georgy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET ARITHABORT OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Stepanyan_Georgy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Stepanyan_Georgy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Stepanyan_Georgy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Stepanyan_Georgy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Stepanyan_Georgy] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Stepanyan_Georgy] SET  MULTI_USER 
GO
ALTER DATABASE [Stepanyan_Georgy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Stepanyan_Georgy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Stepanyan_Georgy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Stepanyan_Georgy] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Stepanyan_Georgy] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Stepanyan_Georgy] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Stepanyan_Georgy] SET QUERY_STORE = OFF
GO
USE [Stepanyan_Georgy]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 24.09.2024 22:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] NOT NULL,
	[Name] [nchar](150) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 24.09.2024 22:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Id] [int] NOT NULL,
	[Name] [nchar](150) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Indexes]    Script Date: 24.09.2024 22:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Indexes](
	[Id] [int] NOT NULL,
	[Name] [nchar](150) NULL,
 CONSTRAINT [PK_Indexes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacture]    Script Date: 24.09.2024 22:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacture](
	[Id] [int] NOT NULL,
	[Name] [nchar](150) NULL,
 CONSTRAINT [PK_Manufacture] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 24.09.2024 22:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] NOT NULL,
	[IdClient] [int] NULL,
	[IdOrderStatus] [int] NULL,
	[IdOrderPickupPoint] [int] NULL,
	[OrderCreateDate] [nchar](150) NULL,
	[OrderDeliveryDate] [nchar](150) NULL,
	[Code] [nchar](150) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 24.09.2024 22:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[Id] [int] NOT NULL,
	[OrderID] [int] NULL,
	[IdProduct] [int] NULL,
	[Count] [nchar](150) NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 24.09.2024 22:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[Id] [int] NOT NULL,
	[Name] [nchar](150) NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickPoint]    Script Date: 24.09.2024 22:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickPoint](
	[Id] [int] NOT NULL,
	[IdIndex] [int] NULL,
	[IdCity] [int] NULL,
	[IdStreet] [int] NULL,
	[HouseNum] [int] NULL,
 CONSTRAINT [PK_PickPoint] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 24.09.2024 22:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] NOT NULL,
	[IdProductName] [int] NULL,
	[IdManufacture] [int] NULL,
	[IdSupplier] [int] NULL,
	[ProductArticleNumber] [nchar](150) NULL,
	[ProductCost] [decimal](19, 2) NULL,
	[ProductDiscountAmount] [nchar](150) NULL,
	[DiscountNow] [nchar](150) NULL,
	[ProductQuantityInStock] [int] NULL,
	[ProductDesription] [nchar](150) NULL,
	[PhotoName] [nchar](150) NULL,
	[ProductPhoto] [image] NULL,
	[IdUnits] [int] NULL,
	[IdCategory] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductName]    Script Date: 24.09.2024 22:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductName](
	[Id] [int] NOT NULL,
	[Name] [nchar](150) NULL,
 CONSTRAINT [PK_ProductName] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 24.09.2024 22:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] NOT NULL,
	[RoleName] [nchar](150) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 24.09.2024 22:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](150) NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 24.09.2024 22:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Id] [int] NOT NULL,
	[Name] [nchar](150) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Units]    Script Date: 24.09.2024 22:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Units](
	[IdUnit] [int] NOT NULL,
	[NameOfUnits] [varchar](150) NULL,
 CONSTRAINT [PK_Units] PRIMARY KEY CLUSTERED 
(
	[IdUnit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 24.09.2024 22:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] NOT NULL,
	[IdUserRole] [int] NULL,
	[UserSurname] [nchar](150) NULL,
	[UserName] [nchar](150) NULL,
	[UserPatronymic] [nchar](150) NULL,
	[UserLogin] [nchar](150) NULL,
	[UserPassword] [nchar](150) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Для животных                                                                                                                                          ')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Товары для кошек                                                                                                                                      ')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Товары для собак                                                                                                                                      ')
GO
INSERT [dbo].[City] ([Id], [Name]) VALUES (1, N'г.Нефтеюганск                                                                                                                                         ')
GO
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (1, N'125061                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (2, N'125703                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (3, N'125837                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (4, N'190949                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (5, N'344288                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (6, N'394060                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (7, N'394242                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (8, N'394782                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (9, N'400562                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (10, N'410172                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (11, N'410542                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (12, N'410661                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (13, N'420151                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (14, N'426030                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (15, N'443890                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (16, N'450375                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (17, N'450558                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (18, N'450983                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (19, N'454311                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (20, N'603002                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (21, N'603036                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (22, N'603379                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (23, N'603721                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (24, N'614164                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (25, N'614510                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (26, N'614611                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (27, N'614753                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (28, N'620839                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (29, N'625283                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (30, N'625560                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (31, N'625590                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (32, N'625683                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (33, N'630201                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (34, N'630370                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (35, N'660007                                                                                                                                                ')
INSERT [dbo].[Indexes] ([Id], [Name]) VALUES (36, N'660540                                                                                                                                                ')
GO
INSERT [dbo].[Manufacture] ([Id], [Name]) VALUES (1, N'Cat Chow                                                                                                                                              ')
INSERT [dbo].[Manufacture] ([Id], [Name]) VALUES (2, N'Chappy                                                                                                                                                ')
INSERT [dbo].[Manufacture] ([Id], [Name]) VALUES (3, N'Dog Chow                                                                                                                                              ')
INSERT [dbo].[Manufacture] ([Id], [Name]) VALUES (4, N'Dreames                                                                                                                                               ')
INSERT [dbo].[Manufacture] ([Id], [Name]) VALUES (5, N'Fancy Pets                                                                                                                                            ')
INSERT [dbo].[Manufacture] ([Id], [Name]) VALUES (6, N'LIKER                                                                                                                                                 ')
INSERT [dbo].[Manufacture] ([Id], [Name]) VALUES (7, N'Nobby                                                                                                                                                 ')
INSERT [dbo].[Manufacture] ([Id], [Name]) VALUES (8, N'Pro Plan                                                                                                                                              ')
INSERT [dbo].[Manufacture] ([Id], [Name]) VALUES (9, N'TitBit                                                                                                                                                ')
INSERT [dbo].[Manufacture] ([Id], [Name]) VALUES (10, N'Triol                                                                                                                                                 ')
INSERT [dbo].[Manufacture] ([Id], [Name]) VALUES (11, N'trixie                                                                                                                                                ')
INSERT [dbo].[Manufacture] ([Id], [Name]) VALUES (12, N'True Touch                                                                                                                                            ')
INSERT [dbo].[Manufacture] ([Id], [Name]) VALUES (13, N'ZooM                                                                                                                                                  ')
GO
INSERT [dbo].[Order] ([OrderID], [IdClient], [IdOrderStatus], [IdOrderPickupPoint], [OrderCreateDate], [OrderDeliveryDate], [Code]) VALUES (1, NULL, 2, NULL, N'2022-05-12                                                                                                                                            ', N'25                                                                                                                                                    ', N'601                                                                                                                                                   ')
INSERT [dbo].[Order] ([OrderID], [IdClient], [IdOrderStatus], [IdOrderPickupPoint], [OrderCreateDate], [OrderDeliveryDate], [Code]) VALUES (2, NULL, 2, NULL, N'2022-05-12                                                                                                                                            ', N'20                                                                                                                                                    ', N'602                                                                                                                                                   ')
INSERT [dbo].[Order] ([OrderID], [IdClient], [IdOrderStatus], [IdOrderPickupPoint], [OrderCreateDate], [OrderDeliveryDate], [Code]) VALUES (3, 9, 1, NULL, N'2022-05-14                                                                                                                                            ', N'22                                                                                                                                                    ', N'603                                                                                                                                                   ')
INSERT [dbo].[Order] ([OrderID], [IdClient], [IdOrderStatus], [IdOrderPickupPoint], [OrderCreateDate], [OrderDeliveryDate], [Code]) VALUES (4, NULL, 1, NULL, N'2022-05-14                                                                                                                                            ', N'24                                                                                                                                                    ', N'604                                                                                                                                                   ')
INSERT [dbo].[Order] ([OrderID], [IdClient], [IdOrderStatus], [IdOrderPickupPoint], [OrderCreateDate], [OrderDeliveryDate], [Code]) VALUES (5, NULL, 1, NULL, N'2022-05-16                                                                                                                                            ', N'25                                                                                                                                                    ', N'605                                                                                                                                                   ')
INSERT [dbo].[Order] ([OrderID], [IdClient], [IdOrderStatus], [IdOrderPickupPoint], [OrderCreateDate], [OrderDeliveryDate], [Code]) VALUES (6, 7, 1, NULL, N'2022-05-17                                                                                                                                            ', N'28                                                                                                                                                    ', N'606                                                                                                                                                   ')
INSERT [dbo].[Order] ([OrderID], [IdClient], [IdOrderStatus], [IdOrderPickupPoint], [OrderCreateDate], [OrderDeliveryDate], [Code]) VALUES (7, NULL, 2, NULL, N'2022-05-18                                                                                                                                            ', N'36                                                                                                                                                    ', N'607                                                                                                                                                   ')
INSERT [dbo].[Order] ([OrderID], [IdClient], [IdOrderStatus], [IdOrderPickupPoint], [OrderCreateDate], [OrderDeliveryDate], [Code]) VALUES (8, NULL, 2, NULL, N'2022-05-19                                                                                                                                            ', N'32                                                                                                                                                    ', N'608                                                                                                                                                   ')
INSERT [dbo].[Order] ([OrderID], [IdClient], [IdOrderStatus], [IdOrderPickupPoint], [OrderCreateDate], [OrderDeliveryDate], [Code]) VALUES (9, 1, 2, NULL, N'2022-05-21                                                                                                                                            ', N'34                                                                                                                                                    ', N'609                                                                                                                                                   ')
INSERT [dbo].[Order] ([OrderID], [IdClient], [IdOrderStatus], [IdOrderPickupPoint], [OrderCreateDate], [OrderDeliveryDate], [Code]) VALUES (10, 8, 1, NULL, N'2022-05-21                                                                                                                                            ', N'36                                                                                                                                                    ', N'610                                                                                                                                                   ')
GO
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (1, 1, 30, N'15                                                                                                                                                    ')
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (2, 2, 10, N'15                                                                                                                                                    ')
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (3, 3, 9, N'10                                                                                                                                                    ')
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (4, 4, 11, N'1                                                                                                                                                     ')
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (5, 5, 23, N'1                                                                                                                                                     ')
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (6, 6, 16, N'1                                                                                                                                                     ')
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (7, 7, 14, N'2                                                                                                                                                     ')
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (8, 8, 19, N'1                                                                                                                                                     ')
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (9, 9, 30, N'1                                                                                                                                                     ')
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (10, 10, 21, N'1                                                                                                                                                     ')
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (11, 1, 12, N'1                                                                                                                                                     ')
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (12, 2, 30, N'15                                                                                                                                                    ')
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (13, 3, 30, N'10                                                                                                                                                    ')
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (14, 4, 5, N'2                                                                                                                                                     ')
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (15, 5, 6, N'10                                                                                                                                                    ')
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (16, 6, 4, N'1                                                                                                                                                     ')
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (17, 7, 22, N'2                                                                                                                                                     ')
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (18, 8, 30, N'1                                                                                                                                                     ')
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (19, 9, 20, N'1                                                                                                                                                     ')
INSERT [dbo].[OrderProduct] ([Id], [OrderID], [IdProduct], [Count]) VALUES (20, 10, 30, N'1                                                                                                                                                     ')
GO
INSERT [dbo].[OrderStatus] ([Id], [Name]) VALUES (1, N'Завершен                                                                                                                                              ')
INSERT [dbo].[OrderStatus] ([Id], [Name]) VALUES (2, N'Новый                                                                                                                                                 ')
GO
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (1, 5, 1, 28, 1)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (2, 24, 1, 25, 30)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (3, 7, 1, 7, 43)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (4, 36, 1, 23, 25)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (5, 3, 1, 30, 40)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (6, 2, 1, 16, 49)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (7, 29, 1, 17, 46)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (8, 26, 1, 11, 50)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (9, 19, 1, 14, 19)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (10, 35, 1, 15, 19)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (11, 21, 1, 20, 4)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (12, 18, 1, 8, 26)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (13, 8, 1, 28, 3)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (14, 20, 1, 4, 28)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (15, 17, 1, 12, 30)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (16, 6, 1, 26, 43)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (17, 12, 1, 29, 50)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (18, 31, 1, 7, 20)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (19, 32, 1, 1, NULL)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (20, 9, 1, 5, 32)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (21, 25, 1, 9, 47)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (22, 11, 1, 21, 46)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (23, 28, 1, 27, 8)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (24, 15, 1, 7, 1)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (25, 22, 1, 24, 46)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (26, 23, 1, 3, 41)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (27, 10, 1, 22, 13)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (28, 13, 1, 2, 32)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (29, 1, 1, 18, 8)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (30, 34, 1, 30, 24)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (31, 27, 1, 19, 35)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (32, 14, 1, 9, 44)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (33, 16, 1, 6, 44)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (34, 30, 1, 13, 12)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (35, 33, 1, 8, 17)
INSERT [dbo].[PickPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [HouseNum]) VALUES (36, 4, 1, 10, 26)
GO
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (1, 5, 10, 2, N'B427R5                                                                                                                                                ', CAST(400.00 AS Decimal(19, 2)), N'15                                                                                                                                                    ', N'4                                                                                                                                                     ', 5, N'Миска для животных Triol "Стрекоза", 450 мл                                                                                                           ', N'Atoma                                                                                                                                                 ', NULL, 1, 1)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (2, 6, 11, 1, N'D356R4                                                                                                                                                ', CAST(600.00 AS Decimal(19, 2)), N'15                                                                                                                                                    ', N'2                                                                                                                                                     ', 16, N'Мячик для собак TRIXIE DentaFun (32942) зеленый / белый                                                                                               ', N'null                                                                                                                                                  ', NULL, 1, 3)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (3, 1, 10, 1, N'D563F4                                                                                                                                                ', CAST(600.00 AS Decimal(19, 2)), N'10                                                                                                                                                    ', N'5                                                                                                                                                     ', 5, N'Игрушка для собак Triol Бобер 41 см 12141053 бежевый                                                                                                  ', N'null                                                                                                                                                  ', NULL, 1, 3)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (4, 7, 1, 1, N'D643B5                                                                                                                                                ', CAST(4100.00 AS Decimal(19, 2)), N'30                                                                                                                                                    ', N'4                                                                                                                                                     ', 9, N'Сухой корм для котят CAT CHOW с высоким содержанием домашней птицы                                                                                    ', N'null                                                                                                                                                  ', NULL, 1, 2)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (5, 1, 5, 2, N'E345R4                                                                                                                                                ', CAST(199.00 AS Decimal(19, 2)), N'5                                                                                                                                                     ', N'5                                                                                                                                                     ', 7, N'Игрушка для животных «Котик» с кошачьей мятой FANCY PETS                                                                                              ', N'E345R4.jpg                                                                                                                                            ', NULL, 1, 2)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (6, 3, 10, 2, N'E431R5                                                                                                                                                ', CAST(170.00 AS Decimal(19, 2)), N'5                                                                                                                                                     ', N'5                                                                                                                                                     ', 5, N'Лакомство для собак Triol Кость из жил 7.5 см, 4шт. в уп.                                                                                             ', N'E431R5.png                                                                                                                                            ', NULL, 1, 3)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (7, 3, 9, 2, N'E434U6                                                                                                                                                ', CAST(140.00 AS Decimal(19, 2)), N'20                                                                                                                                                    ', N'3                                                                                                                                                     ', 19, N'Лакомство для собак Titbit Лакомый кусочек Нарезка из говядины, 80 г                                                                                  ', N'null                                                                                                                                                  ', NULL, 1, 3)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (8, 2, 10, 2, N'E466T6                                                                                                                                                ', CAST(3500.00 AS Decimal(19, 2)), N'30                                                                                                                                                    ', N'5                                                                                                                                                     ', 3, N'Клетка для собак Triol 30671002 61х45.5х52 см серый/белый                                                                                             ', N'null                                                                                                                                                  ', NULL, 1, 3)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (9, 3, 9, 1, N'E532Q5                                                                                                                                                ', CAST(166.00 AS Decimal(19, 2)), N'15                                                                                                                                                    ', N'5                                                                                                                                                     ', 18, N'Лакомство для собак Titbit Печенье Био Десерт с лососем стандарт, 350 г                                                                               ', N'E532Q5.jpg                                                                                                                                            ', NULL, 1, 3)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (10, 7, 8, 2, N'F432F4                                                                                                                                                ', CAST(1200.00 AS Decimal(19, 2)), N'10                                                                                                                                                    ', N'3                                                                                                                                                     ', 15, N'Сухой корм для кошек Pro Plan с чувствительным пищеварением                                                                                           ', N'F432F4.jpg                                                                                                                                            ', NULL, 1, 2)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (11, 6, 6, 2, N'G345E4                                                                                                                                                ', CAST(300.00 AS Decimal(19, 2)), N'5                                                                                                                                                     ', N'3                                                                                                                                                     ', 19, N'Мячик для собак LIKER Мячик Лайкер (6294) оранжевый                                                                                                   ', N'G345E4.jpg                                                                                                                                            ', NULL, 1, 3)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (12, 8, 12, 2, N'G453T5                                                                                                                                                ', CAST(149.00 AS Decimal(19, 2)), N'15                                                                                                                                                    ', N'2                                                                                                                                                     ', 7, N'Щетка-варежка True Touch для вычесывания шерсти, синий                                                                                                ', N'G453T5.jpg                                                                                                                                            ', NULL, 1, 1)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (13, 7, 8, 1, N'G542F5                                                                                                                                                ', CAST(2190.00 AS Decimal(19, 2)), N'30                                                                                                                                                    ', N'4                                                                                                                                                     ', 7, N'Сухой корм для собак Pro Plan при чувствительном пищеварении, ягненок                                                                                 ', N'null                                                                                                                                                  ', NULL, 1, 3)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (14, 1, 10, 2, N'H342F5                                                                                                                                                ', CAST(510.00 AS Decimal(19, 2)), N'5                                                                                                                                                     ', N'2                                                                                                                                                     ', 17, N'Игрушка для собак Triol Енот 41 см 12141063 серый                                                                                                     ', N'null                                                                                                                                                  ', NULL, 1, 3)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (15, 5, 10, 2, N'H432F4                                                                                                                                                ', CAST(385.00 AS Decimal(19, 2)), N'10                                                                                                                                                    ', N'2                                                                                                                                                     ', 17, N'Миска Triol 9002/KIDP3211/30261087 400 мл серебристый                                                                                                 ', N'null                                                                                                                                                  ', NULL, 1, 1)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (16, 1, 10, 1, N'H436R4                                                                                                                                                ', CAST(300.00 AS Decimal(19, 2)), N'15                                                                                                                                                    ', N'2                                                                                                                                                     ', 15, N'Игрушка для собак Triol 3D плетение EC-04/12171005 бежевый                                                                                            ', N'null                                                                                                                                                  ', NULL, 1, 3)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (17, 3, 10, 2, N'H542R6                                                                                                                                                ', CAST(177.00 AS Decimal(19, 2)), N'15                                                                                                                                                    ', N'3                                                                                                                                                     ', 15, N'Лакомство для собак Triol Мясные полоски из кролика, 70 г                                                                                             ', N'null                                                                                                                                                  ', NULL, 1, 3)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (18, 5, 10, 1, N'H643W2                                                                                                                                                ', CAST(292.00 AS Decimal(19, 2)), N'25                                                                                                                                                    ', N'3                                                                                                                                                     ', 13, N'Миска Triol CB02/30231002 100 мл бежевый/голубой                                                                                                      ', N'null                                                                                                                                                  ', NULL, 1, 1)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (19, 6, 10, 2, N'K436T5                                                                                                                                                ', CAST(100.00 AS Decimal(19, 2)), N'5                                                                                                                                                     ', N'4                                                                                                                                                     ', 21, N'Мячик для собак Triol с косточками 12101096 желтый/зеленый                                                                                            ', N'null                                                                                                                                                  ', NULL, 1, 3)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (20, 4, 13, 2, N'K452T5                                                                                                                                                ', CAST(800.00 AS Decimal(19, 2)), N'25                                                                                                                                                    ', N'2                                                                                                                                                     ', 17, N'Лежак для собак и кошек ZooM Lama 40х30х8 см бежевый                                                                                                  ', N'null                                                                                                                                                  ', NULL, 1, 3)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (21, 3, 9, 2, N'M356R4                                                                                                                                                ', CAST(50.00 AS Decimal(19, 2)), N'5                                                                                                                                                     ', N'4                                                                                                                                                     ', 6, N'Лакомство для собак Titbit Гематоген мясной Classic, 35 г                                                                                             ', N'null                                                                                                                                                  ', NULL, 1, 3)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (22, 1, 10, 2, N'Q245F5                                                                                                                                                ', CAST(510.00 AS Decimal(19, 2)), N'5                                                                                                                                                     ', N'2                                                                                                                                                     ', 17, N'Игрушка для собак Triol Бобер 41 см 12141063 серый                                                                                                    ', N'null                                                                                                                                                  ', NULL, 1, 3)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (23, 5, 7, 1, N'R356F4                                                                                                                                                ', CAST(234.00 AS Decimal(19, 2)), N'10                                                                                                                                                    ', N'3                                                                                                                                                     ', 17, N'Миска Nobby с рисунком Dog для собак 130 мл красный                                                                                                   ', N'R356F4.jpg                                                                                                                                            ', NULL, 1, 3)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (24, 7, 1, 2, N'S245R4                                                                                                                                                ', CAST(280.00 AS Decimal(19, 2)), N'15                                                                                                                                                    ', N'3                                                                                                                                                     ', 8, N'Сухой корм для кошек CAT CHOW                                                                                                                         ', N'null                                                                                                                                                  ', NULL, 1, 2)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (25, 7, 2, 2, N'T432F4                                                                                                                                                ', CAST(1700.00 AS Decimal(19, 2)), N'25                                                                                                                                                    ', N'2                                                                                                                                                     ', 5, N'Сухой корм для собак Chappi говядина по-домашнему, с овощами                                                                                          ', N'T432F4.jpg                                                                                                                                            ', NULL, 1, 3)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (26, 7, 2, 1, N'V352R4                                                                                                                                                ', CAST(1700.00 AS Decimal(19, 2)), N'25                                                                                                                                                    ', N'4                                                                                                                                                     ', 9, N'Сухой корм для собак Chappi Мясное изобилие, мясное ассорти                                                                                           ', N'null                                                                                                                                                  ', NULL, 1, 3)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (27, 5, 10, 2, N'B427R6                                                                                                                                                ', CAST(545.66 AS Decimal(19, 2)), N'15,6                                                                                                                                                  ', N'2,495384615                                                                                                                                           ', NULL, N'Миска для животных Triol "Стрекоза", 450 мл                                                                                                           ', N'null                                                                                                                                                  ', NULL, 1, 1)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (28, 6, 11, 1, N'D356R5                                                                                                                                                ', CAST(526.96 AS Decimal(19, 2)), N'15,64444444                                                                                                                                           ', N'2,435213675                                                                                                                                           ', NULL, N'Мячик для собак TRIXIE DentaFun (32942) зеленый / белый                                                                                               ', N'null                                                                                                                                                  ', NULL, 1, 3)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (29, 1, 10, 1, N'D563F5                                                                                                                                                ', CAST(508.26 AS Decimal(19, 2)), N'15,68888889                                                                                                                                           ', N'2,375042735                                                                                                                                           ', NULL, N'Игрушка для собак Triol Бобер 41 см 12141053 бежевый                                                                                                  ', N'null                                                                                                                                                  ', NULL, 1, 3)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [ProductArticleNumber], [ProductCost], [ProductDiscountAmount], [DiscountNow], [ProductQuantityInStock], [ProductDesription], [PhotoName], [ProductPhoto], [IdUnits], [IdCategory]) VALUES (30, 7, 1, 1, N'D643B6                                                                                                                                                ', CAST(489.56 AS Decimal(19, 2)), N'15,73333333                                                                                                                                           ', N'2,314871795                                                                                                                                           ', NULL, N'Сухой корм для котят CAT CHOW с высоким содержанием домашней птицы                                                                                    ', N'null                                                                                                                                                  ', NULL, 1, 2)
GO
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (1, N'Игрушка                                                                                                                                               ')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (2, N'Клетка                                                                                                                                                ')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (3, N'Лакомство                                                                                                                                             ')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (4, N'Лежак                                                                                                                                                 ')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (5, N'Миска                                                                                                                                                 ')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (6, N'Мячик                                                                                                                                                 ')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (7, N'Сухой корм                                                                                                                                            ')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (8, N'Щетка-варежка                                                                                                                                         ')
GO
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор                                                                                                                                         ')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Клиент                                                                                                                                                ')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Менеджер                                                                                                                                              ')
GO
SET IDENTITY_INSERT [dbo].[Street] ON 

INSERT [dbo].[Street] ([Id], [Name]) VALUES (1, N'ул.8 Марта                                                                                                                                            ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (2, N'ул.Вишневая                                                                                                                                           ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (3, N'ул.Гоголя                                                                                                                                             ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (4, N'ул.Дзержинского                                                                                                                                       ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (5, N'ул.Зеленая                                                                                                                                            ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (6, N'ул.Клубная                                                                                                                                            ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (7, N'ул.Коммунистическая                                                                                                                                   ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (8, N'ул.Комсомольская                                                                                                                                      ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (9, N'ул.Маяковского                                                                                                                                        ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (10, N'ул.Мичурина                                                                                                                                           ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (11, N'ул.Молодежная                                                                                                                                         ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (12, N'ул.Набережная                                                                                                                                         ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (13, N'ул.Некрасова                                                                                                                                          ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (14, N'ул.Новая                                                                                                                                              ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (15, N'ул.Октябрьская                                                                                                                                        ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (16, N'ул.Партизанская                                                                                                                                       ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (17, N'ул.Победы                                                                                                                                             ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (18, N'ул.Подгорная                                                                                                                                          ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (19, N'ул.Полевая                                                                                                                                            ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (20, N'ул.Садовая                                                                                                                                            ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (21, N'ул.Светлая                                                                                                                                            ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (22, N'ул.Северная                                                                                                                                           ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (23, N'ул.Солнечная                                                                                                                                          ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (24, N'ул.Спортивная                                                                                                                                         ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (25, N'ул.Степная                                                                                                                                            ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (26, N'ул.Фрунзе                                                                                                                                             ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (27, N'ул.Цветочная                                                                                                                                          ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (28, N'ул.Чехова                                                                                                                                             ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (29, N'ул.Школьная                                                                                                                                           ')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (30, N'ул.Шоссейная                                                                                                                                          ')
SET IDENTITY_INSERT [dbo].[Street] OFF
GO
INSERT [dbo].[Supplier] ([Id], [Name]) VALUES (1, N'PetShop                                                                                                                                               ')
INSERT [dbo].[Supplier] ([Id], [Name]) VALUES (2, N'ZooMir                                                                                                                                                ')
GO
INSERT [dbo].[Units] ([IdUnit], [NameOfUnits]) VALUES (1, N'Jiravi')
INSERT [dbo].[Units] ([IdUnit], [NameOfUnits]) VALUES (2, N'bpmji')
GO
INSERT [dbo].[User] ([UserID], [IdUserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (1, 2, N'Волкова                                                                                                                                               ', N'Эмилия                                                                                                                                                ', N'Артёмовна                                                                                                                                             ', N'nokupekidda2001@gmail.com                                                                                                                             ', N'JlFRCZ                                                                                                                                                ')
INSERT [dbo].[User] ([UserID], [IdUserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (2, 3, N'Денисов                                                                                                                                               ', N'Михаил                                                                                                                                                ', N'Романович                                                                                                                                             ', N'frusubroppotou656@yandex.ru                                                                                                                           ', N'YOyhfR                                                                                                                                                ')
INSERT [dbo].[User] ([UserID], [IdUserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (3, 1, N'Игнатьева                                                                                                                                             ', N'Алина                                                                                                                                                 ', N'Михайловна                                                                                                                                            ', N'vilagajaunne-5170@yandex.ru                                                                                                                           ', N'8ntwUp                                                                                                                                                ')
INSERT [dbo].[User] ([UserID], [IdUserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (4, 3, N'Соловьев                                                                                                                                              ', N'Ярослав                                                                                                                                               ', N'Маркович                                                                                                                                              ', N'frapreubrulloba1141@yandex.ru                                                                                                                         ', N'rwVDh9                                                                                                                                                ')
INSERT [dbo].[User] ([UserID], [IdUserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (5, 1, N'Суслов                                                                                                                                                ', N'Илья                                                                                                                                                  ', N'Арсентьевич                                                                                                                                           ', N'pixil59@gmail.com                                                                                                                                     ', N'2L6KZG                                                                                                                                                ')
INSERT [dbo].[User] ([UserID], [IdUserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (6, 3, N'Тимофеев                                                                                                                                              ', N'Михаил                                                                                                                                                ', N'Елисеевич                                                                                                                                             ', N'leuttevitrafo1998@mail.ru                                                                                                                             ', N'RSbvHv                                                                                                                                                ')
INSERT [dbo].[User] ([UserID], [IdUserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (7, 2, N'Филимонов                                                                                                                                             ', N'Роберт                                                                                                                                                ', N'Васильевич                                                                                                                                            ', N'loudittoimmolau1900@gmail.com                                                                                                                         ', N'LdNyos                                                                                                                                                ')
INSERT [dbo].[User] ([UserID], [IdUserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (8, 2, N'Чистякова                                                                                                                                             ', N'Виктория                                                                                                                                              ', N'Степановна                                                                                                                                            ', N'freineiciweijau888@yandex.ru                                                                                                                          ', N'AtnDjr                                                                                                                                                ')
INSERT [dbo].[User] ([UserID], [IdUserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (9, 2, N'Шилова                                                                                                                                                ', N'Майя                                                                                                                                                  ', N'Артемьевна                                                                                                                                            ', N'hittuprofassa4984@mail.com                                                                                                                            ', N'gynQMT                                                                                                                                                ')
INSERT [dbo].[User] ([UserID], [IdUserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (10, 1, N'Яковлева                                                                                                                                              ', N'Ярослава                                                                                                                                              ', N'Даниэльевна                                                                                                                                           ', N'"deummecillummu-4992@mail.ru                                                                                                                          ', NULL)
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([IdOrderStatus])
REFERENCES [dbo].[OrderStatus] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PickPoint] FOREIGN KEY([IdOrderPickupPoint])
REFERENCES [dbo].[PickPoint] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PickPoint]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Order]
GO
ALTER TABLE [dbo].[PickPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickPoint_City] FOREIGN KEY([IdCity])
REFERENCES [dbo].[City] ([Id])
GO
ALTER TABLE [dbo].[PickPoint] CHECK CONSTRAINT [FK_PickPoint_City]
GO
ALTER TABLE [dbo].[PickPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickPoint_Indexes] FOREIGN KEY([IdIndex])
REFERENCES [dbo].[Indexes] ([Id])
GO
ALTER TABLE [dbo].[PickPoint] CHECK CONSTRAINT [FK_PickPoint_Indexes]
GO
ALTER TABLE [dbo].[PickPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickPoint_Street] FOREIGN KEY([IdStreet])
REFERENCES [dbo].[Street] ([Id])
GO
ALTER TABLE [dbo].[PickPoint] CHECK CONSTRAINT [FK_PickPoint_Street]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([IdCategory])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacture] FOREIGN KEY([IdManufacture])
REFERENCES [dbo].[Manufacture] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacture]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductName] FOREIGN KEY([IdProductName])
REFERENCES [dbo].[ProductName] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductName]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Supplier] FOREIGN KEY([IdSupplier])
REFERENCES [dbo].[Supplier] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Supplier]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Units] FOREIGN KEY([IdUnits])
REFERENCES [dbo].[Units] ([IdUnit])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Units]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([IdUserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [Stepanyan_Georgy] SET  READ_WRITE 
GO
