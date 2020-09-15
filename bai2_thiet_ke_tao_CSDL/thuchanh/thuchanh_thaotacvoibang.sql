use thuchanh_thaotacvoibang;
create database thuchanh_thaotacvoibang;
create table suppliers(
suppliers_id int(11) not null auto_increment,
suppliers_name varchar(30) not null,
suppliers_rep varchar(25) not null default 'TBD',
constraint suppliers_pk primary key (suppliers_id));
select * from suppliers;
insert into suppliers(suppliers_name,suppliers_rep)
value('phuc','nguyen');
insert into suppliers(suppliers_name,suppliers_rep)
value('phuong','vo');

