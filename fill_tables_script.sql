INSERT INTO `timmzatlantic`.`employee_data` (`employee_id`, `first_name`, `last_name`, `location`, `salary`) 
    VALUES ('A1564', 'Tony', 'Smith', 'Chicago', 45000), ('A1919', 'Adam', 'Henderson', 'Chicago', 725000), 
    ('A5430', 'Kelsey', 'Adams', 'Remote', 91250), ('A9115', 'Jeremiah', 'Robinson', 'Chicago', 65000), 
    ('A9131', 'Rebecca', 'Sanchez', 'Remote', 180000);;
INSERT INTO `timmzatlantic`.`product` (`product`, `manufacturer`, `cost_per_unit`) 
VALUES ('Sebastian ', 'Wánjù zhìzào shāng', 0.5), ('Floundoodle', 'Toy Makers ', 1.5), 
    ('Labra-mermaid', 'roducent zabawek', 0.75), ('Chiwarmaid', 'fabricante de juguetes', 1.25);;
INSERT INTO `timmzatlantic`.`sales_data` (`order_num`, `store_id`, `product`, `quantity`)
     VALUES (101, 'walmart', 1105, '10,000'), (102, 'walmart', 2210, '10,000'), 
     (103, 'target', 2210, '5,500'), (104, 'costco', 2210, '7,500'), (105, 'costco', 3315, '7,500');;
INSERT INTO `timmzatlantic`.`third_party` (`Name`, `Location`, `Capacity`, `cost_rating`, `Reliability`) 
    VALUES ('Toy Makers', 'USA', 6000, 4, 4), ('fabricante de juguetes', 'Mexico', 2500, 3, 5), 
    ('Wánjù zhìzào shāng', 'China', 10000, 1, 2), ('producent zabawek', 'Poland', 4500, 3, 5);;
INSERT INTO `timmzatlantic`.`shipping_info` (`Order_num`, `location`, `destination`, `carrier`, `tracking_id`) 
    VALUES (101, 'China', 'Chicago', 'DHL', 9946932), (102, 'USA', 'Detroit', 'UPS', 779901), 
    (103, 'China', 'London', 'DHL', 9941105), (104, 'Mexico', 'New York', 'FedEx', 886214);;
