DELIMITER $$
CREATE PROCEDURE list_couriers()
    BEGIN
        SELECT * FROM couriers WHERE 1;
    END $$
DELIMITER ;

CALL list_couriers();

-- --------------------------------------

DROP PROCEDURE IF EXISTS get_customer;

DELIMITER $$
CREATE PROCEDURE get_customer ( 
    IN customer_id INT, 
    OUT name VARCHAR(100) ) 
        BEGIN
            SELECT name FROM customers WHERE customers.id = customer_id;
        END $$
DELIMITER ;

SET @customer_id = 6;
CALL get_customer( @customer_id, @name );
SELECT @name AS Név;

-- ----------------------------------------
