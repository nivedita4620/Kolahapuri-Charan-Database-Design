create database kolhapuri_charan_db;
use kolhapuri_charan_db;
CREATE TABLE role(
role_name VARCHAR (50),
 role_description VARCHAR (150));
 
 CREATE TABLE user_role(
 user_id INT PRIMARY KEY AUTO_INCREMENT,
 role_id int);
 
 CREATE TABLE Product(
 product_id INT PRIMARY KEY AUTO_INCREMENT,
 product_actual_price float ,
 product_description VARCHAR(100),
 product_discounted_price FLOAT ,
 product_name varchar(50));
 
CREATE TABLE USER(
user_name varchar(100) primary key,
user_first_name varchar(100),
user_last_name varchar(100),
user_password varchar(10));


 CREATE TABLE product_images(
 image_id int primary key,
 product_id int,
 foreign key (product_id) 
 references product(product_id)); 
 
 CREATE TABLE image_model(
 id int primary key auto_increment,
 name varchar(100),
 pic_type varchar(100),
 type varchar(100));
 
 CREATE TABLE register(
 username varchar (100), 
 firstname varchar(100), 
 lastname varchar(100),
 password varchar(10));
 
 CREATE TABLE order_details(
 order_id int primary key auto_increment,
 order_alternate_contact_number varchar(10),
 order_amount float ,
 order_contact_number varchar(10),
 order_full_name varchar (100),
 order_full_order varchar(50),
 order_status varchar(50),
 product_product_id int,
 user_user_name varchar(50),
 transaction_id int);
 
 CREATE TABLE Cart(
 cartId int primary key auto_increment,
 product varchar(100),
 user varchar(100));
 
 CREATE TABLE bill(
 fullname varchar (100),
 fulladdress varchar(100),
 order_contact_number varchar(10),
 foreign key (order_contact_number) 
 references 
 order_details(order_contact_number));
 

 
 

