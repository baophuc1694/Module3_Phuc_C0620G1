drop database case_study;
create database case_study;
use case_study;
create table loaikhach(
id_loai_khach int primary key,
ten_loai_khach varchar(45)
);

create table khachhang(
id_khach_hang int primary key,
id_loai_khach int,
ho_ten_khach_hang varchar(45),
ngay_sinh_khach_hang date,
so_CMND_khach_hang varchar(45),
sdt_khach_hang varchar(45),
email_khach_hang varchar(45),
dia_chi_khach_hang varchar(45),
foreign key(id_loai_khach) references loaikhach(id_loai_khach)
);
create table vitri(
id_vi_tri int primary key,
ten_vi_tri varchar(45)
);
create table bophan(
id_bo_phan int primary key,
ten_bo_phan varchar(45)
);
create table trinhdo(
id_trinh_do int primary key,
trinh_do varchar(45)
);
create table nhanvien(
id_nhan_vien int primary key,
ho_ten varchar(50),
id_vi_tri int,
id_trinh_do int,
id_bo_phan int,
ngay_sinh date,
so_CMND varchar(45),
luong varchar(45),
sdt varchar(45),
email varchar(45),
dia_chi varchar(45),
foreign key(id_vi_tri) references vitri(id_vi_tri),
foreign key(id_bo_phan) references bophan(id_bo_phan),
foreign key(id_trinh_do) references trinhdo(id_trinh_do)
);
create table kieuthue(
id_kieu_thue int primary key,
ten_kieu_thue varchar(45),
gia int
);
create table loaidichvu(
id_loai_dich_vu int primary key,
ten_loai_dich_vu varchar(45)
);
create table dichvudikem(
id_dich_vu_di_kem int primary key,
ten_dich_vu_di_kem varchar(45),
gia_dich_vu_di_kem int,
don_vi int,
trang_thai_kha_dung varchar(45)
);
create table hopdong(
id_hop_dong int primary key,
id_nhan_vien int,
id_khach_hang int,
id_dich_vu int,
ngay_lam_hop_dong date,
ngay_ket_thuc date,
tien_dat_coc int,
tong_tien int,
foreign key(id_nhan_vien) references nhanvien(id_nhan_vien),
foreign key(id_khach_hang) references khachhang(id_khach_hang),
foreign key(id_dich_vu) references dichvu(id_dich_vu)
);
create table dichvu(
id_dich_vu int primary key,
ten_dich_vu varchar(45),
dien_tich int,
so_tang int,
so_nguoi_toi_da varchar(45),
chi_phi_thue varchar(45),
id_kieu_thue int,
id_loai_dich_vu int,
trang_thai varchar(45),
foreign key(id_kieu_thue) references kieuthue(id_kieu_thue),
foreign key(id_loai_dich_vu) references loaidichvu(id_loai_dich_vu)
);

create table hopdongchitiet(
id_hop_dong_chi_tiet int primary key,
id_hop_dong int,
id_dich_vu_di_kem int,
so_luong int,
foreign key(id_hop_dong) references hopdong(id_hop_dong),
foreign key (id_dich_vu_di_kem) references dichvudikem(id_dich_vu_di_kem)	
);


