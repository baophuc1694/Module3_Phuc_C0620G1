use classicmodels;
select customerName, phone, city, country
from customer;
select * from customers
where customerName like '%A%'
limit 0, 10;
select * from customers
where `city`
in('Nantes', 'Las Vegas', 'Warszawa','NYC')
limit 0,30;
