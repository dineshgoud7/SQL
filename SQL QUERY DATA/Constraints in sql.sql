use quickbite_db;
create table students(
student_id int primary key,
email varchar(100) unique ,
age int check (age>=18),
city varchar(50) default "Hyderabad",
name varchar(100) not null
);

insert into students values(101,"akhila@gmail.com",21,"Vijayawada","Akhila");

select * from students;

insert into students(student_id,email,age,name) values(102,"dinesh@gmail.com",22,"Dinesh");
insert into students(student_id,email,age,name) values(103,"dinesh@gmail.com",23,"Dinesh Babu");

select * from students;

insert into students(student_id,email,age,name) values(103,"sushma@gmail.com",18,"Sushma");

insert into students(student_id,email,age,name) values
(104,"anitha@gmail.com",21,"Anitha"),
(105,"kalyan@gmail.com",22,"Kalyan")
;

insert into students(student_id,email,age) values(106,"akhi@gmail.com",20);

