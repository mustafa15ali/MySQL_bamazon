DROP DATABASE IF EXISTS bamazonDB;
CREATE DATABASE bamazonDB;
USE bamazon;
CREATE TABLE products
(
    item_id INT NOT NULL
    AUTO_INCREMENT,
  product_name VARCHAR
    (45) NOT NULL,
  department_name VARCHAR
    (45) NOT NULL,
  price DECIMAL
    (10,2) NOT NULL,
  stock_quantity INT
    (280) NOT NULL,
  primary key
    (item_id)
);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUES
        ("Fortnite", "Video Games", 49.95, 150);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUES("DOOM", "Video Games", 59.99, 200);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUES("Box of Pizza", "Food", 24.50, 50);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUES("Swag Pants", "Apparel", 75.00, 5);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUES("Fav Denim Jeans", "Apparel", 54.25, 35);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUES("Snow Shovel", "Necessities", 42.42, 42);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUES("Men and Black", "Films", 15.00, 25);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUES("Black Panther", "Films", 25.50, 57);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUES("Trouble", "Board Games", 30.50, 35);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUES("Battle Ship", "Board Games", 19.95, 23);
    SELECT *
    FROM products;
 
