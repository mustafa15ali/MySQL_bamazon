DROP DATABASE IF EXISTS bamazonDB;
CREATE DATABASE bamazonDB;
USE bamazonDB;

CREATE TABLE products(
  item_id INT AUTO_INCREMENT NOT NULL,
  product_name VARCHAR(45) NOT NULL,
  department_name VARCHAR(45) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  stock_quantity INT(10) NOT NULL,
  primary key(item_id)
);

SELECT * FROM products;


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Fortnite", "Video Games", 49.95, 150),
  ("DOOM", "Video Games", 59.99, 200),
  ("Battle Ship", "Board Games", 19.95, 23),
  ("Trouble", "Board Games", 30.50, 35),
  ("Black Panther", "Films", 25.50, 57),
  ("Men and Black", "Films", 15.00, 25),
  ("Snow Shovel", "Necessities", 42.42, 42),
  ("Fav Denim Jeans", "Apparel", 54.25, 35),
  ("Swag Pants", "Apparel", 75.00, 5),
  ("Box of Pizza", "Food", 24.50, 50);

