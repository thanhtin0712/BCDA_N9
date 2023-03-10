USE [master]
GO
/****** Object:  Database [DangNhap]    Script Date: 12/10/2022 4:03:54 PM ******/
CREATE DATABASE [DangNhap]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DangNhap', FILENAME = N'C:\Users\NGUYEN THANH TU\OneDrive\Documents\SQL Server Management Studio\DangNhap.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DangNhap_log', FILENAME = N'C:\Users\NGUYEN THANH TU\OneDrive\Documents\SQL Server Management Studio\DangNhap_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DangNhap] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DangNhap].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DangNhap] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DangNhap] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DangNhap] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DangNhap] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DangNhap] SET ARITHABORT OFF 
GO
ALTER DATABASE [DangNhap] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DangNhap] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DangNhap] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DangNhap] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DangNhap] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DangNhap] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DangNhap] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DangNhap] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DangNhap] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DangNhap] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DangNhap] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DangNhap] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DangNhap] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DangNhap] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DangNhap] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DangNhap] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DangNhap] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DangNhap] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DangNhap] SET  MULTI_USER 
GO
ALTER DATABASE [DangNhap] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DangNhap] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DangNhap] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DangNhap] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DangNhap] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DangNhap] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DangNhap] SET QUERY_STORE = OFF
GO
USE [DangNhap]
GO
/****** Object:  User [Kiranto]    Script Date: 12/10/2022 4:03:54 PM ******/
--CREATE USER [sa] FOR LOGIN [sa] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Hang_xe]    Script Date: 12/10/2022 4:03:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hang_xe](
	[Ma_Hang] [varchar](20) NOT NULL,
	[Ten_hang] [varchar](20) NULL,
	[Mo_ta] [varchar](20) NULL,
	[Trang_thai] [int] NULL,
 CONSTRAINT [PK_Hang_xe] PRIMARY KEY CLUSTERED 
(
	[Ma_Hang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai_xe]    Script Date: 12/10/2022 4:03:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai_xe](
	[Ma_Loai] [varchar](20) NOT NULL,
	[Ten_loai_xe] [varchar](20) NULL,
	[Mo_ta] [varchar](20) NULL,
	[Trang_thai] [int] NULL,
 CONSTRAINT [PK_Loai_xe] PRIMARY KEY CLUSTERED 
(
	[Ma_Loai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mau_xe]    Script Date: 12/10/2022 4:03:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mau_xe](
	[Ma_Mau] [varchar](20) NOT NULL,
	[Ten_mau] [varchar](20) NULL,
	[Trang_thai] [int] NULL,
 CONSTRAINT [PK_Mau_xe] PRIMARY KEY CLUSTERED 
(
	[Ma_Mau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhan_vienn]    Script Date: 12/10/2022 4:03:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhan_vienn](
	[Ma_NV] [varchar](20) NOT NULL,
	[Username] [varchar](20) NULL,
	[Pass] [varchar](20) NULL,
	[Ho_ten] [varchar](20) NULL,
	[Dia_chi] [varchar](20) NULL,
	[Loai_chuc_vu] [int] NOT NULL,
	[SDT] [varchar](20) NOT NULL,
	[Gmail] [varchar](20) NULL,
	[Ghi_chu] [varchar](40) NULL,
	[Trang_thai] [int] NOT NULL,
	[Ngay_nghi] [date] NULL,
 CONSTRAINT [PK_Nhan_vienn] PRIMARY KEY CLUSTERED 
(
	[Ma_NV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phan_quyen]    Script Date: 12/10/2022 4:03:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phan_quyen](
	[Loai_chuc_vu] [int] NOT NULL,
	[Ten_chuc_vu] [varchar](20) NULL,
 CONSTRAINT [PK_Phan_quyen] PRIMARY KEY CLUSTERED 
(
	[Loai_chuc_vu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Xe_may]    Script Date: 12/10/2022 4:03:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Xe_may](
	[Ma_Xe] [varchar](20) NOT NULL,
	[Ten_xe] [varchar](20) NOT NULL,
	[Gia] [float] NULL,
	[Ma_Loai] [varchar](20) NULL,
	[Ma_Mau] [varchar](20) NULL,
	[Ma_Hang] [varchar](20) NULL,
	[So_khung] [varchar](20) NULL,
	[Dung_tich] [varchar](20) NULL,
	[Ton_kho] [int] NULL,
	[Trang_thai] [int] NULL,
 CONSTRAINT [PK_Xe_may] PRIMARY KEY CLUSTERED 
(
	[Ma_Xe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Hang_xe] ([Ma_Hang], [Ten_hang], [Mo_ta], [Trang_thai]) VALUES (N'Agito', N'Winner', N'dgvsab', 1)
INSERT [dbo].[Hang_xe] ([Ma_Hang], [Ten_hang], [Mo_ta], [Trang_thai]) VALUES (N'Kabuto', N'Piaggo', N'asfsafvs', 1)
INSERT [dbo].[Hang_xe] ([Ma_Hang], [Ten_hang], [Mo_ta], [Trang_thai]) VALUES (N'Kuuga', N'Honda', N'asf', 1)
GO
INSERT [dbo].[Loai_xe] ([Ma_Loai], [Ten_loai_xe], [Mo_ta], [Trang_thai]) VALUES (N'Knight', N'Xe so', N'asdfa', 1)
INSERT [dbo].[Loai_xe] ([Ma_Loai], [Ten_loai_xe], [Mo_ta], [Trang_thai]) VALUES (N'Ouja', N'Xe con', N'asfa', 1)
INSERT [dbo].[Loai_xe] ([Ma_Loai], [Ten_loai_xe], [Mo_ta], [Trang_thai]) VALUES (N'Ryuki', N'Xe tay ga', N'safav', 1)
GO
INSERT [dbo].[Mau_xe] ([Ma_Mau], [Ten_mau], [Trang_thai]) VALUES (N'A356', N'hong', 1)
GO
INSERT [dbo].[Nhan_vienn] ([Ma_NV], [Username], [Pass], [Ho_ten], [Dia_chi], [SDT], [Ghi_chu], [Loai_chuc_vu], [Gmail], [Trang_thai]) VALUES (N'123qaz', N'khoa', N'123456', N'kim', N'1234wsx', 388393679, N'thi?u luong tháng 2', 2, N'kiranto@gmail.com', 1)
INSERT [dbo].[Nhan_vienn] ([Ma_NV], [Username], [Pass], [Ho_ten], [Dia_chi], [SDT], [Ghi_chu], [Loai_chuc_vu], [Gmail], [Trang_thai]) VALUES (N'3121410273', N'kiranto', N'123', N'Nguy?n Ðang Khoa', N'78 Phan Ðình Phùng', 388807901, N' ', 1, N'khoa910@gmail.com', 1)
GO
INSERT [dbo].[Phan_quyen] ([Loai_chuc_vu], [Ten_chuc_vu]) VALUES (1, N'Admin')
INSERT [dbo].[Phan_quyen] ([Loai_chuc_vu], [Ten_chuc_vu]) VALUES (2, N'Nhân viên')
GO
INSERT [dbo].[Xe_may] ([Ma_Xe], [Ten_xe], [Gia], [Ma_Loai], [Ma_Mau], [Ma_Hang], [So_khung], [Dung_tich], [Ton_kho], [Trang_thai]) VALUES (N'1234edc', N'Decade', 32000000, N'Knight', N'A356', N'Kuuga', N'afvav1', N'125cc', 45, 1)
GO
ALTER TABLE [dbo].[Nhan_vienn]  WITH CHECK ADD  CONSTRAINT [FK_Nhan_vienn_Phan_quyen] FOREIGN KEY([Loai_chuc_vu])
REFERENCES [dbo].[Phan_quyen] ([Loai_chuc_vu])
GO
ALTER TABLE [dbo].[Nhan_vienn] CHECK CONSTRAINT [FK_Nhan_vienn_Phan_quyen]
GO
ALTER TABLE [dbo].[Xe_may]  WITH CHECK ADD  CONSTRAINT [FK_Xe_may_Hang_xe] FOREIGN KEY([Ma_Hang])
REFERENCES [dbo].[Hang_xe] ([Ma_Hang])
GO
ALTER TABLE [dbo].[Xe_may] CHECK CONSTRAINT [FK_Xe_may_Hang_xe]
GO
ALTER TABLE [dbo].[Xe_may]  WITH CHECK ADD  CONSTRAINT [FK_Xe_may_Loai_xe1] FOREIGN KEY([Ma_Loai])
REFERENCES [dbo].[Loai_xe] ([Ma_Loai])
GO
ALTER TABLE [dbo].[Xe_may] CHECK CONSTRAINT [FK_Xe_may_Loai_xe1]
GO
ALTER TABLE [dbo].[Xe_may]  WITH CHECK ADD  CONSTRAINT [FK_Xe_may_Mau_xe] FOREIGN KEY([Ma_Mau])
REFERENCES [dbo].[Mau_xe] ([Ma_Mau])
GO
ALTER TABLE [dbo].[Xe_may] CHECK CONSTRAINT [FK_Xe_may_Mau_xe]
GO
USE [master]
GO
ALTER DATABASE [DangNhap] SET  READ_WRITE 
GO

SELECT * FROM Xe_may
drop table Xe_may

go
alter table Xe_may
alter column Ton_kho float;
--drop database DangNhap

drop table Nhan_vienn