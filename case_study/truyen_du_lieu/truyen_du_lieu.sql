

use case_study;
insert into trinh_do (id_trinh_do,trinh_do)
values
	(1,'Trung cấp'),
	(2,'Cao đẳng'),
    (3,'Đại học'),
    (4,'Sau đại học');
    
insert into vi_tri (id_vi_tri,ten_vi_tri)
values
	(1,'Lễ tân'),
	(2,'Phục vụ'),
    (3,'Chuyên viên'),
    (4,'Giám sát'),
    (5,'Quản lý'),
    (6,'Giám đốc');
    
insert into bo_phan (id_bo_phan,ten_bo_phan)
values
	(1,'Sale – Marketing'),
	(2,'Hành chính'),
    (3,'Phục vụ'),
    (4,'Quản lý');
    
insert into loai_khach (id_loai_khach,ten_loai_khach)
values
	(1,'Diamond'),
	(2,'Platinium'),
    (3,'Gold'),
    (4,'Silver'),
    (5,'Member');
    
insert into kieu_thue (id_kieu_thue,ten_kieu_thue, gia)
values
	(1,'Nguyên ngày', 100),
	(2,'Nguyên tuần', 500),
    (3,'Nguyên tháng', 1500),
    (4,'Nguyên quý', 4000),
    (5,'Nguyên năm', 15000);
    
insert into loai_dich_vu (id_loai_dich_vu,ten_loai_dich_vu)
values
	(1,'Villa'),
    (2,'House'),
    (3,'Room');
    
insert into dich_vu_di_kem (id_dich_vu_di_kem,ten_dich_vu_di_kem, gia, don_vi, trang_thai_kha_dung)
values
	(1,'Massage', 100, 'USD', 'con_hang'),
	(2,'Karaoke', 100, 'USD', 'con_hang'),
    (3,'Thức ăn', 50, 'USD', 'con_hang'),
    (4,'Nước uống', 30, 'USD', 'con_hang'),
    (5,'Xe di chuyển', 200, 'USD', 'con_hang');
    
insert into dich_vu (id_dich_vu,ten_dich_vu, dien_tich, so_tang, so_nguoi_toi_da, chi_phi_thue, id_kieu_thue, id_loai_dich_vu, trang_thai)
values
	(1,'Villa Vip', 100, 3, 10, 100000, 1, 1, 'còn hàng'),
	(2,'Villa Pro', 100, 5, 25, 500000, 2, 1, 'còn hàng'),
	(3,'House Vip', 50, 2, 2, 300000, 1, 2, 'còn hàng'),
	(4,'Room Vip', 30, 1, 2, 200000, 2, 3, 'còn hàng'),
	(5,'Room thường', 25, 1, 2, 100000, 1, 3, 'còn hàng');
    
insert into nhan_vien (id_nhan_vien, ho_ten,ngay_sinh, so_cmnd, luong,so_dien_thoai,email,dia_chi,id_vi_tri, id_trinh_do, id_bo_phan)
values
	(101, 'Nguyễn Ngọc Ngạn','1989-01-01', 201000000, 4000000, 0935000000, 'aaa@gmail.com','Hải Châu' , 1, 1, 1),
	(102, 'Nguyễn Văn Linh', '1990-12-01', 201000002, 4500000, 0935000002, 'aab@gmail.com','Quảng Trị', 2, 2, 2),
	(104, 'Thiên Lộ Lộ','1992-12-12', 201000003, 5000000, 0935000003, 'aabc@gmail.com','Nghệ An', 3, 3, 3),
	(105, 'Mã Văn Tài', '1993-12-01', 201000004, 6000000, 0935000001, 'aadb@gmail.com','Quảng Trị', 4, 4, 4),
	(106, 'Lưu Mã Ôn',  '1994-12-01', 201000005, 7000000, 0935000001, 'aabq@gmail.com','Quảng Trị', 5, 2,2),
	(107, 'Lưu Mã Ôn',  '1995-12-01', 201000006, 8000000, 0935000001, 'aabf@gmail.com','Quảng Trị', 6, 4, 4);
    
insert into khach_hang (id_khach_hang, ho_ten, ngay_sinh,so_cmnd,so_dien_thoai,email, dia_chi,id_loai_khach)
values
	(1, 'Nguyễn Bảo Phúc', '1994-06-01',201693999, 0935111111,'aaaaa@gmail.com','Đà Nẵng',1),
	(2, 'Nguyễn Tiến Quốc', '1990-05-22',201693998, 0935111112,'aaaaab@gmail.com', 'Quảng Nam',2),
	(3, 'Nguyễn Trần Đạt', '1998-09-02',201693997, 0935111113,'aaaaac@gmail.com', 'Đà Nẵng',3),
	(4, 'Nguyễn Đưc Vũ', '1997-07-27', 201693996, 0935111114,'aaaaad@gmail.com','Quảng Trị',4),
	(5, 'Nguyễn Tiến', '1997-02-22', 201693995, 0935111115,'aaaaaf@gmail.com','Đà Nẵng',5);
 
	
    
insert into hop_dong (id_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, tong_tien,id_nhan_vien, id_khach_hang, id_dich_vu)
values
	(1,'2020-10-10', '2020-12-10', 2000000, 5000000, 101, 1, 1),
    (2,'2020-09-09', '2020-11-09', 2000000, 5000000, 102, 2, 2),
    (3,'2020-10-10', '2020-12-10', 2000000, 5000000, 104, 3, 3),
    (4,'2020-10-10', '2020-12-10', 2000000, 5000000, 105, 4, 4);
    
insert into hop_dong_chi_tiet (id_hop_dong_chi_tiet, so_luong, id_hop_dong, id_dich_vu_di_kem)
values
	(1, 1, 1, 1),
	(2, 3, 2, 2),
    (3, 4, 3, 3),
    (4, 4, 4, 4);
