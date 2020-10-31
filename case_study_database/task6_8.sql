use stady;
-- task 6;
select dichvu.IdDichVu,dichvu.TenDicVu,dichvu.DienTich,dichvu.ChiPhiThue,loaidichvu.TenLoaiDichVu
from dichvu
inner join loaidichvu on dichvu.IdLoaiDichVu = loaidichvu.IdLoaiDichVu
where exists (select hopdong.IdDichVu from hopdong where (hopdong.NgayLamHopDong between "2019-01-01" and "2019-03-31")
and hopdong.IdDichVu = dichvu.IdDichVu);
-- task7;
select dichvu.IdDichVu,dichvu.TenDicVu,dichvu.DienTich,dichvu.SoNguoiToiDa,dichvu.ChiPhiThue,loaidichvu.TenLoaiDichVu
from dichvu
inner join loaidichvu on dichvu.IdLoaiDichVu = loaidichvu.IdLoaiDichVu
where exists(select hopdong.IdDichVu from hopdong where year(hopdong.ngaylamhopdong) = "2018" and hopdong.IdDichVu = dichvu.IdDichVu)
and not exists(select hopdong.IdDichVu from hopdong where year(hopdong.ngaylamhopdong) = "2019" and hopdong.IdDichVu = dichvu.IdDichVu);
-- task8;
-- cach1:
select distinct khachhang.HoVaTen from khachhang;
-- cach2:
select khachhang.HoVaTen from khachhang group by khachhang.HoVaTen;
-- cach3:
select khachhang.HoVaTen from khachhang union select khachhang.HoVaTen from khachhang;