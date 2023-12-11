CREATE DATABASE IF NOT EXISTS PLACEHOLDER_DATABASE_NAME;
USE PLACEHOLDER_DATABASE_NAME;

-- DROP TABLE IF EXISTS product;
-- DROP TABLE IF EXISTS product_group;

CREATE TABLE IF NOT EXISTS product_group (
    product_group_number INT(3) NOT NULL PRIMARY KEY,
    product_group_name VARCHAR(25) NOT NULL DEFAULT ''
);

CREATE TABLE IF NOT EXISTS product (
    id INT(3) NOT NULL PRIMARY KEY,
    product_name VARCHAR(40) NOT NULL DEFAULT '', 
    description VARCHAR(200) NOT NULL DEFAULT '',
    price DECIMAL(10,2) NOT NULL DEFAULT 0.0,
    product_group INT(2) NOT NULL DEFAULT 1,
    image_url VARCHAR(256) DEFAULT 'images/default-image.png',
    FOREIGN KEY (product_group) REFERENCES product_group (product_group_number) 
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `order` (
    order_number INT(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    order_date_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, 
    amount DECIMAL(10,2) NOT NULL DEFAULT 0.0
);

CREATE TABLE IF NOT EXISTS order_item (
    order_number INT(5) NOT NULL, 
    order_item_number INT(5) NOT NULL,
    product_id INT(3),
    quantity INT(2),
    amount DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (order_number, order_item_number),
    FOREIGN KEY (order_number) REFERENCES `order` (order_number)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (product_id) REFERENCES product (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);