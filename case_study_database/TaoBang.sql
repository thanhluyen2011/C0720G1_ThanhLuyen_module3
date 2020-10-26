-- create database stady;
create table ViTri(
IdViTri int primary key ,
TenViTri varchar(45)
);
create table TrinhDo(
IdTrinhDo int primary key,
TrinhDo varchar(45)
);
create table BoPhan(
IdBoPhan int primary key,
TenBoPhan varchar(45)
);
create table LoaiKhach(
IdLoaiKhach int primary key,
TenLoaiKhach varchar(45)
);
create table KieuThue(
IdKieuThue int primary key,
TenKieuThue varchar(45),
Gia int
);
create table LoaiDichVu(
IdLoaiDichVu int primary key,
TenLoaiDichVu varchar(45)
);
create table DichVuDiKem(
IdDichVuDiKem int primary key,
TenDichVuDiKem varchar(45),
Gia int,
DonVi int,
TrangThaiKhachDung varchar(45)
);
create table DichVu(
IdDichVu int primary key,
TenDicVu varchar(45),
DienTich int,
SoTang int,
SoNguoiToiDa varchar(45),
ChiPhiThue varchar(45),
TrangThai varchar(45),
IdKieuThue int,
IdLoaiDichVu int,
foreign key (IdKieuThue) references KieuThue(IdKieuThue),
foreign key (IdLoaiDichVu) references LoaiDichVu(IdLoaiDichVu)
);
create table NhanVien(
IdNhanVien int primary key,
HoVaTen varchar(45),
NgaySinh date,
CMND varchar(45),
Luong varchar(45),
SDT varchar(45),
Email varchar(45),
DiaChi varchar(45),
IdViTri int,
IdTrinhDo int,
IdBoPhan int,
foreign key (IdViTri) references ViTri(IdViTri),
foreign key (IdTrinhDo) references TrinhDo(IdTrinhDo),
foreign key (IdBoPhan) references BoPhan(IdBoPhan)
);
create table KhachHang(
IdKhachHang int primary key,
IdLoaiKhach int,
HoVaTen varchar(45),
NgaySinh date,
CMND varchar(45),
SDT varchar(45),
Email varchar(45),
DiaChi varchar(45),
foreign key (IdLoaiKhach) references LoaiKhach(IdLoaiKhach)
);
create table HopDong(
IdHopDong int primary key,
IdNhanVien int,
IdKhachHang int,
IdDichVu int,
NgayLamHopDong date,
NgayKetThuc date,
TienDatCoc int,
TongTien int,
foreign key(IdNhanVien) references NhanVien(IdNhanVien),
foreign key(IdKhachHang) references KhachHang(IdKhachHang),
foreign key(IdDichVu) references DichVu(IdDichVu)
);
create table HopDongChiTiet(
IdHopDongChiTiet int primary key,
IdHopDong int,
IdDichVuDiKem int,
SoLuong int,
foreign key (IdHopDong) references HopDong(IdHopDong),
foreign key (IdDichVuDiKem) references DichVuDiKem(IdDichVuDiKem)
);
