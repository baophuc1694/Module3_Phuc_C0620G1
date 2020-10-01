drop database if exists classicmodels;
SELECT * FROM classicmodels.customers;

use classicmodels;
SELECT * FROM classicmodels.customers;
DELIMITER //

CREATE PROCEDURE findAllCustomers()

BEGIN

  SELECT * FROM customers;

END //

DELIMITER ;
call findAllCustomers;
