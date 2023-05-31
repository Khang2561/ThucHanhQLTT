CREATE DATABASE CINEMA
GO
USE CINEMA 
GO
CREATE TABLE HangSX(
	MaHangSX varchar(10) not null,
	TenHangSX NVARCHAR(20),
	CONSTRAINT PF_HangSX PRIMARY KEY (MaHangSX)
);

CREATE TABLE NuocSX(
	MaNuocSX varchar(10) not null,
	TenNuocSX NVARCHAR(20),
	CONSTRAINT PF_NuocSX PRIMARY KEY (MaNuocSX)
);

CREATE TABLE TheLoai(
	MaTheLoai varchar(10) not null,
	TenTheLoai nvarchar(20),
	CONSTRAINT PF_TheLoai PRIMARY KEY (MaTheLoai)
);

CREATE TABLE Phim(
	MaPhim VARCHAR(10) NOT NULL,
	TenPhim VARCHAR(50),
	MaNuocSX VARCHAR(10) NOT NULL,
	MaHangSX VARCHAR(10) NOT NULL,
	DaoDien VARCHAR(20),
	MaTheLoai VARCHAR(10) NOT NULL,
	NgayKhoiChieu SMALLDATETIME,
	NgayKetThuc SMALLDATETIME,
	NoiDungChinh text,
	TongChiPhi bigint  DEFAULT 0,
	TongThu bigint  DEFAULT 0,
	CONSTRAINT PK_Phim primary key (MaPhim),
	CONSTRAINT FK_MaHangSX foreign key (MaHangSX) REFERENCES HangSX(MaHangSX),
	CONSTRAINT FK_MaNuocSX foreign key (MaNuocSX) REFERENCES NuocSX(MaNuocSX),
	CONSTRAINT FK_TheLoai foreign key (MaTheLoai) REFERENCES TheLoai(MaTheLoai)
);

CREATE TABLE RAP(
	MaRap varchar(10) not null,
	TenRap nvarchar(50),
	DiaChi nvarchar(100),
	DienThoai varchar(10),
	SoPhong varchar(10)  DEFAULT 0,
	TongSoGhe int  DEFAULT 0,
	CONSTRAINT FK_RAP PRIMARY KEY (MaRap)
);
CREATE TABLE GioChieu(
	MaGioChieu varchar(10) not null,
	MaRap varchar(10),
	XuatChieu int,
	CONSTRAINT PK_GioChieu PRIMARY KEY(MaGioChieu),
	CONSTRAINT FK_MaRap FOREIGN KEY(MaRap) references RAP(MaRap)	
);

CREATE TABLE PhongChieu(
	MaPhong varchar(10) not null primary key,
	MaRap varchar(10) not null,
	TenPhong nvarchar(50),
	TongSoGhe int  DEFAULT 0,
	constraint FK_MARAP1 foreign key (MaRap) references RAP(MaRap)
);

create TABLE Ve(
	MaGhe varchar(10) not null ,
	MaShow varchar(10) not null,
	constraint pk_ve primary key (MaGhe,MaShow)
);
CREATE TABLE PhongChieuGhe(
	MaRap varchar(10) not null,
	MaPhong varchar(10) not null,
	MaGhe varchar(10) not null primary key,
	TrangThai varchar(10),
	constraint fk_MaPhong foreign key(MaPhong) references PhongChieu(MaPhong),
	constraint fk_MaRap2 foreign key (MaRap) references RAP(MaRap),
);
alter table Ve add constraint fk_MaGhe1 foreign key (MaGhe) references PhongChieuGhe(MaGhe);

CREATE TABLE LichChieu(
	MaShow varchar(10) not null,
	MaPhim varchar(10) not null,
	MaRap varchar(10) not null,
	MaPhong varchar(10) not null,
	NgayChieu smalldatetime,
	MaGioChieu varchar(10) not null,
	GiaVe bigint  DEFAULT 0,
	SoVeDaBan int  DEFAULT 0,
	TongTien bigint  DEFAULT 0,
	CONSTRAINT PF_LichChieu3 primary key (MaShow),
	CONSTRAINT FK_MaPhim3 foreign key (MaPhim) REFERENCES Phim(MaPhim),
	CONSTRAINT FK_MaPhong3 foreign key (MaPhong) REFERENCES PhongChieu(MaPhong),
	constraint fk_MaRap3 foreign key (MaRap) REFERENCES RAP(MaRap),
	constraint fk_MaGioChieu3 foreign key (MaGioChieu) REFERENCES GioChieu(MaGioChieu)
	
	
);
alter table Ve add constraint fk_MaShow3 foreign key (MaShow) references LichChieu(MaShow);

--trigger 
--1/ cập nhập số vé đã bán và tổng doanh thu mà lịch chiếu đó đã bán 
CREATE trigger SoVeDaBan on Ve after INSERT AS
Begin 
	UPDATE LichChieu 
	SET SoVeDaBan = (select count(*) from Ve where Ve.MaShow = LichChieu.MaShow);
	UPDATE LichChieu
	SET TongTien = (GiaVe * SoVeDaBan); 
END
--2/CAP NHAP SO RAP TRONG PHONG CHIEU 
CREATE TRIGGER SoPhongRap ON PhongChieu AFTER INSERT AS
BEGIN
	UPDATE RAP 
	SET SoPhong = ( select count(MaPhong) from PhongChieu where MaRap= RAP.MaRap) 
	from RAP join inserted on RAP.MaRap = inserted.MaRap 
END 
--3/ CAP NHAP TONG SO GHE CUA MOT RAP 
CREAT TRIGGER TongSoGheRap ON PhongChieu AFTER INSERT AS 
BEGIN 
	UPDATE RAP
	SET TongSoGhe = RAP.TongSoGhe + (select TongSoGhe from inserted where MaRap = RAP.MaRap) from RAP join inserted on RAP.MaRap=inserted.MaRap
END
--4/ CAP NHAP TONG SO TIEN KHO Co VE THAY DOI PHIM 
Create trigger TongTienudt on Ve AFTER UPDATE AS 
BEGIN 
	UPDATE LichChieu 
	SET TongTien = (GiaVe * SoVeDaBan) FROM LichChieu join inserted on LichChieu.MaShow = inserted.MaShow 
	WHERE LichChieu.MaShow = inserted.MaShow 
END
---text------
-----import------
