--SQL COMMANDS--
-- #1 Add ENUM column 
ALTER TABLE sales_data
    ADD order_status ENUM('pending', 'approved', 'preparing', 'in-transit', 'delivered')
    NOT NULL;

-- #2a insert row (returns error)
INSERT INTO sales_data
    VALUES (106, 'Amazon', 1105, 100000, NULL); --returns error
-- #2b insert row (no error)
INSERT INTO sales_data
    VALUES (106, 'Amazon', 1105, 100000, 'approved'); --no error

-- #3 change existing data in new column
UPDATE sales_data
    SET order_status = 'delivered'
    WHERE order_num = 101;
UPDATE sales_data
    SET order_status = 'delivered'
    WHERE order_num = 102;
UPDATE sales_data
    SET order_status = 'in-transit'
    WHERE order_num = 103;
UPDATE sales_data
    SET order_status = 'preparing'
    WHERE order_num = 104;

-- #4 Delete record
DELETE FROM sales_data WHERE order_num = 106;

--#5 Auto-increment
ALTER TABLE sales_data MODIFY order_num INTEGER NOT NULL AUTO_INCREMENT;
INSERT INTO sales_data(store_id, product, quantity, order_status)
    VALUES('Amazon', 1105, 1500, 'preparing');

--#6 Default command
ALTER TABLE sales_data
    ALTER order_status SET DEFAULT 'pending';
INSERT INTO sales_data(store_id, product, quantity)
    VALUES('Amazon', 2210, 5000);