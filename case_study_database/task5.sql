use stady;
-- task5
select khachhang.IdKhachHang,khachhang.HoVaTen,loaikhach.TenLoaiKhach,
hopdong.IdHopDong,dichvu.TenDicVu,hopdong.NgayLamHopDong,hopdong.NgayKetThuc,hopdong.TongTien,
(dichvu.ChiPhiThue + sum(hopdongchitiet.SoLuong * dichvudikem.Gia)) as 'total'
from khachhang
left join loaikhach on khachhang.IdLoaiKhach = loaikhach.IdLoaiKhach
left join hopdong on khachhang.IdKhachHang = hopdong.IdKhachHang
left join dichvu on dichvu.IdDichVu = hopdong.IdDichVu
left join hopdongchitiet on hopdong.IdHopDong = hopdongchitiet.IdHopDong
left join dichvudikem on hopdongchitiet.IdDichVuDiKem = dichvudikem.IdDichVuDiKem
group by khachhang.IdKhachHang 
-- task6