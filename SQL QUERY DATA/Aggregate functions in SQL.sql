use quickbite_db;
show tables;
select * from employees;

select * from employees order by salary asc;

select * from employees order by salary desc;

select * from employees order by emp_name;

select count(*) as emp_count from employees;

select sum(salary) from employees;

select avg(salary) from employees;

select sum(salary)/count(*) as emp_avg_salary from employees;

select max(salary) from employees;

select min(salary) from employees;

select count(city) from employees where city="Hyderabad";

select avg(salary)from  employees where department="IT";


