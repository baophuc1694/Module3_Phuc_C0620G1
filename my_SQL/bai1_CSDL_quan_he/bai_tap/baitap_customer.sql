use baitap_customer;
create table customer(
`name` varchar(20),
phone int primary key,
city varchar(30),
country varchar(30));

insert into customer
 value 
('Nhi',000000000,'DN','VN');
select * from customer;
