SELECT * FROM thuchanh_taokhoangoai.orders;
create table customer(
id int auto_increment primary key,
name varchar(30),
address varchar(255),
email varchar(255)
);
create table orders(
id int auto_increment,
staff varchar(30),
primary key(id),
customer_id int,
foreign key(customer_id) references customer(id)
);
insert into customer(name,address,email)
value('phuc', '15 dang dinh van','aaaa@mail.com');
select * from customer;
insert into orders(staff)
value ('phuong');
select * from orders;
select * from customer;
UPDATE `thuchanh_taokhoangoai`.`orders` 
SET `customer_id` = '2' 
WHERE (`id` = '1');