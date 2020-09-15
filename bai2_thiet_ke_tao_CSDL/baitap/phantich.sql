drop database if exists baitap_phantich;
create database baitap_phantich;
use baitap_phantich;
create table customer(
customer_number int not null primary key,
customer_name varchar(50) not null,
contact_lastname varchar(50) not null,
contact_firstname varchar(50) not null,
phone_customer varchar(50) not null,
address_line1 varchar(50) not null,
address_line2 varchar(50),
city varchar(50) not null,
state varchar(50) not null,
postal_code varchar(50) not null,
credit_limit int
);
create table orders(
order_number int primary key not null,
order_date date not null,
required_date date not null,
shipped_date date,
`status` varchar(15) not null,
comments text,
quantity_ordered int not null,
price_each float not null,
customer_number int,
foreign key (customer_number) references customer(customer_number)
);
create table payment(
customer_number int not null primary key,
check_number varchar(50) not null,
payment_date date not null,
amount float not null,
foreign key (customer_number) references customer(customer_number)
);
create table products(
product_code varchar(15) not null primary key,
product_name varchar(70) not null,
producy_scale varchar(10) not null,
product_vendor varchar(50) not null,
product_description text not null,
quantityln_stock int not null,
buy_price float not null,
msrp float not null,
foreign key(product_line) references product_line(product_line)
);
create table product_line(
product_line varchar(50) not null primary key,
text_description text,
image text
);
create table employees(
employee_number int not null primary key,
last_name varchar(50) not null,
first_name varchar(50) not null,
email varchar(50) not null,
job_title varchar(50) not null
);
create  table offices(
office_code varchar(10) not null primary key,
city varchar(50) not null,
phone varchar(50) not null,
address_line1 varchar(50) not null,
address_line2 varchar(50),
country varchar(50) not null,
postal_code varchar(15) not null,
foreign key(office_code) references offices(offcie_code)
);