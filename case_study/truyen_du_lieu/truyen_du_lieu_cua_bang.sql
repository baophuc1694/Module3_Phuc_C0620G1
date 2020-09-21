use case_study;
insert into `case_study`.`loaikhach`(id_loai_khach, ten_loai_khach)
value(1,'Diamond'),
(2,'Platinium'),
(3,'Gold'),
(4,'Silver'),
(5,'Member');
INSERT INTO `case_study`.`khachhang` (`id_khach_hang`, `id_loai_khach`, `ho_ten_khach_hang`, `ngay_sinh_khach_hang`, `so_CMND_khach_hang`, `sdt_khach_hang`, `email_khach_hang`, `dia_chi_khach_hang`)
 VALUES
 ('1', '1', 'Nguyễn Bảo Phúc', '01/06/1994', '123456789', '0935240702', 'phucnguyen@gmail.com', 'Đà Nẵng'),
 ('2', '2', 'Võ Thị Như Phương', '04/03/1996', '123456788', '0000000000', 'phuong@gmail.com', 'Đà Nẵng'),
  ('3', '3', 'Nguyễn Tiến Quốc', '12/12/1993', '023456788', '0000000001', 'phuong@gmail.com', 'Quảng Trị');
 INSERT INTO `case_study`.`vitri` (`id_vi_tri`, `ten_vi_tri`) 
 VALUES 
 ('1','Lễ Tân'),
 ('2', 'Phục Vụ'),
 ('3','Chuyên Viên'),
 ('4','Giám Sát'),
 ('5','Quản Lý'),
 ('6','Giám Đốc');
 INSERT INTO `case_study`.`bophan` (`id_bo_phan`,`ten_bo_phan`)
 VALUES
 ('1','Sale-Markerting'),
 ('2','Hành Chính'),
 ('3','Phục Vụ'),
 ('4','Quản Lý');
INSERT INTO `case_study`.`trinhdo`(`id_trinh_do`,`trinh_do`)
VALUES
('1','Trung Cấp'),
('2','Cao Đẳng'),
('3','Đại Học'),
('4','Sau Đại Học');
INSERT INTO `case_study`.`nhanvien` (`id_nhan_vien`, `ho_ten`, `id_vi_tri`, `id_trinh_do`, `id_bo_phan`, `ngay_sinh`, `so_CMND`, `luong`, `sdt`, `email`, `dia_chi`)
 VALUES
 ('1', 'Trần Tống', '1', '1', '1', '1/1/1995', '111111111', '4000000', '0935111111', 'aaa@gmail.com', 'Đà Nẵng'),
 ('2', 'Đào Duy Từ', '3', '2', '2', '1/10/1995', '111111112', '5000000', '0935111112', 'bbb@gmail.com', 'Nghệ An'),
 ('3', 'Đào Duy Anh', '2', '1', '4', '10/09/1992', '111111112', '7000000', '0935111113', 'ccc@gmail.com', 'Quảng Nam'),
 ('4', 'Đinh Liệt', '4', '3', '1', '20/07/1990', '111111112', '9000000', '0935111114', 'ddd@gmail.com', 'Hồ Chí Minh')
 