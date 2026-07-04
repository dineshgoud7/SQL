CREATE DATABASE quickbite_db;

USE quickbite_db;

CREATE TABLE users(user_id int ,username varchar(50),email varchar(100),city varchar(50));

desc users;

alter table users add mobile_number varchar(15);
desc users;


alter table users add wallet_balance decimal(10,2);
desc users;

alter table users add is_premium boolean;
desc users;

alter table users modify column username varchar(100);
desc users;

alter table users rename column mobile_number to phone_number;
desc users;

alter table users drop column city;
desc users;

rename table users to customers;
show tables;

truncate table customers;
select * from customers;