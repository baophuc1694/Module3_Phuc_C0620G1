use baitap_khoachinh_khoangoai;
drop database if exists baitap_khoachinh_khoangoai;
create database baitap_khoachinh_khoangoai;
create table customer(
customer_number int auto_increment primary key,
`name` varchar(200) not null,
address varchar(200),
email varchar(200) not null,
phone_number int(10)
);

create table accounts(
account_number int primary key,
account_type varchar(10),
date_of_account date,
balance varchar(30),
customer_number int,
foreign key (customer_number) references customer(customer_number)
);
create table transactions(
tran_number bigint primary key,
account_number int,
date_transactions date,
amounts bigint,
descriptions text(500),
foreign key(account_number) references accounts(account_number)
); 

