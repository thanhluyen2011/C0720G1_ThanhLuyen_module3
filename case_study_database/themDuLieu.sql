use stady;
insert into ViTri(IdViTri,TenViTri) 
values 
(1,'Lễ Tân'),
(2,'Phục Vụ'),
(3,'Chuyên Viên'),
(4,'Giám Sát'),
(5,'Quản Lý'),
(6,'Giám Đốc');
insert into TrinhDo(IdTrinhDo,TrinhDo)
values
(1,'Trung Cấp'),
(2,'Cao Đẳng'),
(3,'Đại Học'),
(4,'sau Đại Học');
insert into BoPhan(IdBoPhan,TenBoPhan)
values
(1,'Sale'),
(2,'Hành Chính'),
(3,'Phục Vụ'),
(4,'Quản Lý');
insert into LoaiKhach(IdLoaiKhach,TenLoaiKhach)
values
(1,'Diamond'),
(2,'Platinium'),
(3,'Gold'),
(4,'Silver'),
(5,'Member');
insert into KieuThue(IdKieuThue,TenKieuThue,Gia)
values
(1,'House',100),
(2,'Room',300),
(3,'Villa',500);
insert into LoaiDichVu(IdLoaiDichVu,TenLoaiDichVu)
values
(1,'Vip'),
(2,'Thường');
insert into DichVuDiKem(IdDichVuDiKem,TenDichVuDiKem,Gia,DonVi,TrangThaiKhachDung)
values
(1,'massage',500,1,'Tốt'),
(2,'karaoke',400,2,'Tốt'),
(3,'Thức ăn',50,3,'Tốt'),
(4,'Nước uống',500,4,'Tốt'),
(5,'Thuê xe',1000,5,'Tốt');
insert into DichVu(IdDichVu,TenDicVu,DienTich,SoTang,SoNguoiToiDa,ChiPhiThue,IdKieuThue,IdLoaiDichVu,TrangThai)
values
(1,'Nhảy',34,5,9,500,1,1,'Tốt'),
(2,'Bay',45,6,10,400,2,2,'Tốt'),
(3,'Múa',55,7,11,300,2,2,'Tốt');
insert into KhachHang(IdKhachHang,IdLoaiKhach,HoVaTen,NgaySinh,CMND,SDT,Email,DiaChi)
values
(1,1,'Khoa',22/11/2000,11111,11111,'aaaaaaa','aaaaaa'),
(2,2,'Thái',11/11/2000,222222,222222,'bbbbbbb','bbbbbb'),
(3,3,'Luyện',20/11/2000,22222,22222,'ccccccc','cccccc');
insert into NhanVien(IdNhanVien,HoVaTen,NgaySinh,CMND,Luong,SDT,Email,DiaChi,IdViTri,IdTrinhDo,IdBoPhan)
values
(1,'Luyện',20/11/2000,'111111','1000','11111','vvvvvvv','vvvvvvv',1,1,1),
(2,'Khoa',1/11/1999,'111111','500','222222','mmmmmm','mmmmmmm',2,2,2),
(3,'Hải',2/11/1998,'111111','200','22222','cccccc','cccccc',3,3,3);
insert into HopDong(IdHopDong,IdNhanVien,IdKhachHang,IdDichVu,NgayLamHopDong,NgayKetThuc,TienDatCoc,TongTien)
values
(1,1,1,1,1/1/1111,2/2/2222,500,1000),
(2,2,2,2,2/2/2222,3/3/3333,100,1000),
(3,3,3,3,3/3/3333,4/4/4444,200,1000);
insert into HopDongChiTiet(IdHopDongChiTiet,IdHopDong,IdDichVuDiKem,SoLuong)
values
(1,1,1,1),
(2,2,2,2),
(3,3,3,3);