use quickbite_db;
show tables;
select * from employees;
select department ,count(*) from employees group by department;

select city ,count(*) from employees group by city;

select department,sum(salary) as total_salary_each_department from employees group by department;

select department , sum(salary)/count(*) as avg_salary from employees group by department;

select department ,max(salary) as highest_salary_each_dept from employees group by department;

select department ,min(salary) as lowest_sal_each_dept from employees group by department;

select department ,count(*) from employees group by department having count(*) >1;

select department ,sum(salary)/count(*) from employees group by department having (sum(salary)/count(*)) > 45000;

select department,city,count(*) from employees group by city,department;

select department ,count(*) from employees where emp_id !=103 group by department having count(*) > 1;