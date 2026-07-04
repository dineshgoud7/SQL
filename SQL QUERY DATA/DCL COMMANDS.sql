create database company_db;
use company_db;

create table employees(emp_id int primary key,emp_name varchar(50),department varchar(50),salary decimal(10,2));
show tables;
desc employees;

INSERT INTO employees VALUES
(101,'Ellie','IT',50000),
(102,'John','HR',35000),
(103,'David','IT',60000),
(104,'Sarah','Finance',45000),
(105,'Emma','HR',40000);

create user 'hr_user'@'localhost' identified by 'hr123';

select user, host from mysql.user where user ='hr_user';

create user 'finance_user'@'localhost' identified by 'finance123';

create user 'marketing_user'@'localhost' identified by 'marketing123';

grant select on company_db.employees to 'hr_user'@'localhost';

show grants for 'hr_user'@'localhost';

grant select ,update on company_db.employees to 'finance_user'@'localhost';

grant all privileges on company_db.employees to 'marketing_user'@'localhost';

flush privileges;

revoke update on company_db.employees from 'finance_user'@'localhost';

show grants for 'finance_user'@'localhost';

revoke all privileges on company_db.employees from 'marketing_user'@'localhost';

revoke select on company_db.employees from 'hr_user'@'localhost';

create user 'manager_user'@'localhost' identified by 'manager123';

grant select,update on company_db.employees to 'manager_user'@'localhost';
