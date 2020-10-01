SELECT * FROM classicmodels.customers;
drop database if exists classicmodels;
use classicmodels;
SELECT * FROM classicmodels.customers;
DELIMITER //
CREATE PROCEDURE getCusById
(IN cusNum INT(11))
BEGIN
  SELECT * FROM customers WHERE customerNumber = cusNum;
END //
DELIMITER ;
call getCusById(175);

DELIMiTER //
create procedure GetCustomersCountByCity(
in in_city varchar(50),
out total int)
begin
select count(customerNumber)
into total
from customers
where city= in_city;
end //
DELIMITER ;
call GetCustomersCountByCity('Lyon',@total);
select @total;

DELIMITER //
create procedure SetCounter(
inout counter int,
in inc int)
begin 
set counter = counter + inc;
end //
DELIMITER ;
set @counter = 1;
call SetCounter(@counter, 1);
call SetCounter(@counter, 1);
call SetCounter(@counter, 5);
select @counter;