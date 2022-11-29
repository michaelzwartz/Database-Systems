CREATE TABLE IF NOT EXISTS `timmzatlantic`.`employee_data` 
    (`employee_id` varchar(5), `first_name` varchar(8), 
    `last_name` varchar(9), `location` varchar(7), 
    `salary` int(6)) 
    DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;;
CREATE TABLE IF NOT EXISTS `timmzatlantic`.`product` 
    (`product` varchar(13), `manufacturer` varchar(22), 
    `cost_per_unit` decimal(3,2)) 
    DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;;
CREATE TABLE IF NOT EXISTS `timmzatlantic`.`sales_data` 
    (`order_num` int, `store_id` varchar(10), `product` int, 
    `quantity` int, PRIMARY KEY (order_num)) 
    DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;;
CREATE TABLE IF NOT EXISTS `timmzatlantic`.`third_party` 
    (`Name` varchar(22), `Location` varchar(6), 
    `Capacity` int(5), `cost_rating` int(1), 
    `Reliability` int(1)) 
    DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;;
CREATE TABLE IF NOT EXISTS `timmzatlantic`.`shipping_info` 
    (`Order_num` int(3), `location` varchar(6), 
    `destination` varchar(8), `carrier` varchar(5), 
    `tracking_id` int(7)) 
    DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;;

