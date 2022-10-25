DELIMITER $$
CREATE PROCEDURE list_couriers()
    BEGIN
        SELECT * FROM couriers WHERE 1;
    END $$
DELIMITER;