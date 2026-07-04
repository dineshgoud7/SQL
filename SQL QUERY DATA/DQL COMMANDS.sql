use quickbite_db;
show tables;
select * from customers;
create table employees(emp_id int,emp_name varchar(50),department varchar(50),city varchar(50),salary decimal(10,2));
insert into employees values (101,"Dinesh","IT","Hyderabad",40000.00),
(102, 'Akhila',   'HR',      'Bangalore', 35000.00),
(103, 'Sushma',   'Finance', 'Chennai',   45000.00),
(104, 'Anitha',   'IT',      'Pune',      50000.00),
(105, 'Kalyan',  'Sales',   'Mumbai',    38000.00),
(106, 'Arjun',   'Marketing','Delhi',    42000.00);

select * from employees;

select emp_name from employees;

select * from employees where city="Hyderabad";

select * from employees where salary>40000;

select * from employees where department="HR" and city="Bangalore";

select * from employees where department="HR" or department ="Finance";

select * from employees where not city="Chennai";

insert into employees(emp_id,emp_name,city,salary) values(107,"Akhi","Pune",45000.00);

select * from employees where department is null;

select * from employees where department is not null;