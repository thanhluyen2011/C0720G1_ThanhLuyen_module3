use stady;
select * from NhanVien where 
(nhanvien.HoVaTen like 'T%' or nhanvien.HoVaTen like 'H%' or nhanvien.HoVaTen like 'K%')
and length(NhanVien.HoVaTen)< 15;
-- task3
select * from khachhang where 
(khachhang.DiaChi = 'Đà Nẵng' or khachhang.DiaChi = 'Quảng Trị') 
and ((year(now()) - year(khachhang.NgaySinh)) between 18 and 25);
-- task4
select khachhang.HoVaTen,count(khachhang.IdKhachHang) from khachhang
join hopdong on khachhang.IdKhachHang = hopdong.IdKhachHang
join loaikhach on khachhang.IdLoaiKhach = loaikhach.IdLoaiKhach
where loaikhach.TenLoaiKhach = 'Diamond'
group by hopdong.IdKhachHang
order by hopdong.IdKhachHang desc;


