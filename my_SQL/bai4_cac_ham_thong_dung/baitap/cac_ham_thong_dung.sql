drop database if exists baitap_cac_ham_thong_dung;
create database baitap_cac_ham_thong_dung;
use baitap_cac_ham_thong_dung;
create table student(
id_student int ,
name_student varchar(50),
age_student int,
course varchar(5),
money int
);
insert into student(id_student, name_student, age_student, course, money)
value(1, 'Hoang', 21, 'CNTT', 400000),(2, 'Viet', 19, 'DTVT', 320000),(3, 'Thanh', 18, 'KTDN', 400000),(4, 'Nhan', 19, 'CK', 450000),
(5, 'Huong', 20, 'TCNH', 500000),(5, 'Huong', 20, 'TCNH', 200000);
select * from student;
select id_student, name_student, age_student, course, money
from student
where id_student = 5 and name_student = 'Huong';
select name_student,sum(money)
from student
where name_student = 'Huong';
select name_student
from student
group by name_student; 