DROP DATABASE IF EXISTS ecommerce_db;

CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE category (
    id INT NOT NULL PRIMARY KEY,
    category_name VARCHAR (30) NOT NULL
);

CREATE TABLE product (
    id INT NOT NULL PRIMARY KEY,
    product_name VARCHAR (30) NOT NULL,
    price DECIMAL NOT NULL DEFAULT 10.00,
    stock INT NOT NULL DEFAULT 10,
    category_id INT REFERENCES category(id)  
);

CREATE TABLE tag (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR
);

CREATE TABLE ProductTag (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_id INT REFERENCES Product(id),
    tag_id INT REFERENCES Tag(id)
);

