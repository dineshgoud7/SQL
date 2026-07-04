use quickbite_db;

create table users(
user_id int,
name varchar(100),
email varchar(50),
city varchar(100),
wallet_balance decimal(10,2) 
);

insert into users values (1,"Dinesh","dinesh@gmail.com","Guntur",18090.00);
insert into users values (2,"Akhila","akhila@gmail.com","Vijayawada",20000.00),
(3,"Sushma","sushma@gmail.com","Vijayawada",32000.00),
(4,"Anitha","anitha@gmail.com","Guntur",20000.00),
(5,"Kalyan","kalyan@gmail.com","Guntur",29233.00);

select * from users;

SET SQL_SAFE_UPDATES = 0;
update users set wallet_balance = 22000.00 where user_id=1;
update users set wallet_balance = 25000.00 where user_id=2;

update users set city ="Vijayawada" where user_id=1;

Delete from users where user_id=1;


select * from users;