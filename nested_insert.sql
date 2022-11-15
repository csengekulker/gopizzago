INSERT INTO `deliveries` (delivered_at, customer_id, courier_id, pizza_id)
VALUES 
("2022-11-15", 
(SELECT id FROM `customers` WHERE name="Ashely Albert"), 
(SELECT id FROM `couriers` WHERE phone="0800 1111"),
(SELECT id FROM `pizzas` WHERE name="Margherita"));

-- refactor: date time format store time in double 