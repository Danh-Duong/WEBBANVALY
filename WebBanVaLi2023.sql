CREATE DATABASE [QLBanVaLi]
go
USE [QLBanVaLi]
GO
/****** Object:  Table [dbo].[tAnhChiTietSP]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tAnhChiTietSP](
	[MaChiTietSP] [char](25) NOT NULL,
	[TenFileAnh] [char](100) NOT NULL,
	[ViTri] [smallint] NULL,
 CONSTRAINT [PK_tAnhChiTietSP] PRIMARY KEY CLUSTERED 
(
	[MaChiTietSP] ASC,
	[TenFileAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tAnhSP]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tAnhSP](
	[MaSP] [char](25) NOT NULL,
	[TenFileAnh] [char](100) NOT NULL,
	[ViTri] [smallint] NULL,
 CONSTRAINT [PK_tAnhSP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[TenFileAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tChatLieu]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChatLieu](
	[MaChatLieu] [char](25) NOT NULL,
	[ChatLieu] [nvarchar](150) NULL,
 CONSTRAINT [PK_tChatLieu] PRIMARY KEY CLUSTERED 
(
	[MaChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tChiTietHDB]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChiTietHDB](
	[MaHoaDon] INT NOT NULL,
	[MaChiTietSP] [char](25) NOT NULL,
	[SoLuongBan] [int] NULL,
	[DonGiaBan] [money] NULL,
	[GiamGia] [float] NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tChiTietHDB] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[MaChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tChiTietSanPham]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChiTietSanPham](
	[MaChiTietSP] [char](25) NOT NULL,
	[MaSP] [char](25) NULL,
	[MaKichThuoc] [char](25) NULL,
	[MaMauSac] [char](25) NULL,
	[AnhDaiDien] [char](100) NULL,
	[Video] [char](100) NULL,
	[DonGiaBan] [float] NULL,
	[GiamGia] [float] NULL,
	[SLTon] [int] NULL,
 CONSTRAINT [PK_tChiTietSanPham] PRIMARY KEY CLUSTERED 
(
	[MaChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tDanhMucSP]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tDanhMucSP](
	[MaSP] [char](25) NOT NULL,
	[TenSP] [nvarchar](150) NULL,
	[MaChatLieu] [char](25) NULL,
	[NganLapTop] [nvarchar](55) NULL,
	[Model] [nvarchar](55) NULL,
	[CanNang] [float] NULL,
	[DoNoi] [float] NULL,
	[MaHangSX] [char](25) NULL,
	[MaNuocSX] [char](25) NULL,
	[MaDacTinh] [char](25) NULL,
	[Website] [char](155) NULL,
	[ThoiGianBaoHanh] [float] NULL,
	[GioiThieuSP] [nvarchar](255) NULL,
	[ChietKhau] [float] NULL,
	[MaLoai] [char](25) NULL,
	[MaDT] [char](25) NULL,
	[AnhDaiDien] [char](100) NULL,
	[GiaNhoNhat] [money] NULL,
	[GiaLonNhat] [money] NULL,
 CONSTRAINT [PK_tDanhMucSP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tHangSX]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tHangSX](
	[MaHangSX] [char](25) NOT NULL,
	[HangSX] [nvarchar](100) NULL,
	[MaNuocThuongHieu] [char](25) NULL,
 CONSTRAINT [PK_tHangSX] PRIMARY KEY CLUSTERED 
(
	[MaHangSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tHoaDonBan]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tHoaDonBan](
	[MaHoaDon] INT IDENTITY(1, 1) NOT NULL,
	[NgayHoaDon] [datetime] NULL,
	[TongTienHD] [money] NULL,
	[GiamGiaHD] [float] NULL,
	[PhuongThucThanhToan] NVARCHAR(10) NULL,
	[MaSoThue] [char](100) NULL,
	[ThongTinThue] [nvarchar](250) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tHoaDonBan] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tKhachHang]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tKhachHang](
	[MaKhanhHang] [char](25) NOT NULL,
	[username] [char](100) NULL,
	[TenKhachHang] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[SoDienThoai] [char](15) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[LoaiKhachHang] [tinyint] NULL,
	[AnhDaiDien] [char](100) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhanhHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tKichThuoc]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tKichThuoc](
	[MaKichThuoc] [char](25) NOT NULL,
	[KichThuoc] [nchar](150) NULL,
 CONSTRAINT [PK_tKichThuoc] PRIMARY KEY CLUSTERED 
(
	[MaKichThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tLoaiDT]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tLoaiDT](
	[MaDT] [char](25) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tLoaiDT] PRIMARY KEY CLUSTERED 
(
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tLoaiSP]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tLoaiSP](
	[MaLoai] [char](25) NOT NULL,
	[Loai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tLoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tMauSac]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tMauSac](
	[MaMauSac] [char](25) NOT NULL,
	[TenMauSac] [nvarchar](100) NULL,
 CONSTRAINT [PK_tMauSac] PRIMARY KEY CLUSTERED 
(
	[MaMauSac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tNhanVien]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tNhanVien](
	[MaNhanVien] [char](25) NOT NULL,
	[username] [char](100) NULL,
	[TenNhanVien] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[SoDienThoai1] [char](15) NULL,
	[SoDienThoai2] [char](15) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[ChucVu] [nvarchar](100) NULL,
	[AnhDaiDien] [char](100) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tQuocGia]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tQuocGia](
	[MaNuoc] [char](25) NOT NULL,
	[TenNuoc] [nvarchar](100) NULL,
 CONSTRAINT [PK_tQuocGia] PRIMARY KEY CLUSTERED 
(
	[MaNuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tUser]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tUser](
	[username] [char](100) NOT NULL,
	[password] [char](256) NOT NULL,
	[LoaiUser] [tinyint] NULL,
 CONSTRAINT [PK_tUser] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-135.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-156.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-170.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-21.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-289.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-297.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-318.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-450.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-471.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-53.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-640.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-678.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-684.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-738.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-819.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-827.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-882.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-9.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-953.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-977.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-180.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-207.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-282.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-347.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-38.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-384.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-396.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-435.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-477.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-5.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-529.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-589.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-659.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-717.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-742.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-803.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-842.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-85.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-910.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-941.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'baroru3do                ', N'balo-roncato-runaway-03-do-1.jpg                                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'baroru3do                ', N'balo-roncato-runaway-03-do-172.jpg                                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'baroru3do                ', N'balo-roncato-runaway-03-do-179.jpg                                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'baroru3do                ', N'balo-roncato-runaway-03-do-264.jpg                                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'baroru3do                ', N'balo-roncato-runaway-03-do-347.jpg                                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'baroru3do                ', N'balo-roncato-runaway-03-do-416.jpg                                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'baroru3do                ', N'balo-roncato-runaway-03-do-51.jpg                                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'baroru3do                ', N'balo-roncato-runaway-03-do-624.jpg                                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'baroru3do                ', N'balo-roncato-runaway-03-do-663.jpg                                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'baroru3do                ', N'balo-roncato-runaway-03-do-673.jpg                                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'baroru3do                ', N'balo-roncato-runaway-03-do-79.jpg                                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'baroru3do                ', N'balo-roncato-runaway-03-do-819.jpg                                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'barorude                 ', N'balo-roncato-runway-den-144.jpg                                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'barorude                 ', N'balo-roncato-runway-den-295.jpg                                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'barorude                 ', N'balo-roncato-runway-den-297.jpg                                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'barorude                 ', N'balo-roncato-runway-den-311.jpg                                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'barorude                 ', N'balo-roncato-runway-den-354.jpg                                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'barorude                 ', N'balo-roncato-runway-den-501.jpg                                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'barorude                 ', N'balo-roncato-runway-den-513.jpg                                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'barorude                 ', N'balo-roncato-runway-den-529.jpg                                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'barorude                 ', N'balo-roncato-runway-den-634.jpg                                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'barorude                 ', N'balo-roncato-runway-den-751.jpg                                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'baroruho                 ', N'balo-roncato-runaway-hong-138.jpg                                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'baroruho                 ', N'balo-roncato-runaway-hong-191.jpg                                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'baroruho                 ', N'balo-roncato-runaway-hong-343.jpg                                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'baroruho                 ', N'balo-roncato-runaway-hong-393.jpg                                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'baroruho                 ', N'balo-roncato-runaway-hong-594.jpg                                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'baroruho                 ', N'balo-roncato-runaway-hong-623.jpg                                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'baroruho                 ', N'balo-roncato-runaway-hong-665.jpg                                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'baroruho                 ', N'balo-roncato-runaway-hong-715.jpg                                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'baroruho                 ', N'balo-roncato-runaway-hong-767.jpg                                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'barorutr                 ', N'balo-roncato-runaway-trang-111.jpg                                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'barorutr                 ', N'balo-roncato-runaway-trang-261.jpg                                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'barorutr                 ', N'balo-roncato-runaway-trang-434.jpg                                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'barorutr                 ', N'balo-roncato-runaway-trang-472.jpg                                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'barorutr                 ', N'balo-roncato-runaway-trang-48.jpg                                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'barorutr                 ', N'balo-roncato-runaway-trang-496.jpg                                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'barorutr                 ', N'balo-roncato-runaway-trang-550.jpg                                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'barorutr                 ', N'balo-roncato-runaway-trang-756.jpg                                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'barorutr                 ', N'balo-roncato-runaway-trang-810.jpg                                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'barorutr                 ', N'balo-roncato-runaway-trang-925.jpg                                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'boduxaphlencl            ', N'bo-dung-xa-phong-lewis-n-clark-200.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'boduxaphlencl            ', N'bo-dung-xa-phong-lewis-n-clark-970.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'boduxaphlencl            ', N'bo-dung-xa-phong-lewis-n-clark-979.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'botududolencl            ', N'bo-3-tui-dung-do-lewis-n-clark-10.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'botududolencl            ', N'bo-3-tui-dung-do-lewis-n-clark-148.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'botududolencl            ', N'bo-3-tui-dung-do-lewis-n-clark-635.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'botududolencl            ', N'bo-3-tui-dung-do-lewis-n-clark-987.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'cadanagede               ', N'cap-da-nam-gentle-den-108.jpg                                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'cadanagede               ', N'cap-da-nam-gentle-den-295.jpg                                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'cadanagede               ', N'cap-da-nam-gentle-den-332.jpg                                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'cadanagede               ', N'cap-da-nam-gentle-den-516.jpg                                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'cadanagede               ', N'cap-da-nam-gentle-den-578.jpg                                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'cadanagede               ', N'cap-da-nam-gentle-den-730.jpg                                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'cadanagede               ', N'cap-da-nam-gentle-den-924.jpg                                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'cadanagena               ', N'cap-da-nam-gentle-nau-392.jpg                                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'cadanagena               ', N'cap-da-nam-gentle-nau-433.jpg                                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'cadanagena               ', N'cap-da-nam-gentle-nau-622.jpg                                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'cadanagena               ', N'cap-da-nam-gentle-nau-641.jpg                                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'cadanagena               ', N'cap-da-nam-gentle-nau-713.jpg                                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'cadanagena               ', N'cap-da-nam-gentle-nau-810.jpg                                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'cadanagena               ', N'cap-da-nam-gentle-nau-907.jpg                                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'cadanagenadabo           ', N'cap-da-nam-gentle-nau-da-bo-192.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'cadanagenadabo           ', N'cap-da-nam-gentle-nau-da-bo-218.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'cadanagenadabo           ', N'cap-da-nam-gentle-nau-da-bo-324.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'cadanagenadabo           ', N'cap-da-nam-gentle-nau-da-bo-368.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'cadanagenadabo           ', N'cap-da-nam-gentle-nau-da-bo-633.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'cadanagenadabo           ', N'cap-da-nam-gentle-nau-da-bo-928.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'cadanagenadabo           ', N'cap-da-nam-gentle-nau-da-bo-970.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'caditunhgolencl          ', N'can-dien-tu-nho-gon-lewis-n-clark-109.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'caditunhgolencl          ', N'can-dien-tu-nho-gon-lewis-n-clark-757.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-197.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-282.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-305.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-306.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-382.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-390.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-408.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-414.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-464-1455597014.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-464.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-48.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-540.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-570.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-736.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-738.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-816.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-829.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-83.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-871.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-996.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'dadavakhtsde             ', N'day-dai-vali-khoa-tsa-den-50.jpg                                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'dadavakhtslencl          ', N'day-dai-vali-khoa-tsa-lewis-n-clark-813.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'gicaditocalencl          ', N'giac-cam-dien-toan-cau-lewis-n-clark-437.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'gicaditocalencl          ', N'giac-cam-dien-toan-cau-lewis-n-clark-460.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'gicaditocalencl          ', N'giac-cam-dien-toan-cau-lewis-n-clark-709.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'gicaditocalencl          ', N'giac-cam-dien-toan-cau-lewis-n-clark-756.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'gokecogelamacode         ', N'goi-ke-co-gel-lam-mat-co-den-lewis-n-clark-226.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'gokecogelamacode         ', N'goi-ke-co-gel-lam-mat-co-den-lewis-n-clark-381.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'gokecogelamacode         ', N'goi-ke-co-gel-lam-mat-co-den-lewis-n-clark-499.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'gokecogelamacode         ', N'goi-ke-co-gel-lam-mat-co-den-lewis-n-clark-834.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'gokecohicalencl          ', N'goi-ke-co-hinh-ca-lewis-n-clark-624.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'gokecokikolencl          ', N'goi-ke-co-king-kong-lewis-n-clark-799.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'michmadelencl            ', N'mieng-che-mat-den-lewis-n-clark-504.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'michmadelencl            ', N'mieng-che-mat-den-lewis-n-clark-686.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'michmadolencl            ', N'mieng-che-mat-do-lewis-n-clark-444.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'michmadolencl            ', N'mieng-che-mat-do-lewis-n-clark-547.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'michmaxanalencl          ', N'mieng-che-mat-xanh-navy-lewis-n-clark-112.jpg                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'michmaxanalencl          ', N'mieng-che-mat-xanh-navy-lewis-n-clark-615.jpg                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tubatudupavemaba         ', N'tui-bao-tu-dung-passport-ve-may-bay-den-lewis-n-clark-847.jpg                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tubatudupavemaba         ', N'tui-bao-tu-dung-passport-ve-may-bay-den-lewis-n-clark-957.jpg                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tubatudupavemaba         ', N'tui-bao-tu-dung-passport-ve-may-bay-xanh-lewis-n-clark-261.jpg                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tubatudupavemaba         ', N'tui-bao-tu-dung-passport-ve-may-bay-xanh-lewis-n-clark-68.jpg                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tubatudupavemaba         ', N'tui-bao-tu-dung-passport-ve-may-bay-xanh-lewis-n-clark-833.jpg                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tudecodupavemaba         ', N'tui-deo-co-dung-passport-ve-may-bay-den-lewis-n-clark-237.jpg                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tudecodupavemaba         ', N'tui-deo-co-dung-passport-ve-may-bay-den-lewis-n-clark-70.jpg                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tudecodupavemaba         ', N'tui-deo-co-dung-passport-ve-may-bay-den-lewis-n-clark-798.jpg                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tudecodupavemaba         ', N'tui-deo-co-dung-passport-ve-may-bay-xanh-lewis-n-clark-100.jpg                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tudecodupavemaba         ', N'tui-deo-co-dung-passport-ve-may-bay-xanh-lewis-n-clark-287.jpg                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tudecodupavemaba         ', N'tui-deo-co-dung-passport-ve-may-bay-xanh-lewis-n-clark-498.jpg                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tudecodupavemaba         ', N'tui-deo-co-dung-passport-ve-may-bay-xanh-lewis-n-clark-588.jpg                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tudodudolencl            ', N'tui-doi-dung-do-lewis-n-clark-247.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tudodudolencl            ', N'tui-doi-dung-do-lewis-n-clark-772.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tudodudolencl            ', N'tui-doi-dung-do-lewis-n-clark-783.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tudodudolencl            ', N'tui-doi-dung-do-lewis-n-clark-796.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tududithchthnule         ', N'tui-dung-dien-thoai-chong-tham-nuoc-lewis-n-clark-232.jpg                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tududosilodelen          ', N'tui-dung-do-size-lon-den-lewis-n-clark-236.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tududosilodelen          ', N'tui-dung-do-size-lon-den-lewis-n-clark-531.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tududosilodelen          ', N'tui-dung-do-size-lon-den-lewis-n-clark-730.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tududosilodelen          ', N'tui-dung-do-size-lon-den-lewis-n-clark-998.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tududosiloxalen          ', N'tui-dung-do-size-lon-xanh-lewis-n-clark-695.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tududosiloxalen          ', N'tui-dung-do-size-lon-xanh-lewis-n-clark-826.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tududosiloxalen          ', N'tui-dung-do-size-lon-xanh-lewis-n-clark-855.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tududosiloxalen          ', N'tui-dung-do-size-lon-xanh-lewis-n-clark-930.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tududosinhdelen          ', N'tui-dung-do-size-nho-den-lewis-n-clark-150.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tududosinhdelen          ', N'tui-dung-do-size-nho-den-lewis-n-clark-303.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tududosinhdelen          ', N'tui-dung-do-size-nho-den-lewis-n-clark-675.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tududosinhdelen          ', N'tui-dung-do-size-nho-den-lewis-n-clark-72.jpg                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tududosinhdelen          ', N'tui-dung-do-size-nho-den-lewis-n-clark-957.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tudumyphnalencl          ', N'tui-dung-my-pham-nau-lewis-n-clark-120.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tudumyphnalencl          ', N'tui-dung-my-pham-nau-lewis-n-clark-168.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tudumyphnalencl          ', N'tui-dung-my-pham-nau-lewis-n-clark-340.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tudumyphnalencl          ', N'tui-dung-my-pham-nau-lewis-n-clark-410.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tudumyphnalencl          ', N'tui-dung-my-pham-nau-lewis-n-clark-575.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tudumyphnalencl          ', N'tui-dung-my-pham-nau-lewis-n-clark-948.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tudumyphxalencl          ', N'tui-dung-my-pham-xam-lewis-n-clark-151.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tudumyphxalencl          ', N'tui-dung-my-pham-xam-lewis-n-clark-159.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tudumyphxalencl          ', N'tui-dung-my-pham-xam-lewis-n-clark-476.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tudumyphxalencl          ', N'tui-dung-my-pham-xam-lewis-n-clark-852.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tudumyphxalencl          ', N'tui-dung-my-pham-xam-lewis-n-clark-906.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tudumyphxalencl          ', N'tui-dung-my-pham-xam-lewis-n-clark-945.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-10.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-134.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-141.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-26.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-328.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-355.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-39.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-421.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-463.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-48.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-49.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-619.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-626.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-699.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-722.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-727.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-75.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-818.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-891.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-988.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-127.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-131.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-154.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-165.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-198.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-326.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-520.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-541.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-554.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-584.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-591.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-610.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-665.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-716.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-745.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-757.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-769.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-784.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-868.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-99.jpg                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukerimavide             ', N'tui-keo-ricardo-mar-vista-2-0-den-953-1476159762.jpg                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukerimavixadu           ', N'tui-keo-ricardo-mar-vista-2-0-xanh-duong-889.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tukerimavixadu           ', N'tui-keo-ricardo-mar-vista-2-0-xanh-duong-937.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-27.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-275.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-290.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-302.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-41.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-438.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-481.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-511.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-517.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-561.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-574.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-692.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-701.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-78.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-8.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-844.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-962.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-991.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turobopotana             ', N'tui-roncato-borsello-porta-tablet-nau-231.jpg                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turobopotana             ', N'tui-roncato-borsello-porta-tablet-nau-316.jpg                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turobopotana             ', N'tui-roncato-borsello-porta-tablet-nau-387.jpg                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turobopotana             ', N'tui-roncato-borsello-porta-tablet-nau-469.jpg                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turobopotana             ', N'tui-roncato-borsello-porta-tablet-nau-476.jpg                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turobopotana             ', N'tui-roncato-borsello-porta-tablet-nau-544.jpg                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turobopotana             ', N'tui-roncato-borsello-porta-tablet-nau-764.jpg                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turobopotana             ', N'tui-roncato-borsello-porta-tablet-nau-767.jpg                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turobopotana             ', N'tui-roncato-borsello-porta-tablet-nau-881.jpg                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turobopotana             ', N'tui-roncato-borsello-porta-tablet-nau-905.jpg                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-102.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-120.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-263.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-265.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-488.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-54.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-561.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-597.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-633.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-702.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-774.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-781.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-977.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-999.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-192.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-200.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-263.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-269.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-367.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-388.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-498.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-55.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-564.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-597.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-632.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-698.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-752.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-852.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-930.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-20.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-307.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-321.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-327.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-417.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-480.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-486.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-509.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-515.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-517.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-627.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-661.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-664.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-705.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-730.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-765.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-785.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-806.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-881.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-992.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-108.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-135-1466050239.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-135.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-162.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-192.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-392.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-394.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-443.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-458-1466050239.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-458.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-463.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-489.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-49.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-555.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-612.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-631.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-692.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-750.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-778.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-967.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-122.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-171.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-264.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-282.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-433.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-446.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-558.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-581.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-609.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-620.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-657.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-666.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-667.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-685.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-709.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-782.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-821.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-876.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-105.jpg                                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-112.jpg                                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-120.jpg                                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-232.jpg                                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-403.jpg                                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-418.jpg                                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-453.jpg                                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-470.jpg                                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-486.jpg                                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-528.jpg                                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-591.jpg                                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-622.jpg                                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-655.jpg                                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-665.jpg                                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-713.jpg                                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-717.jpg                                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-802.jpg                                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-876.jpg                                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-935.jpg                                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-941.jpg                                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tutrdotrtodelen          ', N'tui-treo-do-trong-toilet-den-lewis-n-clark-123.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tutrdotrtodelen          ', N'tui-treo-do-trong-toilet-den-lewis-n-clark-841.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tuxadechbalencl          ', N'tui-xach-deo-cheo-balo-lewis-n-clark-41.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tuxadechbalencl          ', N'tui-xach-deo-cheo-balo-lewis-n-clark-558.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'tuxadechbalencl          ', N'tui-xach-deo-cheo-balo-lewis-n-clark-894.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-16.jpg                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-203.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-216.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-224.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-330.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-439.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-49.jpg                                                       ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-494.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-500.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-503.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-614.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-747.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-755.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-913.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-922.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-925.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-932.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-945.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-982.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-984.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-10.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-15.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-170.jpg                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-181.jpg                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-289.jpg                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-30.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-300.jpg                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-388.jpg                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-419.jpg                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-448.jpg                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-571.jpg                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-575.jpg                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-581.jpg                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-588.jpg                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-601.jpg                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-64.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-739.jpg                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-779.jpg                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-849.jpg                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-895.jpg                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-192.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-287.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-296.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-31.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-336.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-389.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-392.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-414.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-555.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-625.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-677.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-765.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-797.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-821.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-876.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-90.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-92.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-922.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-934.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-964.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-105.jpg                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-12.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-152.jpg                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-169.jpg                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-289.jpg                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-305.jpg                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-33.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-332.jpg                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-427.jpg                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-451.jpg                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-491.jpg                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-50.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-582.jpg                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-632.jpg                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-732.jpg                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-737.jpg                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-762.jpg                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-773.jpg                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-953.jpg                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-991.jpg                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-16.jpg                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-161.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-183.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-187.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-229.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-242.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-25.jpg                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-258.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-323.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-347.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-446.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-461.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-5.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-584.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-596.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-645.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-752.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-788.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-924.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-934.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-128.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-145.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-220.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-25.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-343.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-401.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-447.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-456.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-471.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-473.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-491.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-574.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-696.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-778.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-8.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-852.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-913.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-980.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-984.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-986.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-115.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-163.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-178.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-201.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-21.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-319.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-33.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-334.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-366.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-414.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-447.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-589.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-671.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-69.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-750.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-753.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-765.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-826.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-885.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-922.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-929.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-976.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-981.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-138.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-143.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-163.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-170.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-195.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-22.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-297.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-340.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-391.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-409.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-435.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-469.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-484.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-534.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-58.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-69.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-725.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-768.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-825.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-844.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-856.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-882.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-938.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimavide6ta            ', N'vali-ricardo-mar-vista-2-0-den-6-tac-143.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimavide6ta            ', N'vali-ricardo-mar-vista-2-0-den-6-tac-440.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimavide6ta            ', N'vali-ricardo-mar-vista-2-0-den-6-tac-518.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimavide6ta            ', N'vali-ricardo-mar-vista-2-0-den-6-tac-73.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimavide7ta            ', N'vali-ricardo-mar-vista-2-0-den-7-tac-592.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimavide7ta            ', N'vali-ricardo-mar-vista-2-0-den-7-tac-631.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimavide7ta            ', N'vali-ricardo-mar-vista-2-0-den-7-tac-751.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimavide7ta            ', N'vali-ricardo-mar-vista-2-0-den-7-tac-844.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimavixadu5            ', N'vali-ricardo-mar-vista-2-0-xanh-duong-5-tac-388.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimavixadu5            ', N'vali-ricardo-mar-vista-2-0-xanh-duong-5-tac-573.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimavixadu5            ', N'vali-ricardo-mar-vista-2-0-xanh-duong-5-tac-625.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimavixadu7            ', N'vali-ricardo-mar-vista-2-0-xanh-duong-7-tac-209.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimavixadu7            ', N'vali-ricardo-mar-vista-2-0-xanh-duong-7-tac-419.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimavixadu7            ', N'vali-ricardo-mar-vista-2-0-xanh-duong-7-tac-581.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varimavixadu7            ', N'vali-ricardo-mar-vista-2-0-xanh-duong-7-tac-611.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold1404.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold1652.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold167.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold2682.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold4442.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold514.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold5167.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold558.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold5662.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold6616.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold6804.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold6888.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold7363.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold7796.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold8332.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold8866.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold8888.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold9187.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold983.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-119.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-145.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-192.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-194.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-210.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-226.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-29.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-331.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-348.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-36.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-371.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-440.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-479.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-494.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-569.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-577.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-615.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-643.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-716.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-772.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-256.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-258.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-315.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-345.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-366.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-405.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-460.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-522.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-543.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-563.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-596.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-63.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-664.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-686.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-877.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-883.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-912.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-914.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-970.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-981.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-162.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-217.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-252.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-386.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-417.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-43.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-444.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-471.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-514.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-537.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-56.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-659.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-706.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-725.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-754.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-789.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-840.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-842.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-874.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-897.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-166.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-324.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-371.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-387.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-41.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-488.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-600.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-727.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-78.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-80.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-825.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-827-1473693199.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-835.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-848.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-884.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-902.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-904.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-971.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-263.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-274.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-385-1468413241.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-385.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-407.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-43.jpg                                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-460.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-477.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-515.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-529.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-536.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-583.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-622.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-760.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-815.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-867.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-891.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-903.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-950.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-98.jpg                                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-118.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-13.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-29.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-32.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-323.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-347-1467270947.jpg                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-347.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-399.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-470.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-488.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-573.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-6.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-634.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-648.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-834.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-850.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-909.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-936.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-941.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-971.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-100.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-132.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-242.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-339.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-343.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-386.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-394.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-432.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-445.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-518.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-537.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-612.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-642.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-681.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-699.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-787.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-80.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-867.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-891.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-911.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-10.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-14.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-164.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-363.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-392.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-401.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-486.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-521.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-53.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-625.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-636.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-673.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-708.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-734.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-764.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-847.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-888.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-109.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-225.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-267.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-328.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-340.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-380.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-455.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-539.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-611.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-612.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-625.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-637.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-693.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-700.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-772.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-828.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-95.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-974.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac1402.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac1424.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac1620.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac1756.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac177.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac2071.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac3414.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac4763.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac5054.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac590.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac5986.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac7415.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac7553.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac780.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac800.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac9630.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-109.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-246.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-249.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-336.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-400.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-467.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-503.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-506.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-540.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-552.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-617.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-633.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-688.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-70.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-777.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-779.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-895.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-989.jpg                                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-139.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-145.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-19.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-282.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-33.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-36.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-40.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-452.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-512.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-570.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-597.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-642.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-726.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-765.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-769.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-832.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-91.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-920.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-947.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-953.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-101.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-120.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-142.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-171.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-228.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-246.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-386.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-396.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-418.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-600.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-631-1451900346.jpg                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-631.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-664.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-671.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-706.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-807.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-873.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-925.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-983.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-260.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-266.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-299.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-309.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-314.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-355.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-364.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-393.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-534.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-641.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-650.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-673.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-681.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-690.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-742.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-772.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-865.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-89.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-895.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-972.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-101.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-124.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-33.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-346.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-379.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-421.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-432.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-45.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-458.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-492.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-631.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-645.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-672.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-697.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-865.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-866.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-88.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-89.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-911.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-980.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-1000.jpg                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-195.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-245.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-247.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-280.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-295.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-343.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-449.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-467.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-528.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-557.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-636.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-68.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-685.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-703.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-810.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-84.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-840.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-87.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-966.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-237.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-240.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-314.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-355.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-425.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-551.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-560.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-595.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-657.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-668.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-669.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-702.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-760.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-773.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-8.jpg                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-857.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-928.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-952.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-953.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-958.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl1811.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl1972.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl2388.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl3410.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl397.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl406.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl4106.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl4776.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl5028.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl5394.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl6083.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl669.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl6752.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl7197.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl7592.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl8066.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl8129.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl8908.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl9391.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl9620.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl115.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl1302.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl1526.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl2422.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl248.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl3024.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl3624.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl3719.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl4818.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl5094.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl5314.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl6444.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl7793.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl7860.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl7961.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl8740.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl8808.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl9511.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl9673.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl9685.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl1130.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl1541.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl2447.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl3612.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl3695.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl3805.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl4614.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl484.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl4959.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl5726.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl5823.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl7114.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl7253.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl8099.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl8612.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl8630.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl8852.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl8939.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl9032.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl9109.jpg                                                     ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-140.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-164.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-229.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-266.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-3.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-311.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-360.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-374.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-391.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-404.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-418.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-425.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-460.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-641.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-660.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-665.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-700.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-716.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-799.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-8.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-136.jpg                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-172.jpg                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-177.jpg                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-240.jpg                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-266.jpg                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-380.jpg                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-447.jpg                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-530.jpg                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-535.jpg                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-573.jpg                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-64.jpg                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-643.jpg                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-738.jpg                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-748.jpg                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-759.jpg                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-881.jpg                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-145.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-157.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-240.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-253.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-270.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-295.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-301.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-367.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-424.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-528.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-541.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-566.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-607.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-669.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-763.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-794.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-844.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-863.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-885.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-897.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-0.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-100.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-13.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-18.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-20.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-22.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-246.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-275.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-291.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-428.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-449.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-551.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-714.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-734.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-745.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-77.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-915.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-921.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-973.jpg                                                         ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-215.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-233.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-239.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-442.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-472.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-493.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-507.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-508.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-59.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-654.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-678.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-780.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-828.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-852.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-90.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-911.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-951.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-973.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-982.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-114.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-144.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-210.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-217.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-257.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-261.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-351.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-376.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-409.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-421.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-535.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-6.jpg                                                          ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-629.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-647.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-737.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-827.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-835.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-867.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-927.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-989.jpg                                                        ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue1631.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue1713.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue3200.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue3312.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue3582.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue3799.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue4683.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue5042.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue5205.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue5235.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue6347.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue6804.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue8133.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue8343.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue9458.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux1201.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux173.jpg                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux1856.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux2749.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux3358.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux4712.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux5053.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux5313.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux6103.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux63.jpg                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux6836.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux7392.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux8336.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux8673.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux8953.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue1649.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue2282.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue2845.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue3656.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue3951.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue4139.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue4550.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue472.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue4960.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue5938.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue6923.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue7141.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue7249.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue8881.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue9615.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux3911.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux4063.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux4530.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux4998.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux6990.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux7166.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux7515.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux7518.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux7694.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux7805.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux8158.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux8569.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux8982.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux9800.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux9833.jpg                                              ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue1719.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue2782.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue2839.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue3325.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue5186.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue5586.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue5908.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue607.jpg                                                   ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue6242.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue6679.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue6723.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue6943.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue6950.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue7679.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue9615.jpg                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni5taxa              ', N'vali-skyway-nimbus-5-tac-xam-24.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni5taxa              ', N'vali-skyway-nimbus-5-tac-xam-257.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni5taxa              ', N'vali-skyway-nimbus-5-tac-xam-291.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni5taxa              ', N'vali-skyway-nimbus-5-tac-xam-320.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni5taxa              ', N'vali-skyway-nimbus-5-tac-xam-405.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni5taxa              ', N'vali-skyway-nimbus-5-tac-xam-623.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni5taxa              ', N'vali-skyway-nimbus-5-tac-xam-631.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni5taxa              ', N'vali-skyway-nimbus-5-tac-xam-671.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni5taxa              ', N'vali-skyway-nimbus-5-tac-xam-68-1437530249.jpg                                                      ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni5taxa              ', N'vali-skyway-nimbus-5-tac-xam-68.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni5taxa              ', N'vali-skyway-nimbus-5-tac-xam-776.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni5taxa              ', N'vali-skyway-nimbus-5-tac-xam-792.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni5taxala            ', N'vali-skyway-nimbus-5-tac-xanh-la-180.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni5taxala            ', N'vali-skyway-nimbus-5-tac-xanh-la-212.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni5taxala            ', N'vali-skyway-nimbus-5-tac-xanh-la-23.jpg                                                             ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni5taxala            ', N'vali-skyway-nimbus-5-tac-xanh-la-379.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni5taxala            ', N'vali-skyway-nimbus-5-tac-xanh-la-466.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni5taxala            ', N'vali-skyway-nimbus-5-tac-xanh-la-493-1437530045.jpg                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni5taxala            ', N'vali-skyway-nimbus-5-tac-xanh-la-493.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni5taxala            ', N'vali-skyway-nimbus-5-tac-xanh-la-539.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni5taxala            ', N'vali-skyway-nimbus-5-tac-xanh-la-688.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni5taxala            ', N'vali-skyway-nimbus-5-tac-xanh-la-779.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni5taxala            ', N'vali-skyway-nimbus-5-tac-xanh-la-785.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni5taxala            ', N'vali-skyway-nimbus-5-tac-xanh-la-862.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-121.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-145.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-182.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-267-1445250373.jpg                                                    ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-267.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-322.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-410.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-417.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-435.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-466.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-497.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-51.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-526.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-637.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-698.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-917.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-951.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-177.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-230.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-391.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-445.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-500.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-531.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-591.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-704.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-707.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-788.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-799.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-805.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-926.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-929.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-93.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-941.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-957.jpg                                                               ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-164.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-209.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-216.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-324.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-377.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-505.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-526.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-532.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-564.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-625.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-653.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-778.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-842.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-85.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-902.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-93.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-995.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidadupalencl            ', N'vi-da-dung-passport-lewis-n-clark-244.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidadupalencl            ', N'vi-da-dung-passport-lewis-n-clark-491.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidadupalencl            ', N'vi-da-dung-passport-lewis-n-clark-604.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidadupalencl            ', N'vi-da-dung-passport-lewis-n-clark-823.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidadupalencl            ', N'vi-da-dung-passport-lewis-n-clark-839.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidadupalencl            ', N'vi-da-dung-passport-lewis-n-clark-912.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1dude            ', N'vi-da-nam-fredo-01-dung-den-165.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1dude            ', N'vi-da-nam-fredo-01-dung-den-226.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1dude            ', N'vi-da-nam-fredo-01-dung-den-342.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1dude            ', N'vi-da-nam-fredo-01-dung-den-498.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1dude            ', N'vi-da-nam-fredo-01-dung-den-742.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1dude            ', N'vi-da-nam-fredo-01-dung-den-750.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1dude            ', N'vi-da-nam-fredo-01-dung-den-847.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1duna            ', N'vi-da-nam-fredo-01-dung-nau-120.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1duna            ', N'vi-da-nam-fredo-01-dung-nau-139.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1duna            ', N'vi-da-nam-fredo-01-dung-nau-190.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1duna            ', N'vi-da-nam-fredo-01-dung-nau-230.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1duna            ', N'vi-da-nam-fredo-01-dung-nau-577.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1duna            ', N'vi-da-nam-fredo-01-dung-nau-733.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1duna            ', N'vi-da-nam-fredo-01-dung-nau-868.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1ngde            ', N'vi-da-nam-fredo-01-ngang-den-115.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1ngde            ', N'vi-da-nam-fredo-01-ngang-den-317.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1ngde            ', N'vi-da-nam-fredo-01-ngang-den-415.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1ngde            ', N'vi-da-nam-fredo-01-ngang-den-447.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1ngde            ', N'vi-da-nam-fredo-01-ngang-den-621.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1ngde            ', N'vi-da-nam-fredo-01-ngang-den-931.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1ngde            ', N'vi-da-nam-fredo-01-ngang-den-98.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1ngna            ', N'vi-da-nam-fredo-01-ngang-nau-1.jpg                                                                  ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1ngna            ', N'vi-da-nam-fredo-01-ngang-nau-216.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1ngna            ', N'vi-da-nam-fredo-01-ngang-nau-607.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1ngna            ', N'vi-da-nam-fredo-01-ngang-nau-671.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1ngna            ', N'vi-da-nam-fredo-01-ngang-nau-695.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr1ngna            ', N'vi-da-nam-fredo-01-ngang-nau-782.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr2ngde            ', N'vi-da-nam-fredo-02-ngang-den-13.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr2ngde            ', N'vi-da-nam-fredo-02-ngang-den-232.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr2ngde            ', N'vi-da-nam-fredo-02-ngang-den-499.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr2ngde            ', N'vi-da-nam-fredo-02-ngang-den-507.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr2ngde            ', N'vi-da-nam-fredo-02-ngang-den-835.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr2ngde            ', N'vi-da-nam-fredo-02-ngang-den-872.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr2ngde            ', N'vi-da-nam-fredo-02-ngang-den-874.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr2ngna            ', N'vi-da-nam-fredo-02-ngang-nau-332.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr2ngna            ', N'vi-da-nam-fredo-02-ngang-nau-606.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr2ngna            ', N'vi-da-nam-fredo-02-ngang-nau-64.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr2ngna            ', N'vi-da-nam-fredo-02-ngang-nau-71.jpg                                                                 ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr2ngna            ', N'vi-da-nam-fredo-02-ngang-nau-715.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr2ngna            ', N'vi-da-nam-fredo-02-ngang-nau-823.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr2ngna            ', N'vi-da-nam-fredo-02-ngang-nau-920.jpg                                                                ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr3ngxare          ', N'vi-da-nam-fredo-03-ngang-xanh-reu-140.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr3ngxare          ', N'vi-da-nam-fredo-03-ngang-xanh-reu-205.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr3ngxare          ', N'vi-da-nam-fredo-03-ngang-xanh-reu-457.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr3ngxare          ', N'vi-da-nam-fredo-03-ngang-xanh-reu-570.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr3ngxare          ', N'vi-da-nam-fredo-03-ngang-xanh-reu-826.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr3ngxare          ', N'vi-da-nam-fredo-03-ngang-xanh-reu-904.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'vidanafr3ngxare          ', N'vi-da-nam-fredo-03-ngang-xanh-reu-931.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'viroornadabo             ', N'vi-roncato-orizzontale-nau-da-bo-222.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'viroornadabo             ', N'vi-roncato-orizzontale-nau-da-bo-324.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'viroornadabo             ', N'vi-roncato-orizzontale-nau-da-bo-396.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'viroornadabo             ', N'vi-roncato-orizzontale-nau-da-bo-448.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'viroornadabo             ', N'vi-roncato-orizzontale-nau-da-bo-449.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'viroornadabo             ', N'vi-roncato-orizzontale-nau-da-bo-578.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'viroornadabo             ', N'vi-roncato-orizzontale-nau-da-bo-621.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'viroornadabo             ', N'vi-roncato-orizzontale-nau-da-bo-780.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'viroornadabo             ', N'vi-roncato-orizzontale-nau-da-bo-838.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'viroornadabo             ', N'vi-roncato-orizzontale-nau-da-bo-92.jpg                                                             ', NULL)
GO
INSERT [dbo].[tChatLieu] ([MaChatLieu], [ChatLieu]) VALUES (N'n                        ', N'Nhựa cứng')
GO
INSERT [dbo].[tChatLieu] ([MaChatLieu], [ChatLieu]) VALUES (N'string                   ', N'string')
GO
INSERT [dbo].[tChatLieu] ([MaChatLieu], [ChatLieu]) VALUES (N'v                        ', N'Vải')
GO
INSERT [dbo].[tChiTietHDB] ([MaHoaDon], [MaChiTietSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (N'1                        ', N'atud20230001gr           ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tChiTietHDB] ([MaHoaDon], [MaChiTietSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (N'1                        ', N'atud20230002br           ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atud20230001br           ', N'bacakeroirgr             ', N'7                        ', N'brown                    ', N'tui-dung-my-pham-nau-lewis-n-clark-120.jpg                                                          ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atud20230001gr           ', N'bacakeroirgr             ', N'7                        ', N'gray                     ', N'tui-dung-my-pham-xam-lewis-n-clark-151.jpg                                                          ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atud20230002br           ', N'bacakeroirgr             ', N'5                        ', N'brown                    ', N'tui-dung-my-pham-nau-lewis-n-clark-168.jpg                                                          ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atud20230002gr           ', N'tudumyphxalencl          ', N'5                        ', N'gray                     ', N'tui-dung-my-pham-xam-lewis-n-clark-159.jpg                                                          ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atud20230003br           ', N'tudumyphnalencl          ', N'6                        ', N'brown                    ', N'tui-dung-my-pham-nau-lewis-n-clark-340.jpg                                                          ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atud20230003gr           ', N'tudumyphxalencl          ', N'6                        ', N'gray                     ', N'tui-dung-my-pham-xam-lewis-n-clark-476.jpg                                                          ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atud20230004bl           ', N'tududosinhdelen          ', N'5                        ', N'black                    ', N'tui-dung-do-size-nho-den-lewis-n-clark-72.jpg                                                       ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atud20230004br           ', N'tudumyphnalencl          ', N'7                        ', N'brown                    ', N'tui-dung-my-pham-nau-lewis-n-clark-410.jpg                                                          ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atud20230004gr           ', N'tudumyphxalencl          ', N'7                        ', N'gray                     ', N'tui-dung-my-pham-xam-lewis-n-clark-852.jpg                                                          ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atud20230005bl           ', N'tududosinhdelen          ', N'6                        ', N'black                    ', N'tui-dung-do-size-nho-den-lewis-n-clark-957.jpg                                                      ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atud20230005br           ', N'tudumyphnalencl          ', N'5                        ', N'brown                    ', N'tui-dung-my-pham-nau-lewis-n-clark-575.jpg                                                          ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atuk20230001bl           ', N'tukepesprohovaxa         ', N'7                        ', N'blue                     ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-10.jpg                                                   ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atuk20230002bl           ', N'tukepesprohovaxa         ', N'5                        ', N'blue                     ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-134.jpg                                                  ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atuk20230003bl           ', N'tukepesprohovaxa         ', N'6                        ', N'blue                     ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-141.jpg                                                  ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atuk20230021bl           ', N'tukerimabainbl           ', N'6                        ', N'blue                     ', N'tui-keo-ricardo-malibu-bay-indigo-blue-127.jpg                                                      ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atuk20230022bl           ', N'tukerimabainbl           ', N'7                        ', N'blue                     ', N'tui-keo-ricardo-malibu-bay-indigo-blue-131.jpg                                                      ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atuk20230023bl           ', N'tukerimabainbl           ', N'5                        ', N'blue                     ', N'tui-keo-ricardo-malibu-bay-indigo-blue-154.jpg                                                      ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atur20230001bl           ', N'turocacode               ', N'6                        ', N'black                    ', N'tui-roncato-cartella-2-comparti-den-102.jpg                                                         ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atur20230001br           ', N'turobopotana             ', N'5                        ', N'brown                    ', N'tui-roncato-borsello-porta-tablet-nau-231.jpg                                                       ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atur20230001gr           ', N'turoboboxare             ', N'5                        ', N'green                    ', N'tui-roncato-borsa-boston-xanh-reu-27.jpg                                                            ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atur20230002bl           ', N'turocacode               ', N'7                        ', N'black                    ', N'tui-roncato-cartella-2-comparti-den-120.jpg                                                         ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atur20230002br           ', N'turobopotana             ', N'6                        ', N'brown                    ', N'tui-roncato-borsello-porta-tablet-nau-316.jpg                                                       ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atur20230002gr           ', N'turoboboxare             ', N'6                        ', N'green                    ', N'tui-roncato-borsa-boston-xanh-reu-275.jpg                                                           ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atur20230003bl           ', N'turocacode               ', N'5                        ', N'black                    ', N'tui-roncato-cartella-2-comparti-den-263.jpg                                                         ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atur20230003br           ', N'turobopotana             ', N'7                        ', N'brown                    ', N'tui-roncato-borsello-porta-tablet-nau-387.jpg                                                       ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atur20230003gr           ', N'turoboboxare             ', N'7                        ', N'green                    ', N'tui-roncato-borsa-boston-xanh-reu-290.jpg                                                           ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atur20230011br           ', N'turocacona               ', N'6                        ', N'brown                    ', N'tui-roncato-cartella-2-comparti-nau-632.jpg                                                         ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atur20230012br           ', N'turocacona               ', N'7                        ', N'brown                    ', N'tui-roncato-cartella-2-comparti-nau-698.jpg                                                         ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atur20230013br           ', N'turocacona               ', N'5                        ', N'brown                    ', N'tui-roncato-cartella-2-comparti-nau-752.jpg                                                         ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atur20230015bl           ', N'turocahade               ', N'7                        ', N'black                    ', N'tui-roncato-cartella-harvard-den-730.jpg                                                            ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atur20230016bl           ', N'turocahade               ', N'5                        ', N'black                    ', N'tui-roncato-cartella-harvard-den-765.jpg                                                            ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atur20230016br           ', N'turocahana               ', N'7                        ', N'brown                    ', N'tui-roncato-cartella-harvard-nau-631.jpg                                                            ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atur20230017bl           ', N'turocahade               ', N'6                        ', N'black                    ', N'tui-roncato-cartella-harvard-den-785.jpg                                                            ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atur20230017br           ', N'turocahana               ', N'5                        ', N'brown                    ', N'tui-roncato-cartella-harvard-nau-692.jpg                                                            ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atur20230018br           ', N'turocahana               ', N'6                        ', N'brown                    ', N'tui-roncato-cartella-harvard-nau-750.jpg                                                            ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atut20230001bl           ', N'tutrdotrtodelen          ', N'5                        ', N'black                    ', N'tui-treo-do-trong-toilet-den-lewis-n-clark-123.jpg                                                  ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'atut20230002bl           ', N'tutrdotrtodelen          ', N'6                        ', N'black                    ', N'tui-treo-do-trong-toilet-den-lewis-n-clark-841.jpg                                                  ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avak20230001bl           ', N'vakerisacl6taxa          ', N'5                        ', N'blue                     ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-192.jpg                                                    ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avak20230001re           ', N'vakerisacl6tado          ', N'7                        ', N'red                      ', N'vali-keo-ricardo-san-clemente-6-tac-do-16.jpg                                                       ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avak20230001si           ', N'vakerisacl6tamo          ', N'6                        ', N'silver                   ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-10.jpg                                              ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avak20230002bl           ', N'vakerisacl6taxa          ', N'6                        ', N'blue                     ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-287.jpg                                                    ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avak20230002re           ', N'vakerisacl6tado          ', N'5                        ', N'red                      ', N'vali-keo-ricardo-san-clemente-6-tac-do-203.jpg                                                      ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avak20230002si           ', N'vakerisacl6tamo          ', N'7                        ', N'silver                   ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-15.jpg                                              ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avak20230003bl           ', N'vakerisacl6taxa          ', N'7                        ', N'blue                     ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-296.jpg                                                    ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avak20230003re           ', N'vakerisacl6tado          ', N'6                        ', N'red                      ', N'vali-keo-ricardo-san-clemente-6-tac-do-216.jpg                                                      ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avak20230003si           ', N'vakerisacl6tamo          ', N'5                        ', N'silver                   ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-170.jpg                                             ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avap20230021bl           ', N'vapesk5tahovaxa          ', N'7                        ', N'blue                     ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-105.jpg                                                ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avap20230022bl           ', N'vapesk5tahovaxa          ', N'5                        ', N'blue                     ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-12.jpg                                                 ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avap20230023bl           ', N'vapesk5tahovaxa          ', N'6                        ', N'blue                     ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-152.jpg                                                ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avap20230041bl           ', N'vapespro6tahova          ', N'6                        ', N'blue                     ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-16.jpg                                                ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avap20230042bl           ', N'vapespro6tahova          ', N'7                        ', N'blue                     ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-161.jpg                                               ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avap20230043bl           ', N'vapespro6tahova          ', N'5                        ', N'blue                     ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-183.jpg                                               ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230001bl           ', N'varimaba5tainbl          ', N'7                        ', N'blue                     ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-115.jpg                                                   ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230001gr           ', N'varoirgr5ta              ', N'5                        ', N'green                    ', N'vali-roncato-ironik-green-5-tac1402.jpg                                                             ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230001pi           ', N'varobr7taho              ', N'6                        ', N'pink                     ', N'vali-roncato-breeze-7-tac-hong-10.jpg                                                               ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230001pu           ', N'varovesl5tati            ', N'5                        ', N'purple                   ', N'vali-roncato-venice-sl-5-tac-tim-145.jpg                                                            ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230001re           ', N'varisacl5tado            ', N'6                        ', N'red                      ', N'vali-ricardo-san-clemente-5-tac-do-119.jpg                                                          ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230001si           ', N'varisacl5tamosi          ', N'5                        ', N'silver                   ', N'vali-ricardo-san-clemente-5-tac-moon-silver-256.jpg                                                 ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230001tu           ', N'varoboxang6ta            ', N'7                        ', N'turquoise                ', N'vali-roncato-box-xanh-ngoc-6-tac-100.jpg                                                            ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230002bl           ', N'varimaba5tainbl          ', N'5                        ', N'blue                     ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-163.jpg                                                   ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230002gr           ', N'varoirgr5ta              ', N'6                        ', N'green                    ', N'vali-roncato-ironik-green-5-tac1424.jpg                                                             ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230002pi           ', N'varobr7taho              ', N'7                        ', N'pink                     ', N'vali-roncato-breeze-7-tac-hong-14.jpg                                                               ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230002pu           ', N'varovesl5tati            ', N'6                        ', N'purple                   ', N'vali-roncato-venice-sl-5-tac-tim-157.jpg                                                            ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230002re           ', N'varisacl5tado            ', N'7                        ', N'red                      ', N'vali-ricardo-san-clemente-5-tac-do-145.jpg                                                          ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230002si           ', N'varisacl5tamosi          ', N'6                        ', N'silver                   ', N'vali-ricardo-san-clemente-5-tac-moon-silver-258.jpg                                                 ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230002tu           ', N'varoboxang6ta            ', N'5                        ', N'turquoise                ', N'vali-roncato-box-xanh-ngoc-6-tac-132.jpg                                                            ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230003bl           ', N'varimaba5tainbl          ', N'6                        ', N'blue                     ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-178.jpg                                                   ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230003gr           ', N'varoirgr5ta              ', N'7                        ', N'green                    ', N'vali-roncato-ironik-green-5-tac1620.jpg                                                             ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230003pi           ', N'varobr7taho              ', N'5                        ', N'pink                     ', N'vali-roncato-breeze-7-tac-hong-164.jpg                                                              ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230003pu           ', N'varovesl5tati            ', N'7                        ', N'purple                   ', N'vali-roncato-venice-sl-5-tac-tim-240.jpg                                                            ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230003re           ', N'varisacl5tado            ', N'5                        ', N'red                      ', N'vali-ricardo-san-clemente-5-tac-do-192.jpg                                                          ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230003si           ', N'varisacl5tamosi          ', N'7                        ', N'silver                   ', N'vali-ricardo-san-clemente-5-tac-moon-silver-315.jpg                                                 ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230003tu           ', N'varoboxang6ta            ', N'6                        ', N'turquoise                ', N'vali-roncato-box-xanh-ngoc-6-tac-242.jpg                                                            ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230017gr           ', N'varimaba5tagr            ', N'6                        ', N'gray                     ', N'vali-ricardo-malibu-bay-5-tac-grey-913.jpg                                                          ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230018gr           ', N'varimaba5tagr            ', N'7                        ', N'gray                     ', N'vali-ricardo-malibu-bay-5-tac-grey-980.jpg                                                          ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230019gr           ', N'varimaba5tagr            ', N'5                        ', N'gray                     ', N'vali-ricardo-malibu-bay-5-tac-grey-984.jpg                                                          ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230024bl           ', N'varimaba6tainbl          ', N'6                        ', N'blue                     ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-138.jpg                                                   ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230025bl           ', N'varimaba6tainbl          ', N'7                        ', N'blue                     ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-143.jpg                                                   ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230026bl           ', N'varimaba6tainbl          ', N'5                        ', N'blue                     ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-163.jpg                                                   ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230047bl           ', N'varoundezicabl7          ', N'6                        ', N'black                    ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-560.jpg                                              ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230048bl           ', N'varoundezicabl7          ', N'7                        ', N'black                    ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-595.jpg                                              ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avar20230049bl           ', N'varoundezicabl7          ', N'5                        ', N'black                    ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-657.jpg                                              ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avas20230001bl           ', N'vaskni6taxa              ', N'5                        ', N'blue                     ', N'vali-skyway-nimbus-6-tac-xanh-177.jpg                                                               ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avas20230001gr           ', N'vaskni5taxala            ', N'6                        ', N'green                    ', N'vali-skyway-nimbus-5-tac-xanh-la-180.jpg                                                            ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avas20230001pi           ', N'vaskni6taho              ', N'6                        ', N'pink                     ', N'vali-skyway-nimbus-6-tac-hong-121.jpg                                                               ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avas20230002bl           ', N'vaskni6taxa              ', N'6                        ', N'blue                     ', N'vali-skyway-nimbus-6-tac-xanh-230.jpg                                                               ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avas20230002gr           ', N'vaskni5taxala            ', N'7                        ', N'green                    ', N'vali-skyway-nimbus-5-tac-xanh-la-212.jpg                                                            ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avas20230002pi           ', N'vaskni6taho              ', N'7                        ', N'pink                     ', N'vali-skyway-nimbus-6-tac-hong-145.jpg                                                               ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avas20230003bl           ', N'vaskni6taxa              ', N'7                        ', N'blue                     ', N'vali-skyway-nimbus-6-tac-xanh-391.jpg                                                               ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avas20230003gr           ', N'vaskni5taxala            ', N'5                        ', N'green                    ', N'vali-skyway-nimbus-5-tac-xanh-la-23.jpg                                                             ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avas20230003pi           ', N'vaskni6taho              ', N'5                        ', N'pink                     ', N'vali-skyway-nimbus-6-tac-hong-182.jpg                                                               ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avid20230001bl           ', N'vidanafr1ngde            ', N'5                        ', N'black                    ', N'vi-da-nam-fredo-01-ngang-den-115.jpg                                                                ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avid20230001br           ', N'vidanafr1duna            ', N'7                        ', N'brown                    ', N'vi-da-nam-fredo-01-dung-nau-120.jpg                                                                 ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avid20230001gr           ', N'vidanafr3ngxare          ', N'5                        ', N'green                    ', N'vi-da-nam-fredo-03-ngang-xanh-reu-140.jpg                                                           ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avid20230002bl           ', N'vidanafr1ngde            ', N'6                        ', N'black                    ', N'vi-da-nam-fredo-01-ngang-den-317.jpg                                                                ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avid20230002br           ', N'vidanafr1duna            ', N'5                        ', N'brown                    ', N'vi-da-nam-fredo-01-dung-nau-139.jpg                                                                 ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avid20230002gr           ', N'vidanafr3ngxare          ', N'6                        ', N'green                    ', N'vi-da-nam-fredo-03-ngang-xanh-reu-205.jpg                                                           ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avid20230003bl           ', N'vidanafr1ngde            ', N'7                        ', N'black                    ', N'vi-da-nam-fredo-01-ngang-den-415.jpg                                                                ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avid20230003br           ', N'vidanafr1duna            ', N'6                        ', N'brown                    ', N'vi-da-nam-fredo-01-dung-nau-190.jpg                                                                 ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avid20230003gr           ', N'vidanafr3ngxare          ', N'7                        ', N'green                    ', N'vi-da-nam-fredo-03-ngang-xanh-reu-457.jpg                                                           ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avid20230008bl           ', N'vidanafr2ngde            ', N'6                        ', N'black                    ', N'vi-da-nam-fredo-02-ngang-den-874.jpg                                                                ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avid20230018bl           ', N'vidadupalencl            ', N'6                        ', N'black                    ', N'vi-da-dung-passport-lewis-n-clark-244.jpg                                                           ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avid20230019bl           ', N'vidadupalencl            ', N'7                        ', N'black                    ', N'vi-da-dung-passport-lewis-n-clark-491.jpg                                                           ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avid20230020bl           ', N'vidadupalencl            ', N'5                        ', N'black                    ', N'vi-da-dung-passport-lewis-n-clark-604.jpg                                                           ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avid20230024bl           ', N'vidanafr1dude            ', N'6                        ', N'black                    ', N'vi-da-nam-fredo-01-dung-den-165.jpg                                                                 ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avid20230025bl           ', N'vidanafr1dude            ', N'7                        ', N'black                    ', N'vi-da-nam-fredo-01-dung-den-226.jpg                                                                 ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avid20230026bl           ', N'vidanafr1dude            ', N'5                        ', N'black                    ', N'vi-da-nam-fredo-01-dung-den-342.jpg                                                                 ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avir20230001ye           ', N'viroornadabo             ', N'6                        ', N'yellowishBrown           ', N'vi-roncato-orizzontale-nau-da-bo-222.jpg                                                            ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avir20230002ye           ', N'viroornadabo             ', N'7                        ', N'yellowishBrown           ', N'vi-roncato-orizzontale-nau-da-bo-324.jpg                                                            ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'avir20230003ye           ', N'viroornadabo             ', N'5                        ', N'yellowishBrown           ', N'vi-roncato-orizzontale-nau-da-bo-396.jpg                                                            ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'bac20230001bl            ', N'bacakeroirbl             ', N'5                        ', N'black                    ', N'balo-can-keo-roncato-ironik-black-135.jpg                                                           ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'bac20230001gr            ', N'bacakeroirgr             ', N'7                        ', N'green                    ', N'balo-can-keo-roncato-ironik-green-180.jpg                                                           ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'bac20230002bl            ', N'bacakeroirbl             ', N'6                        ', N'black                    ', N'balo-can-keo-roncato-ironik-black-156.jpg                                                           ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'bac20230002gr            ', N'bacakeroirgr             ', N'5                        ', N'green                    ', N'balo-can-keo-roncato-ironik-green-207.jpg                                                           ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'bac20230003bl            ', N'bacakeroirbl             ', N'7                        ', N'black                    ', N'balo-can-keo-roncato-ironik-black-170.jpg                                                           ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'bac20230003gr            ', N'bacakeroirgr             ', N'6                        ', N'green                    ', N'balo-can-keo-roncato-ironik-green-282.jpg                                                           ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'bar20230001bl            ', N'barorude                 ', N'6                        ', N'black                    ', N'balo-roncato-runway-den-144.jpg                                                                     ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'bar20230001pi            ', N'baroruho                 ', N'7                        ', N'pink                     ', N'balo-roncato-runaway-hong-138.jpg                                                                   ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'bar20230001re            ', N'baroru3do                ', N'6                        ', N'red                      ', N'balo-roncato-runaway-03-do-1.jpg                                                                    ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'bar20230001wh            ', N'barorutr                 ', N'7                        ', N'white                    ', N'balo-roncato-runaway-trang-111.jpg                                                                  ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'bar20230002bl            ', N'barorude                 ', N'7                        ', N'black                    ', N'balo-roncato-runway-den-295.jpg                                                                     ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'bar20230002pi            ', N'baroruho                 ', N'5                        ', N'pink                     ', N'balo-roncato-runaway-hong-191.jpg                                                                   ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'bar20230002re            ', N'baroru3do                ', N'7                        ', N'red                      ', N'balo-roncato-runaway-03-do-172.jpg                                                                  ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'bar20230002wh            ', N'barorutr                 ', N'5                        ', N'white                    ', N'balo-roncato-runaway-trang-261.jpg                                                                  ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'bar20230003bl            ', N'barorude                 ', N'5                        ', N'black                    ', N'balo-roncato-runway-den-297.jpg                                                                     ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'bar20230003pi            ', N'baroruho                 ', N'6                        ', N'pink                     ', N'balo-roncato-runaway-hong-343.jpg                                                                   ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'bar20230003re            ', N'baroru3do                ', N'5                        ', N'red                      ', N'balo-roncato-runaway-03-do-179.jpg                                                                  ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'bar20230003wh            ', N'barorutr                 ', N'6                        ', N'white                    ', N'balo-roncato-runaway-trang-434.jpg                                                                  ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'bvas20230001gr           ', N'vaskni5taxa              ', N'6                        ', N'gray                     ', N'vali-skyway-nimbus-5-tac-xam-24.jpg                                                                 ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'bvas20230002gr           ', N'vaskni5taxa              ', N'7                        ', N'gray                     ', N'vali-skyway-nimbus-5-tac-xam-257.jpg                                                                ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'bvas20230003gr           ', N'vaskni5taxa              ', N'5                        ', N'gray                     ', N'vali-skyway-nimbus-5-tac-xam-291.jpg                                                                ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'cad20230001bl            ', N'cadanagede               ', N'6                        ', N'black                    ', N'cap-da-nam-gentle-den-108.jpg                                                                       ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'cad20230001br            ', N'cadanagena               ', N'7                        ', N'brown                    ', N'cap-da-nam-gentle-nau-392.jpg                                                                       ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'cad20230001ye            ', N'cadanagenadabo           ', N'5                        ', N'yellowishBrown           ', N'cap-da-nam-gentle-nau-da-bo-192.jpg                                                                 ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'cad20230002bl            ', N'cadanagede               ', N'7                        ', N'black                    ', N'cap-da-nam-gentle-den-295.jpg                                                                       ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'cad20230002br            ', N'cadanagena               ', N'5                        ', N'brown                    ', N'cap-da-nam-gentle-nau-433.jpg                                                                       ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'cad20230002ye            ', N'cadanagenadabo           ', N'6                        ', N'yellowishBrown           ', N'cap-da-nam-gentle-nau-da-bo-218.jpg                                                                 ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'cad20230003bl            ', N'cadanagede               ', N'5                        ', N'black                    ', N'cap-da-nam-gentle-den-332.jpg                                                                       ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'cad20230003br            ', N'cadanagena               ', N'6                        ', N'brown                    ', N'cap-da-nam-gentle-nau-622.jpg                                                                       ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'cad20230003ye            ', N'cadanagenadabo           ', N'7                        ', N'yellowishBrown           ', N'cap-da-nam-gentle-nau-da-bo-324.jpg                                                                 ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'car20230001bl            ', N'carohe6de                ', N'5                        ', N'black                    ', N'cap-roncato-heritage-15-6-den-197.jpg                                                               ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'car20230002bl            ', N'carohe6de                ', N'6                        ', N'black                    ', N'cap-roncato-heritage-15-6-den-282.jpg                                                               ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'car20230003bl            ', N'carohe6de                ', N'7                        ', N'black                    ', N'cap-roncato-heritage-15-6-den-305.jpg                                                               ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'CT1                      ', N'cntt1                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'dad20230021bl            ', N'dadavakhtsde             ', N'7                        ', N'black                    ', N'day-dai-vali-khoa-tsa-den-50.jpg                                                                    ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'gok20230001bl            ', N'gokecogelamacode         ', N'7                        ', N'black                    ', N'goi-ke-co-gel-lam-mat-co-den-lewis-n-clark-226.jpg                                                  ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'gok20230001co            ', N'gokecohicalencl          ', N'5                        ', N'color                    ', N'goi-ke-co-hinh-ca-lewis-n-clark-624.jpg                                                             ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'gok20230002bl            ', N'gokecogelamacode         ', N'5                        ', N'black                    ', N'goi-ke-co-gel-lam-mat-co-den-lewis-n-clark-381.jpg                                                  ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'gok20230002co            ', N'gokecokikolencl          ', N'6                        ', N'color                    ', N'goi-ke-co-king-kong-lewis-n-clark-799.jpg                                                           ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'gok20230003bl            ', N'gokecogelamacode         ', N'6                        ', N'black                    ', N'goi-ke-co-gel-lam-mat-co-den-lewis-n-clark-499.jpg                                                  ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'mic20230001bl            ', N'michmadelencl            ', N'7                        ', N'black                    ', N'mieng-che-mat-den-lewis-n-clark-504.jpg                                                             ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'mic20230001na            ', N'michmaxanalencl          ', N'5                        ', N'navy                     ', N'mieng-che-mat-xanh-navy-lewis-n-clark-112.jpg                                                       ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'mic20230001re            ', N'michmadelencl            ', N'5                        ', N'red                      ', N'mieng-che-mat-den-lewis-n-clark-686.jpg                                                             ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'mic20230002na            ', N'michmaxanalencl          ', N'6                        ', N'navy                     ', N'mieng-che-mat-xanh-navy-lewis-n-clark-615.jpg                                                       ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'mic20230002re            ', N'michmadolencl            ', N'6                        ', N'red                      ', N'mieng-che-mat-do-lewis-n-clark-444.jpg                                                              ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'mic20230003re            ', N'michmadolencl            ', N'7                        ', N'red                      ', N'mieng-che-mat-do-lewis-n-clark-547.jpg                                                              ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'tub20230001bl            ', N'tubatudupavemaba         ', N'7                        ', N'black                    ', N'tui-bao-tu-dung-passport-ve-may-bay-den-lewis-n-clark-847.jpg                                       ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'tub20230001bl6           ', N'tubatudupavemaba         ', N'6                        ', N'blue                     ', N'tui-bao-tu-dung-passport-ve-may-bay-xanh-lewis-n-clark-261.jpg                                      ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'tub20230002bl            ', N'tubatudupavemaba         ', N'5                        ', N'black                    ', N'tui-bao-tu-dung-passport-ve-may-bay-den-lewis-n-clark-957.jpg                                       ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'tub20230002bl7           ', N'tubatudupavemaba         ', N'7                        ', N'blue                     ', N'tui-bao-tu-dung-passport-ve-may-bay-xanh-lewis-n-clark-68.jpg                                       ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'tub20230003bl5           ', N'tubatudupavemaba         ', N'5                        ', N'blue                     ', N'tui-bao-tu-dung-passport-ve-may-bay-xanh-lewis-n-clark-833.jpg                                      ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'tud20230001bl            ', N'tudecodupavemaba         ', N'6                        ', N'black                    ', N'tui-deo-co-dung-passport-ve-may-bay-den-lewis-n-clark-237.jpg                                       ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'tud20230001bl61          ', N'tududosilodelen          ', N'6                        ', N'black                    ', N'tui-dung-do-size-lon-den-lewis-n-clark-236.jpg                                                      ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'tud20230001bl72          ', N'tududosiloxalen          ', N'7                        ', N'blue                     ', N'tui-dung-do-size-lon-xanh-lewis-n-clark-695.jpg                                                     ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'tud20230001bl76          ', N'tudecodupavemaba         ', N'6                        ', N'blue                     ', N'tui-deo-co-dung-passport-ve-may-bay-xanh-lewis-n-clark-100.jpg                                      ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'tud20230001re            ', N'tudodudolencl            ', N'7                        ', N'red                      ', N'tui-doi-dung-do-lewis-n-clark-247.jpg                                                               ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'tud20230002bl            ', N'tudecodupavemaba         ', N'7                        ', N'black                    ', N'tui-deo-co-dung-passport-ve-may-bay-den-lewis-n-clark-70.jpg                                        ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'tud20230002bl53          ', N'tududosiloxalen          ', N'5                        ', N'blue                     ', N'tui-dung-do-size-lon-xanh-lewis-n-clark-826.jpg                                                     ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'tud20230002bl71          ', N'tududosilodelen          ', N'7                        ', N'black                    ', N'tui-dung-do-size-lon-den-lewis-n-clark-531.jpg                                                      ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'tud20230002bl77          ', N'tudecodupavemaba         ', N'7                        ', N'blue                     ', N'tui-deo-co-dung-passport-ve-may-bay-xanh-lewis-n-clark-287.jpg                                      ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'tud20230002re            ', N'tudodudolencl            ', N'5                        ', N'red                      ', N'tui-doi-dung-do-lewis-n-clark-772.jpg                                                               ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'tud20230003bl            ', N'tudecodupavemaba         ', N'5                        ', N'black                    ', N'tui-deo-co-dung-passport-ve-may-bay-den-lewis-n-clark-798.jpg                                       ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'tud20230003bl52          ', N'tududosilodelen          ', N'5                        ', N'black                    ', N'tui-dung-do-size-lon-den-lewis-n-clark-730.jpg                                                      ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'tud20230003bl63          ', N'tududosiloxalen          ', N'6                        ', N'blue                     ', N'tui-dung-do-size-lon-xanh-lewis-n-clark-855.jpg                                                     ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'tud20230003bl74          ', N'tududosinhdelen          ', N'7                        ', N'black                    ', N'tui-dung-do-size-nho-den-lewis-n-clark-675.jpg                                                      ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'tud20230003bl85          ', N'tudecodupavemaba         ', N'5                        ', N'blue                     ', N'tui-deo-co-dung-passport-ve-may-bay-xanh-lewis-n-clark-498.jpg                                      ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'tud20230003re            ', N'tudodudolencl            ', N'6                        ', N'red                      ', N'tui-doi-dung-do-lewis-n-clark-783.jpg                                                               ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'tuk20230001bl            ', N'tukerimavide             ', N'5                        ', N'black                    ', N'tui-keo-ricardo-mar-vista-2-0-den-953-1476159762.jpg                                                ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'var20230001bl            ', N'varimavide6ta            ', N'5                        ', N'black                    ', N'vali-ricardo-mar-vista-2-0-den-6-tac-143.jpg                                                        ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'var20230002bl            ', N'varimavide6ta            ', N'6                        ', N'black                    ', N'vali-ricardo-mar-vista-2-0-den-6-tac-440.jpg                                                        ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'var20230003bl            ', N'varimavide6ta            ', N'7                        ', N'black                    ', N'vali-ricardo-mar-vista-2-0-den-6-tac-518.jpg                                                        ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'var20230005bl            ', N'varimavide7ta            ', N'6                        ', N'black                    ', N'vali-ricardo-mar-vista-2-0-den-7-tac-592.jpg                                                        ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'var20230006bl            ', N'varimavide7ta            ', N'7                        ', N'black                    ', N'vali-ricardo-mar-vista-2-0-den-7-tac-631.jpg                                                        ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'var20230007bl            ', N'varimavide7ta            ', N'5                        ', N'black                    ', N'vali-ricardo-mar-vista-2-0-den-7-tac-751.jpg                                                        ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'var20230009bl            ', N'varish5tade              ', N'5                        ', N'black                    ', N'vali-ricardo-sherwood-5-tac-den-78.jpg                                                              ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'var20230010bl            ', N'varish5tade              ', N'6                        ', N'black                    ', N'vali-ricardo-sherwood-5-tac-den-80.jpg                                                              ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'var20230011bl            ', N'varish5tade              ', N'7                        ', N'black                    ', N'vali-ricardo-sherwood-5-tac-den-825.jpg                                                             ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'var20230019bl            ', N'varoundezicabl5          ', N'5                        ', N'black                    ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-911.jpg                                              ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'var20230020bl            ', N'varoundezicabl5          ', N'6                        ', N'black                    ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-980.jpg                                              ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'var20230021bl            ', N'varoundezicabl6          ', N'7                        ', N'black                    ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-1000.jpg                                             ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'var20230022bl            ', N'varoundezicabl6          ', N'5                        ', N'black                    ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-195.jpg                                              ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'var20230023bl            ', N'varoundezicabl6          ', N'6                        ', N'black                    ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-245.jpg                                              ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'vas20230001bl            ', N'vaskni7tade              ', N'7                        ', N'black                    ', N'vali-skyway-nimbus-7-tac-den-164.jpg                                                                ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'vas20230002bl            ', N'vaskni7tade              ', N'5                        ', N'black                    ', N'vali-skyway-nimbus-7-tac-den-209.jpg                                                                ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'vas20230003bl            ', N'vaskni7tade              ', N'6                        ', N'black                    ', N'vali-skyway-nimbus-7-tac-den-216.jpg                                                                ', NULL, 2500000, NULL, 10)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'bacak234566              ', N'balo can keo roncato ironik green', N'v                        ', NULL, NULL, 3, 5, N'rbh                      ', N'my                       ', NULL, NULL, 2, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'balo                     ', N'nd                       ', N'balo-roncato-runaway-trang-111.jpg                                                                  ', 2000000.0000, NULL)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'bacakeroirbl             ', N'balo can keo roncato ironik green', N'v                        ', NULL, NULL, 3, 3, N'rbh                      ', N'my                       ', NULL, NULL, 2, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'balo                     ', N'nd                       ', N'balo-roncato-runaway-trang-111.jpg                                                                  ', 2000000.0000, NULL)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'bacakeroirbl1111         ', N'a balo can keo roncato ironik green', N'v                        ', NULL, NULL, 3, 3, N'rbh                      ', N'my                       ', NULL, NULL, 2, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'balo                     ', N'nd                       ', N'balo-roncato-runaway-trang-111.jpg                                                                  ', 2000000.0000, NULL)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'bacakeroirgr             ', N'balo can keo roncato ironik green', N'n                        ', NULL, NULL, 4, 5, N'rbh                      ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'balo                     ', N'nd                       ', N'balo-can-keo-roncato-ironik-green-180.jpg                                                           ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'baroru3do                ', N'balo roncato runaway 03 do', N'v                        ', NULL, NULL, 3.8, 5, N'rbh                      ', N'vn                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'balo                     ', N'ls                       ', N'balo-roncato-runaway-03-do-1.jpg                                                                    ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'barorude                 ', N'balo roncato runway den', N'n                        ', NULL, NULL, 3.8, 5, N'rbh                      ', N'my                       ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'balo                     ', N'nd                       ', N'balo-roncato-runway-den-144.jpg                                                                     ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'baroruho                 ', N'balo roncato runaway hong', N'n                        ', NULL, NULL, 3.8, 5, N'rbh                      ', N'vn                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'balo                     ', N'ls                       ', N'balo-roncato-runaway-hong-138.jpg                                                                   ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'barorutr                 ', N'balo roncato runaway trang', N'v                        ', NULL, NULL, 3.8, 5, N'rbh                      ', N'my                       ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'balo                     ', N'nd                       ', N'balo-roncato-runaway-trang-111.jpg                                                                  ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'boduxaphlencl            ', N'bo dung xa phong lewis n clark', N'n                        ', NULL, NULL, 3.8, 5, N'rbh                      ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'bo                       ', N'nd                       ', N'bo-dung-xa-phong-lewis-n-clark-200.jpg                                                              ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'botududolencl            ', N'bo tui dung do lewis n clark', N'v                        ', NULL, NULL, 3.8, 5, N'rbh                      ', N'my                       ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'bo                       ', N'nd                       ', N'bo-3-tui-dung-do-lewis-n-clark-10.jpg                                                               ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'cadanagede               ', N'cap da nam gentle den', N'n                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'ita                      ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'cap                      ', N'dn                       ', N'cap-da-nam-gentle-den-108.jpg                                                                       ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'cadanagena               ', N'cap da nam gentle nau', N'v                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'my                       ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'cap                      ', N'nd                       ', N'cap-da-nam-gentle-nau-392.jpg                                                                       ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'cadanagenadabo           ', N'cap da nam gentle nau da bo', N'n                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'cap                      ', N'nd                       ', N'cap-da-nam-gentle-nau-da-bo-192.jpg                                                                 ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'caditunhgolencl          ', N'can dien tu nho gon lewis n clark', N'v                        ', NULL, NULL, 3.8, 5, NULL, N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'can                      ', N'nd                       ', N'can-dien-tu-nho-gon-lewis-n-clark-109.jpg                                                           ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'carohe6de                ', N'cap roncato heritage 15 6 den', N'n                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'my                       ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'cap                      ', N'nd                       ', N'cap-roncato-heritage-15-6-den-197.jpg                                                               ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'carohede                 ', N'cap roncato heritage 6 den', N'v                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'ita                      ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'cap                      ', N'dn                       ', N'cap-roncato-heritage-15-6-den-197.jpg                                                               ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'cntt1                    ', N'cap roncato heritage 6 ', N'n                        ', NULL, N'123', 5, 3, N'sky                      ', N'vn                       ', N'2                        ', NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', 0, N'balo                     ', N'nd                       ', N'cap-roncato-heritage-15-6-den-197.jpg                                                               ', 20000000000.0000, 20000000000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'dadavakhtsde             ', N'day dai vali khoa tsa den', N'n                        ', NULL, NULL, 3.8, 5, N'rbh                      ', N'dc                       ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'day                      ', N'dl                       ', N'day-dai-vali-khoa-tsa-den-50.jpg                                                                    ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'dadavakhtslencl          ', N'day dai vali khoa tsa lewis n clark', N'v                        ', NULL, NULL, 3.8, 5, N'rbh                      ', N'dc                       ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'day                      ', N'dl                       ', N'day-dai-vali-khoa-tsa-lewis-n-clark-813.jpg                                                         ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'gicaditocalencl          ', N'giac cam dien toan cau lewis n clark', N'v                        ', NULL, NULL, 3.8, 5, NULL, N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'giac                     ', N'nd                       ', N'giac-cam-dien-toan-cau-lewis-n-clark-437.jpg                                                        ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'gokecogelamacode         ', N'goi ke co gel lam mat co den lewis n clark', N'n                        ', NULL, NULL, 3.8, 5, N'rbh                      ', N'dc                       ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'goi                      ', N'dl                       ', N'goi-ke-co-gel-lam-mat-co-den-lewis-n-clark-226.jpg                                                  ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'gokecohicalencl          ', N'goi ke co hinh ca lewis n clark', N'v                        ', NULL, NULL, 3.8, 5, N'rbh                      ', N'ita                      ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'goi                      ', N'dn                       ', N'goi-ke-co-hinh-ca-lewis-n-clark-624.jpg                                                             ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'gokecokikolencl          ', N'goi ke co king kong lewis n clark', N'n                        ', NULL, NULL, 3.8, 5, N'rbh                      ', N'ita                      ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'goi                      ', N'dn                       ', N'goi-ke-co-king-kong-lewis-n-clark-799.jpg                                                           ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'michmadelencl            ', N'mieng che mat den lewis n clark', N'n                        ', NULL, NULL, 3.8, 5, NULL, N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'mieng                    ', N'nd                       ', N'mieng-che-mat-den-lewis-n-clark-504.jpg                                                             ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'michmadolencl            ', N'mieng che mat do lewis n clark', N'v                        ', NULL, NULL, 3.8, 5, NULL, N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'mieng                    ', N'nd                       ', N'mieng-che-mat-do-lewis-n-clark-444.jpg                                                              ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'michmaxanalencl          ', N'mieng che mat xanh navy lewis n clark', N'n                        ', NULL, NULL, 3.8, 5, NULL, N'my                       ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'mieng                    ', N'nd                       ', N'mieng-che-mat-xanh-navy-lewis-n-clark-112.jpg                                                       ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'tubatudupavemaba         ', N'tui bao tu dung passport ve may bay xanh lewis n clark', N'v                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'my                       ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'tui                      ', N'nd                       ', N'tui-bao-tu-dung-passport-ve-may-bay-den-lewis-n-clark-847.jpg                                       ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'tudecodupavemaba         ', N'tui deo co dung passport ve may bay xanh lewis n clark', N'n                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'vn                       ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'tui                      ', N'ls                       ', N'tui-deo-co-dung-passport-ve-may-bay-den-lewis-n-clark-237.jpg                                       ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'tudodudolencl            ', N'tui doi dung do lewis n clark', N'v                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'vn                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'tui                      ', N'ls                       ', N'tui-doi-dung-do-lewis-n-clark-247.jpg                                                               ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'tududithchthnule         ', N'tui dung dien thoai chong tham nuoc lewis n clark', N'n                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'tui                      ', N'nd                       ', N'tui-dung-dien-thoai-chong-tham-nuoc-lewis-n-clark-232.jpg                                           ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'tududosilodelen          ', N'tui dung do size lon den lewis n clark', N'v                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'tui                      ', N'nd                       ', N'tui-dung-do-size-lon-den-lewis-n-clark-236.jpg                                                      ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'tududosiloxalen          ', N'tui dung do size lon xanh lewis n clark', N'n                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'my                       ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'tui                      ', N'nd                       ', N'tui-dung-do-size-lon-xanh-lewis-n-clark-695.jpg                                                     ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'tududosinhdelen          ', N'tui dung do size nho den lewis n clark', N'v                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'tui                      ', N'nd                       ', N'tui-dung-do-size-nho-den-lewis-n-clark-150.jpg                                                      ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'tudumyphnalencl          ', N'tui dung my pham nau lewis n clark', N'n                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'my                       ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'tui                      ', N'nd                       ', N'tui-dung-my-pham-nau-lewis-n-clark-120.jpg                                                          ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'tudumyphxalencl          ', N'tui dung my pham xam lewis n clark', N'v                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'ita                      ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'tui                      ', N'dn                       ', N'tui-dung-my-pham-xam-lewis-n-clark-151.jpg                                                          ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'tukepesprohovaxa         ', N'tui keo pendleton spider rock hoa van xanh', N'n                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'my                       ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'tui                      ', N'nd                       ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-10.jpg                                                   ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'tukerimabainbl           ', N'tui keo ricardo malibu bay indigo blue', N'v                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'my                       ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'tui                      ', N'nd                       ', N'tui-keo-ricardo-malibu-bay-indigo-blue-127.jpg                                                      ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'tukerimavide             ', N'tui keo ricardo mar vista  den', N'n                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'ita                      ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'tui                      ', N'dn                       ', N'tui-keo-ricardo-mar-vista-2-0-den-953-1476159762.jpg                                                ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'tukerimavixadu           ', N'tui keo ricardo mar vista  xanh duong', N'v                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'dc                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'tui                      ', N'dl                       ', N'tui-keo-ricardo-mar-vista-2-0-xanh-duong-889.jpg                                                    ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'turoboboxare             ', N'tui roncato borsa boston xanh reu', N'n                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'dc                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'tui                      ', N'dl                       ', N'tui-roncato-borsa-boston-xanh-reu-27.jpg                                                            ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'turobopotana             ', N'tui roncato borsello porta tablet nau', N'v                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'dc                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'tui                      ', N'dl                       ', N'tui-roncato-borsello-porta-tablet-nau-231.jpg                                                       ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'turocacode               ', N'tui roncato cartella comparti den', N'n                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'ita                      ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'tui                      ', N'dn                       ', N'tui-roncato-cartella-2-comparti-den-102.jpg                                                         ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'turocacona               ', N'tui roncato cartella comparti nau', N'v                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'ita                      ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'tui                      ', N'dn                       ', N'tui-roncato-cartella-2-comparti-nau-192.jpg                                                         ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'turocahade               ', N'tui roncato cartella harvard den', N'n                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'my                       ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'tui                      ', N'nd                       ', N'tui-roncato-cartella-harvard-den-20.jpg                                                             ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'turocahana               ', N'tui roncato cartella harvard nau', N'v                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'my                       ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'tui                      ', N'nd                       ', N'tui-roncato-cartella-harvard-nau-108.jpg                                                            ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'turohede                 ', N'tui roncato heritage den', N'n                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'tui                      ', N'nd                       ', N'tui-roncato-heritage-15-4-den-122.jpg                                                               ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'turowina                 ', N'tui roncato wireless nau', N'v                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'tui                      ', N'nd                       ', N'tui-roncato-wireless-nau-105.jpg                                                                    ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'tutrdotrtodelen          ', N'tui treo do trong toilet den lewis n clark', N'n                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'tui                      ', N'nd                       ', N'tui-treo-do-trong-toilet-den-lewis-n-clark-123.jpg                                                  ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'tuxadechbalencl          ', N'tui xach deo cheo balo lewis n clark', N'v                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'vn                       ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'tui                      ', N'ls                       ', N'tui-xach-deo-cheo-balo-lewis-n-clark-41.jpg                                                         ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'vakerisacl6tado          ', N'vali keo ricardo san clemente 6 tac do', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'vn                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'ls                       ', N'vali-keo-ricardo-san-clemente-6-tac-do-16.jpg                                                       ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'vakerisacl6tamo          ', N'vali keo ricardo san clemente 6 tac moon silver', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-10.jpg                                              ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'vakerisacl6taxa          ', N'vali keo ricardo san clemente 6 tac xanh', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-192.jpg                                                    ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'vapesk5tahovaxa          ', N'vali pendleton skywalkers 5 tac hoa van xanh', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-105.jpg                                                ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'vapespro6tahova          ', N'vali pendleton spider rock 6 tac hoa van xanh', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-16.jpg                                                ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varimaba5tagr            ', N'vali ricardo malibu bay 5 tac grey', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-ricardo-malibu-bay-5-tac-grey-128.jpg                                                          ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varimaba5tainbl          ', N'vali ricardo malibu bay 5 tac indigo blue', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'ita                      ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'dn                       ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-115.jpg                                                   ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varimaba6tainbl          ', N'vali ricardo malibu bay 6 tac indigo blue', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-138.jpg                                                   ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varimavide6ta            ', N'vali ricardo mar vista 2 0 den 6 tac', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-ricardo-mar-vista-2-0-den-6-tac-143.jpg                                                        ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varimavide7ta            ', N'vali ricardo mar vista 2 0 den 7 tac', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-ricardo-mar-vista-2-0-den-7-tac-592.jpg                                                        ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varimavideta             ', N'vali ricardo mar vista  den 7 tac', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-ricardo-mar-vista-2-0-den-7-tac-592.jpg                                                        ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varimavixadu5            ', N'vali ricardo mar vista  xanh duong 5 tac', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'ita                      ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'dn                       ', N'vali-ricardo-mar-vista-2-0-xanh-duong-5-tac-388.jpg                                                 ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varimavixadu7            ', N'vali ricardo mar vista  xanh duong 7 tac', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'dc                       ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'dl                       ', N'vali-ricardo-mar-vista-2-0-xanh-duong-7-tac-209.jpg                                                 ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'variocdr5tago            ', N'vali ricardo ocean drive 5 tac gold', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'ita                      ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'dn                       ', N'vali-riacrdo-ocean-drive-5-tac-gold1404.jpg                                                         ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varisacl5tado            ', N'vali ricardo san clemente 5 tac do', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'dc                       ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'dl                       ', N'vali-ricardo-san-clemente-5-tac-do-119.jpg                                                          ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varisacl5tamosi          ', N'vali ricardo san clemente 5 tac moon silver', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'dc                       ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'dl                       ', N'vali-ricardo-san-clemente-5-tac-moon-silver-256.jpg                                                 ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varisacl5taxa            ', N'vali ricardo san clemente 5 tac xanh', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'ita                      ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'dn                       ', N'vali-ricardo-san-clemente-5-tac-xanh-162.jpg                                                        ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varish5tade              ', N'vali ricardo sherwood 5 tac den', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'ita                      ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'dn                       ', N'vali-ricardo-sherwood-5-tac-den-166.jpg                                                             ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varishtade               ', N'vali ricardo sherwood 5 tac den', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'ita                      ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'dn                       ', N'vali-ricardo-sherwood-5-tac-den-166.jpg                                                             ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varobobl6ta              ', N'vali roncato box blue 6 tac', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-roncato-box-blue-6-tac-263.jpg                                                                 ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varoboxadu6ta            ', N'vali roncato box xanh duong 6 tac', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-roncato-box-xanh-duong-6-tac-118.jpg                                                           ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varoboxang6ta            ', N'vali roncato box xanh ngoc 6 tac', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-roncato-box-xanh-ngoc-6-tac-100.jpg                                                            ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varobr7taho              ', N'vali roncato breeze 7 tac hong', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'dc                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'dl                       ', N'vali-roncato-breeze-7-tac-hong-10.jpg                                                               ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varobrtaho               ', N'vali roncato breeze 7 tac hong', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-roncato-breeze-7-tac-hong-10.jpg                                                               ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varoirbl5ta              ', N'vali roncato ironik black 5 tac', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-roncato-ironik-black-5-tac-109.jpg                                                             ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varoirgr5ta              ', N'vali roncato ironik green 5 tac', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'dc                       ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'dl                       ', N'vali-roncato-ironik-green-5-tac1402.jpg                                                             ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varoirgrta               ', N'vali roncato ironik green 5 tac', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-roncato-ironik-green-5-tac1402.jpg                                                             ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varoundech5ta            ', N'vali roncato uno deluxe champagne 5 tac', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'dc                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'dl                       ', N'vali-roncato-uno-deluxe-champagne-5-tac-139.jpg                                                     ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varoundech6ta            ', N'vali roncato uno deluxe champagne 6 ta', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'ita                      ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'dn                       ', N'vali-roncato-uno-deluxe-champagne-6-tac-101.jpg                                                     ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varoundech7ta            ', N'vali roncato uno deluxe champagne 7 tac', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-roncato-uno-deluxe-champagne-7-tac-260.jpg                                                     ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varoundechta             ', N'vali roncato uno deluxe champagne 7 tac', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'vn                       ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'ls                       ', N'vali-roncato-uno-deluxe-champagne-7-tac-260.jpg                                                     ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varoundezicabl5          ', N'vali roncato uno deluxe zip carbon black 5 tac', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'vn                       ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'ls                       ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-101.jpg                                              ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varoundezicabl6          ', N'vali roncato uno deluxe zip carbon black 6 tac', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-1000.jpg                                             ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varoundezicabl7          ', N'vali roncato uno deluxe zip carbon black 7 tac', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-237.jpg                                              ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varounzide5tape          ', N'vali roncato uno zip deluxe 5 tac pearl', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl1811.jpg                                                     ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varounzide6tape          ', N'vali roncato uno zip deluxe 6 tac pearl', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'ita                      ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'dn                       ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl115.jpg                                                      ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varounzide7tape          ', N'vali roncato uno zip deluxe 7 tac pearl', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl1130.jpg                                                     ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varounzidetape           ', N'vali roncato uno zip deluxe 7 tac pearl', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl1130.jpg                                                     ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varounzsprbl5ta          ', N'vali roncato uno zsl premium black 5 tac', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-roncato-uno-zsl-premium-black-5-tac-140.jpg                                                    ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varounzsprsiwibl         ', N'vali roncato uno zsl premium silver with black line 5 tac', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-136.jpg                                   ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varovesl5tati            ', N'vali roncato venice sl 5 tac tim', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-roncato-venice-sl-5-tac-tim-145.jpg                                                            ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varozegr5tade            ', N'vali roncato zero gravity 5 tac den', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-roncato-zero-gravity-5-tac-den-0.jpg                                                           ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varozegr5tado            ', N'vali roncato zero gravity 5 tac do', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-roncato-zero-gravity-5-tac-do-215.jpg                                                          ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varozegr6tabl            ', N'vali roncato zero gravity 6 tac blue', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-roncato-zero-gravity-6-tac-blue-114.jpg                                                        ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varozegrtabl             ', N'vali roncato zero gravity 6 tac blue', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-roncato-zero-gravity-6-tac-blue-114.jpg                                                        ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varozegrtade             ', N'vali roncato zero gravity 5 tac den', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'ita                      ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'dn                       ', N'vali-roncato-zero-gravity-6-tac-blue-114.jpg                                                        ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varozegrtado             ', N'vali roncato zero gravity 5 tac do', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-roncato-zero-gravity-6-tac-blue-114.jpg                                                        ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varoziprca5tabl          ', N'vali roncato zip premium carbon 5 tac blue', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-roncato-zip-premium-carbon-5-tac-blue1631.jpg                                                  ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varoziprca5tabo          ', N'vali roncato zip premium carbon 5 tac bordeaux', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'ita                      ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'dn                       ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux1201.jpg                                              ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varoziprca6tabl          ', N'vali roncato zip premium carbon 6 tac blue', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-roncato-zip-premium-carbon-6-tac-blue1649.jpg                                                  ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varoziprca6tabo          ', N'vali roncato zip premium carbon 6 tac bordeaux', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'my                       ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'nd                       ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux3911.jpg                                              ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'varoziprca7tabl          ', N'vali roncato zip premium carbon 7 tac blue', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'ita                      ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'dn                       ', N'vali-roncato-zip-premium-carbon-7-tac-blue1719.jpg                                                  ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'vaskni5taxa              ', N'vali skyway nimbus 5 tac xam', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'ita                      ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'dn                       ', N'vali-skyway-nimbus-5-tac-xam-24.jpg                                                                 ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'vaskni5taxala            ', N'vali skyway nimbus 5 tac xanh la', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'dc                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'dl                       ', N'vali-skyway-nimbus-5-tac-xanh-la-180.jpg                                                            ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'vaskni6taho              ', N'vali skyway nimbus 6 tac hong', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'dc                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'dl                       ', N'vali-skyway-nimbus-6-tac-hong-121.jpg                                                               ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'vaskni6taxa              ', N'vali skyway nimbus 6 tac xanh', N'v                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'dc                       ', NULL, NULL, 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'dl                       ', N'vali-skyway-nimbus-6-tac-xanh-177.jpg                                                               ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'vaskni7tade              ', N'vali skyway nimbus 7 tac den', N'n                        ', NULL, NULL, 3.8, 5, N'pd                       ', N'ita                      ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vali                     ', N'dn                       ', N'vali-skyway-nimbus-7-tac-den-164.jpg                                                                ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'vidadupalencl            ', N'vi da dung passport lewis n clark', N'v                        ', NULL, NULL, 3.8, 5, N'rc                       ', N'ita                      ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vi                       ', N'dn                       ', N'vi-da-dung-passport-lewis-n-clark-244.jpg                                                           ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'vidanafr1dude            ', N'vi da nam fredo 01 dung den', N'n                        ', NULL, NULL, 3.8, 5, N'rc                       ', N'my                       ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vi                       ', N'nd                       ', N'vi-da-nam-fredo-01-dung-den-165.jpg                                                                 ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'vidanafr1duna            ', N'vi da nam fredo 01 dung nau', N'v                        ', NULL, NULL, 3.8, 5, N'rc                       ', N'my                       ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vi                       ', N'nd                       ', N'vi-da-nam-fredo-01-dung-nau-120.jpg                                                                 ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'vidanafr1ngde            ', N'vi da nam fredo 01 ngang den', N'n                        ', NULL, NULL, 3.8, 5, N'rc                       ', N'my                       ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vi                       ', N'nd                       ', N'vi-da-nam-fredo-01-ngang-den-115.jpg                                                                ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'vidanafr1ngna            ', N'vi da nam fredo 01 ngang nau', N'v                        ', NULL, NULL, 3.8, 5, N'rc                       ', N'my                       ', NULL, NULL, 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vi                       ', N'nd                       ', N'vi-da-nam-fredo-01-ngang-nau-1.jpg                                                                  ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'vidanafr2ngde            ', N'vi da nam fredo 02 ngang den', N'n                        ', NULL, NULL, 3.8, 5, N'rc                       ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vi                       ', N'nd                       ', N'vi-da-nam-fredo-02-ngang-den-13.jpg                                                                 ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'vidanafr2ngna            ', N'vi da nam fredo 02 ngang nau', N'v                        ', NULL, NULL, 3.8, 5, N'rc                       ', N'vn                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vi                       ', N'ls                       ', N'vi-da-nam-fredo-02-ngang-nau-332.jpg                                                                ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'vidanafr3ngxare          ', N'vi da nam fredo 03 ngang xanh reu', N'n                        ', NULL, NULL, 3.8, 5, N'rc                       ', N'vn                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vi                       ', N'ls                       ', N'vi-da-nam-fredo-03-ngang-xanh-reu-140.jpg                                                           ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'viroornadabo             ', N'vi roncato orizzontale nau da bo', N'v                        ', NULL, NULL, 3.8, 5, N'rc                       ', N'my                       ', NULL, NULL, 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', NULL, N'vi                       ', N'nd                       ', N'vi-roncato-orizzontale-nau-da-bo-222.jpg                                                            ', 2000000.0000, 2500000.0000)
GO
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'pd                       ', N'Pendleton                                                                                           ', N'my                       ')
GO
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'rbh                      ', N'Ricardo Beverly Hills                                                                               ', N'my                       ')
GO
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'rc                       ', N'Roncato                                                                                             ', N'ita                      ')
GO
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'sky                      ', N'Skyway                                                                                              ', N'my                       ')
GO
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'string                   ', N'string', N'string                   ')
GO
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [MaNhanVien], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu]) VALUES (N'1                        ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tKichThuoc] ([MaKichThuoc], [KichThuoc]) VALUES (N'5                        ', N'49.5 x 35.5 x 19 cm                                                                                                                                   ')
GO
INSERT [dbo].[tKichThuoc] ([MaKichThuoc], [KichThuoc]) VALUES (N'6                        ', N'63.5 x 45.7 x 24.1 (cm)                                                                                                                               ')
GO
INSERT [dbo].[tKichThuoc] ([MaKichThuoc], [KichThuoc]) VALUES (N'7                        ', N'80 x 48 x 30/35 cm                                                                                                                                    ')
GO
INSERT [dbo].[tLoaiDT] ([MaDT], [TenLoai]) VALUES (N'dl                       ', N'Du lịch                                                                                             ')
GO
INSERT [dbo].[tLoaiDT] ([MaDT], [TenLoai]) VALUES (N'dn                       ', N'Doanh nhân                                                                                          ')
GO
INSERT [dbo].[tLoaiDT] ([MaDT], [TenLoai]) VALUES (N'ls                       ', N'Lịch sự')
GO
INSERT [dbo].[tLoaiDT] ([MaDT], [TenLoai]) VALUES (N'nd                       ', N'Năng động')
GO
INSERT [dbo].[tLoaiDT] ([MaDT], [TenLoai]) VALUES (N'string                   ', N'string')
GO
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'balo                     ', N'Ba lô')
GO
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'bo                       ', N'Bộ')
GO
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'can                      ', N'Cân điện tử')
GO
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'cap                      ', N'cặp')
GO
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'day                      ', N'Dây đai')
GO
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'giac                     ', N'Giắc cắm điện')
GO
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'goi                      ', N'Gối')
GO
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'mieng                    ', N'Miếng che mắt')
GO
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'string                   ', N'string')
GO
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'tui                      ', N'Túi')
GO
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'vali                     ', N'Va li')
GO
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'vi                       ', N'Ví')
GO
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'black                    ', N'Đen')
GO
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'blue                     ', N'Xanh dương')
GO
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'brown                    ', N'Nâu')
GO
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'color                    ', N'Đa màu sắc')
GO
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'gray                     ', N'Xám')
GO
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'green                    ', N'Xanh lá')
GO
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'navy                     ', N'Xanh Navy')
GO
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'orange
                 ', N'Cam')
GO
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'pink                     ', N'Hồng')
GO
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'purple                   ', N'Tím')
GO
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'red                      ', N'Đỏ')
GO
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'silver                   ', N'Màu bạc')
GO
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'turquoise                ', N'Xanh ngọc')
GO
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'white                    ', N'Trắng')
GO
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'yellow
                 ', N'Vàng')
GO
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'yellowishBrown           ', N'Nâu da bò')
GO
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'dc                       ', N'Đức                                               ')
GO
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'ita                      ', N'Italia                                            ')
GO
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'my                       ', N'Mỹ                                                ')
GO
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'string                   ', N'string')
GO
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'tq                       ', N'Trung Quốc                                        ')
GO
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'vn                       ', N'Việt Nam                                          ')
GO
INSERT [dbo].[tUser] ([username], [password], [LoaiUser]) VALUES (N'a                                                                                                   ', N'1                                                                                                                                                                                                                                                               ', 0)
GO
INSERT [dbo].[tUser] ([username], [password], [LoaiUser]) VALUES (N'b                                                                                                   ', N'1                                                                                                                                                                                                                                                               ', 1)
GO
ALTER TABLE [dbo].[tAnhChiTietSP]  WITH CHECK ADD  CONSTRAINT [FK_tAnhChiTietSP_tChiTietSanPham] FOREIGN KEY([MaChiTietSP])
REFERENCES [dbo].[tChiTietSanPham] ([MaChiTietSP])
GO
ALTER TABLE [dbo].[tAnhChiTietSP] CHECK CONSTRAINT [FK_tAnhChiTietSP_tChiTietSanPham]
GO
ALTER TABLE [dbo].[tAnhSP]  WITH CHECK ADD  CONSTRAINT [FK_tAnhSP_tDanhMucSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tDanhMucSP] ([MaSP])
GO
ALTER TABLE [dbo].[tAnhSP] CHECK CONSTRAINT [FK_tAnhSP_tDanhMucSP]
GO
ALTER TABLE [dbo].[tChiTietHDB]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDB_tChiTietSanPham] FOREIGN KEY([MaChiTietSP])
REFERENCES [dbo].[tChiTietSanPham] ([MaChiTietSP])
GO
ALTER TABLE [dbo].[tChiTietHDB] CHECK CONSTRAINT [FK_tChiTietHDB_tChiTietSanPham]
GO
ALTER TABLE [dbo].[tChiTietHDB]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDB_tHoaDonBan] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[tHoaDonBan] ([MaHoaDon])
GO
ALTER TABLE [dbo].[tChiTietHDB] CHECK CONSTRAINT [FK_tChiTietHDB_tHoaDonBan]
GO
ALTER TABLE [dbo].[tChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietSanPham_tDanhMucSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tDanhMucSP] ([MaSP])
GO
ALTER TABLE [dbo].[tChiTietSanPham] CHECK CONSTRAINT [FK_tChiTietSanPham_tDanhMucSP]
GO
ALTER TABLE [dbo].[tChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietSanPham_tKichThuoc] FOREIGN KEY([MaKichThuoc])
REFERENCES [dbo].[tKichThuoc] ([MaKichThuoc])
GO
ALTER TABLE [dbo].[tChiTietSanPham] CHECK CONSTRAINT [FK_tChiTietSanPham_tKichThuoc]
GO
ALTER TABLE [dbo].[tChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietSanPham_tMauSac] FOREIGN KEY([MaMauSac])
REFERENCES [dbo].[tMauSac] ([MaMauSac])
GO
ALTER TABLE [dbo].[tChiTietSanPham] CHECK CONSTRAINT [FK_tChiTietSanPham_tMauSac]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tChatLieu] FOREIGN KEY([MaChatLieu])
REFERENCES [dbo].[tChatLieu] ([MaChatLieu])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tChatLieu]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tHangSX] FOREIGN KEY([MaHangSX])
REFERENCES [dbo].[tHangSX] ([MaHangSX])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tHangSX]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tLoaiDT] FOREIGN KEY([MaDT])
REFERENCES [dbo].[tLoaiDT] ([MaDT])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tLoaiDT]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tLoaiSP] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[tLoaiSP] ([MaLoai])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tLoaiSP]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tQuocGia] FOREIGN KEY([MaNuocSX])
REFERENCES [dbo].[tQuocGia] ([MaNuoc])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tQuocGia]
GO
ALTER TABLE [dbo].[tHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_tHoaDonBan_tKhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[tKhachHang] ([MaKhanhHang])
GO
ALTER TABLE [dbo].[tHoaDonBan] CHECK CONSTRAINT [FK_tHoaDonBan_tKhachHang]
GO
ALTER TABLE [dbo].[tHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_tHoaDonBan_tNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[tNhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[tHoaDonBan] CHECK CONSTRAINT [FK_tHoaDonBan_tNhanVien]
GO
ALTER TABLE [dbo].[tKhachHang]  WITH CHECK ADD  CONSTRAINT [FK_tKhachHang_tUser] FOREIGN KEY([username])
REFERENCES [dbo].[tUser] ([username])
GO
ALTER TABLE [dbo].[tKhachHang] CHECK CONSTRAINT [FK_tKhachHang_tUser]
GO
ALTER TABLE [dbo].[tNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tNhanVien_tUser] FOREIGN KEY([username])
REFERENCES [dbo].[tUser] ([username])
GO
ALTER TABLE [dbo].[tNhanVien] CHECK CONSTRAINT [FK_tNhanVien_tUser]
GO
