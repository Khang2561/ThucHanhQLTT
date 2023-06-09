﻿USE [CINEMA]
GO
/****** Object:  Table [dbo].[HangSX]    Script Date: 5/30/2023 9:43:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangSX](
	[MaHangSX] [nvarchar](255) NULL,
	[TenHangSX] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NuocSX]    Script Date: 5/30/2023 9:43:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NuocSX](
	[MaNuocSX] [nvarchar](255) NULL,
	[TenNuocSX] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 5/30/2023 9:43:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[MaPhim] [nvarchar](255) NULL,
	[TenPhim] [nvarchar](255) NULL,
	[MaNuocSX] [float] NULL,
	[MaHangSX] [nvarchar](255) NULL,
	[DaoDien] [nvarchar](255) NULL,
	[MaTheLoai] [nvarchar](255) NULL,
	[NgayKhoiChieu] [nvarchar](255) NULL,
	[NgayKetThuc] [nvarchar](255) NULL,
	[DVChinh] [nvarchar](255) NULL,
	[ChiPhi] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 5/30/2023 9:43:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTheLoai] [nvarchar](255) NULL,
	[TenTheLoai] [nvarchar](255) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[HangSX] ([MaHangSX], [TenHangSX]) VALUES (N'OF11', N'Original Film')
INSERT [dbo].[HangSX] ([MaHangSX], [TenHangSX]) VALUES (N'WD12', N'Walt Disney Pictures')
INSERT [dbo].[HangSX] ([MaHangSX], [TenHangSX]) VALUES (N'AP13', N'Arunuchai Panupan')
INSERT [dbo].[HangSX] ([MaHangSX], [TenHangSX]) VALUES (N'CV14', N'Công ty VAA')
INSERT [dbo].[HangSX] ([MaHangSX], [TenHangSX]) VALUES (N'LH15', N'Lý Hải Production')
INSERT [dbo].[HangSX] ([MaHangSX], [TenHangSX]) VALUES (N'PQ16', N'ProductionQ')
INSERT [dbo].[HangSX] ([MaHangSX], [TenHangSX]) VALUES (N'CH17', N'Creative House')
INSERT [dbo].[HangSX] ([MaHangSX], [TenHangSX]) VALUES (N'DD18', N'Phim ảnh Đại Đồng')
INSERT [dbo].[HangSX] ([MaHangSX], [TenHangSX]) VALUES (N'DT19', N'Phim ảnh Điện Thông')
INSERT [dbo].[HangSX] ([MaHangSX], [TenHangSX]) VALUES (N'VC20', N'Vinod Chopra Films')
GO
INSERT [dbo].[NuocSX] ([MaNuocSX], [TenNuocSX]) VALUES (N'USA', N'Mỹ')
INSERT [dbo].[NuocSX] ([MaNuocSX], [TenNuocSX]) VALUES (N'TL', N'Thái Lan')
INSERT [dbo].[NuocSX] ([MaNuocSX], [TenNuocSX]) VALUES (N'VN', N'Việt Nam')
INSERT [dbo].[NuocSX] ([MaNuocSX], [TenNuocSX]) VALUES (N'HQ', N'Hàn Quốc')
INSERT [dbo].[NuocSX] ([MaNuocSX], [TenNuocSX]) VALUES (N'TQ', N' Trung Quốc')
INSERT [dbo].[NuocSX] ([MaNuocSX], [TenNuocSX]) VALUES (N'TQ', N'Trung Quốc')
INSERT [dbo].[NuocSX] ([MaNuocSX], [TenNuocSX]) VALUES (N'AD', N'Ấn Độ')
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MaNuocSX], [MaHangSX], [DaoDien], [MaTheLoai], [NgayKhoiChieu], [NgayKetThuc], [DVChinh], [ChiPhi]) VALUES (N'FF01', N'Fast and Furious 10', 1, N'OF11', N'Louis Leterrier', N'AC01', N'19/05/2023', N'19/06/2023', N'Vin Diesel', N'340 triệu USD')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MaNuocSX], [MaHangSX], [DaoDien], [MaTheLoai], [NgayKhoiChieu], [NgayKetThuc], [DVChinh], [ChiPhi]) VALUES (N'LM02', N'The Little Mermaid', 1, N'WD12', N'Rob Marshall', N'AV02', N'26/05/2023', N'26/07/2023', N'Halle Bailey', N'250 triệu USD')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MaNuocSX], [MaHangSX], [DaoDien], [MaTheLoai], [NgayKhoiChieu], [NgayKetThuc], [DVChinh], [ChiPhi]) VALUES (N'LD03', N'Love Destiny', 66, N'AP13', N'Pawat Panangkasri', N'HH03', N'19/10/2022', N'19/11/2022', N'Ranee Campen', N'200 triệu USD')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MaNuocSX], [MaHangSX], [DaoDien], [MaTheLoai], [NgayKhoiChieu], [NgayKetThuc], [DVChinh], [ChiPhi]) VALUES (N'CB04', N'Cô ba Sài Gòn', 84, N'CV14', N'Trần Bửu Lộc', N'RM04', N'14/10/2017', N'20/06/2018', N'Diễm My', N'60 tỷ đồng')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MaNuocSX], [MaHangSX], [DaoDien], [MaTheLoai], [NgayKhoiChieu], [NgayKetThuc], [DVChinh], [ChiPhi]) VALUES (N'LA05', N'Lật mặt 1', 84, N'LH15', N'Lý Hải', N'HD05', N'15/05/2015', N'18/07/2019', N'Trường Giang', N'70 tỷ đồng')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MaNuocSX], [MaHangSX], [DaoDien], [MaTheLoai], [NgayKhoiChieu], [NgayKetThuc], [DVChinh], [ChiPhi]) VALUES (N'MA06', N'Chuyện ma đô thị', 82, N'PQ16', N'Hong Won Ki', N'KD06', N'13/05/2022', N'13/08/2022', N'Lee MinHyuk', N'100 triệu USD')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MaNuocSX], [MaHangSX], [DaoDien], [MaTheLoai], [NgayKhoiChieu], [NgayKetThuc], [DVChinh], [ChiPhi]) VALUES (N'MG07', N'Người môi giới', 82, N'CH17', N'Kore-eda Hirokazu', N'TL07', N'14/11/2021', N'15/08/2022', N'Song Kang Ho', N'120 triệu USD')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MaNuocSX], [MaHangSX], [DaoDien], [MaTheLoai], [NgayKhoiChieu], [NgayKetThuc], [DVChinh], [ChiPhi]) VALUES (N'LN08', N'Lạc lối ở Nga', 86, N'DD18', N'Zheng Xu', N'TC08', N'14/05/2020', N'17/02/2021', N'Tử Tranh', N'90 triệu USD')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MaNuocSX], [MaHangSX], [DaoDien], [MaTheLoai], [NgayKhoiChieu], [NgayKetThuc], [DVChinh], [ChiPhi]) VALUES (N'HL09', N'Hôn lễ của em', 86, N'DT19', N'Tian Han', N'RM09', N'16/07/2021', N'16/09/2021', N'Hứa Quang Hán', N'130 triệu USD')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MaNuocSX], [MaHangSX], [DaoDien], [MaTheLoai], [NgayKhoiChieu], [NgayKetThuc], [DVChinh], [ChiPhi]) VALUES (N'TT10', N'Tru tiên', 86, N'DT19', N'Trình Tiểu Đồng', N'AC01', N'24/12/2019', N'25/12/2020', N'Tiêu Chiến', N'80 triệu USD')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MaNuocSX], [MaHangSX], [DaoDien], [MaTheLoai], [NgayKhoiChieu], [NgayKetThuc], [DVChinh], [ChiPhi]) VALUES (N'CN11', N'3 chàng ngốc', 91, N'VC20', N'Rajkumar Hirani', N'HH03', N'25/12/2009', N'21/12/2010', N'Aamir Khan', N'70 triệu USD')
GO
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'AC01', N'Hành động')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'AV02', N'Phiêu lưu')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'HH03', N'Hài hước')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'RM04', N'Lãng mạn')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'HD05', N'Hài hành động')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'KD06', N'Kinh dị')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL07', N'Tâm lý')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TC08', N'Tình cảm')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'RM09', N'Lãng mạn')
GO
