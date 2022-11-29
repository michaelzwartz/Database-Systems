LOAD DATA LOCAL INFILE '/Users/mtzwa/Documents/Git Hub/Database-Systems/employee-data.csv'
	INTO TABLE employee_data
	FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '/Users/mtzwa/Documents/Git Hub/Database-Systems/product.csv'
	INTO TABLE product
    FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '/Users/mtzwa/Documents/Git Hub/Database-Systems/sales-data.csv'
	INTO TABLE sales_data
	FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'    
	IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '/Users/mtzwa/Documents/Git Hub/Database-Systems/shipping-info.csv'
	INTO TABLE shipping_info
	FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'    
	IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '/Users/mtzwa/Documents/Git Hub/Database-Systems/third-party.csv'
	INTO TABLE third_party
	FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'    
	IGNORE 1 ROWS;