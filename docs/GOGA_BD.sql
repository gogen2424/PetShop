USE [master]
GO
/****** Object:  Database [Stepanyan_Georgy]    Script Date: 17.09.2024 14:47:02 ******/
CREATE DATABASE [Stepanyan_Georgy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Stepanyan_Georgy', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Stepanyan_Georgy.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Stepanyan_Georgy_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Stepanyan_Georgy_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
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
/****** Object:  Table [dbo].[Category]    Script Date: 17.09.2024 14:47:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] NOT NULL,
	[Name] [nchar](10) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 17.09.2024 14:47:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Id] [int] NOT NULL,
	[Name] [nchar](20) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Indexes]    Script Date: 17.09.2024 14:47:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Indexes](
	[Id] [int] NOT NULL,
	[Name] [nchar](20) NULL,
 CONSTRAINT [PK_Indexes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacture]    Script Date: 17.09.2024 14:47:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacture](
	[Id] [int] NOT NULL,
	[Name] [nchar](20) NULL,
 CONSTRAINT [PK_Manufacture] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 17.09.2024 14:47:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] NOT NULL,
	[IdClient] [int] NULL,
	[IdOrderStatus] [int] NULL,
	[IdOrderPickupPoint] [int] NULL,
	[OrderCreateDate] [nchar](20) NULL,
	[OrderDeliveryDate] [nchar](20) NULL,
	[Code] [nchar](20) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 17.09.2024 14:47:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[Id] [int] NOT NULL,
	[OrderID] [int] NULL,
	[IdProduct] [int] NULL,
	[Count] [nchar](20) NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 17.09.2024 14:47:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[Id] [int] NOT NULL,
	[Name] [nchar](20) NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickPoint]    Script Date: 17.09.2024 14:47:02 ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 17.09.2024 14:47:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] NOT NULL,
	[IdProductName] [int] NULL,
	[IdManufacture] [int] NULL,
	[IdSupplier] [int] NULL,
	[ProductArticleNumber] [nchar](20) NULL,
	[ProductCost] [nchar](20) NULL,
	[ProductDiscountAmount] [nchar](20) NULL,
	[DiscountNow] [nchar](20) NULL,
	[ProductQuantityInStock] [nchar](20) NULL,
	[ProductDesription] [nchar](20) NULL,
	[PhotoName] [nchar](20) NULL,
	[ProductPhoto] [nchar](20) NULL,
	[IdUnits] [int] NULL,
	[IdCategory] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductName]    Script Date: 17.09.2024 14:47:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductName](
	[Id] [int] NOT NULL,
	[Name] [nchar](20) NULL,
 CONSTRAINT [PK_ProductName] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 17.09.2024 14:47:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] NOT NULL,
	[RoleName] [nchar](20) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 17.09.2024 14:47:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](20) NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 17.09.2024 14:47:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Id] [int] NOT NULL,
	[Name] [nchar](20) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Units]    Script Date: 17.09.2024 14:47:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Units](
	[IdUnit] [int] NOT NULL,
	[NameOfUnits] [varchar](50) NULL,
 CONSTRAINT [PK_Units] PRIMARY KEY CLUSTERED 
(
	[IdUnit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 17.09.2024 14:47:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] NOT NULL,
	[IdUserRole] [int] NULL,
	[UserSurname] [nchar](20) NULL,
	[UserName] [nchar](20) NULL,
	[UserPatronymic] [nchar](20) NULL,
	[UserLogin] [nchar](20) NULL,
	[UserPassword] [nchar](20) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([IdOrderStatus])
REFERENCES [dbo].[OrderStatus] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PickPoint] FOREIGN KEY([OrderID])
REFERENCES [dbo].[PickPoint] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PickPoint]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Order]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Product]
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
