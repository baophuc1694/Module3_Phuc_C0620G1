drop database if exists baitap_quan_ly_thu_vien;
create database baitap_quan_ly_thu_vien;
use baitap_quan_ly_thu_vien;
create table category(
id_category int primary key,
`name` varchar(100)
);
create table book(
book_id int primary key,
book_name varchar(50),
book_publisher varchar(50),
book_author varchar(50),
book_publishing_year int,
number_of_publications int,
price int,
image varchar(200),
id_category int,
foreign key (id_category) references category(id_category)
);
create table student(
student_number varchar(15) primary key,
student_name varchar(50),
address varchar(500),
email varchar(50),
image varchar(200)
);

create table libarys_card(
id_card int primary key,
student_number varchar(15),
foreign key(student_number) references student(student_number)
);
create table borrowOrder(
id_card int, 
book_id int,
primary key (id_card, book_id),
foreign key(id_card) references libarys_card(id_card),
foreign key(book_id) references book(book_id)
);
