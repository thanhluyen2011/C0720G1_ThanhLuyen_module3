-- task9;
select temp.month,count(month(hopdong.ngaylamhopdong)) as so_khach_hang_dang_ky , sum(hopdong.tongtien) as tong_tien from
(select 1 as month
union select 2 as month
union select 3 as month
union select 4 as month
union select 5 as month
union select 6 as month
union select 7 as month
union select 8 as month
union select 9 as month
union select 10 as month
union select 11 as month
union select 12 as month) as temp
left join hopdong on month(hopdong.ngaylamhopdong) = temp.month
left join khachhang on khachhang.IdKhachHang = hopdong.IdKhachHang
where year(hopdong.ngaylamhopdong) = '2019' or year(hopdong.ngaylamhopdong) is null
group by temp.month
order by temp.month;
-- task10;
select hopdong.IdHopDong,hopdong.NgayLamHopDong,hopdong.NgayKetThuc,hopdong.TienDatCoc,count(hopdongchitiet.IdDichVuDiKem) as so_luong_dich_vu
from hopdong inner join hopdongchitiet on hopdong.IdHopDong = hopdongchitiet.IdHopDong 
group by hopdong.IdHopDong;
-- task11;
select distinct dichvudikem.TenDichVuDiKem,dichvudikem.Gia,dichvudikem.DonVi from hopdong
inner join hopdongchitiet on hopdongchitiet.IdHopDong = hopdong.IdHopDong
inner join dichvudikem on hopdongchitiet.IdDichVuDiKem = dichvudikem.TenDichVuDiKem
inner join khachhang on khachhang.IdKhachHang = hopdong.IdKhachHang
inner join loaikhach on khachhang.IdLoaiKhach = loaikhach.IdLoaiKhach
where loaikhach.TenLoaiKhach = "Diamond" and khachhang.DiaChi in ("Vinh","Quảng Ngãi");
-- task12;
select hopdong.IdHopDong,hopdong.TongTien,hopdong.TienDatCoc,nhanvien.HoVaTen,khachhang.HoVaTen,khachhang.SDT,dichvu.TenDicVu,
count(hopdongchitiet.IdDichVuDiKem) as so_lan_su_dung from hopdong
inner join nhanvien on nhanvien.IdNhanVien = hopdong.IdNhanVien
inner join khachhang on hopdong.IdKhachHang = khachhang.IdKhachHang
inner join dichvu on dichvu.IdDichVu = hopdong.IdDichVu
inner join hopdongchitiet on hopdongchitiet.IdHopDong = hopdong.IdHopDong
where not exists (select hopdong.IdHopDong where hopdong.NgayLamHopDong between '2019-01-01' and '2019-06-31')
and exists (select hopdong.IdHopDong where hopdong.NgayLamHopDong between '2019-09-01' and '2019-12-31')
