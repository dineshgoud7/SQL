create database bank_db;
use bank_db;

create table accounts(
account_number int primary key,
customer_name varchar(50),
account_type varchar(50),
balance decimal(10,2)
);

insert into accounts values
(1001,"Ellie","Savings",50000),
(1002,"John","Savings",30000),
(1003,"Sarah","Current",75000),
(1004,"David","Savings",25000),
(1005,"Emma","Current",60000)
;

select * from accounts;

start transaction;

update accounts set balance=balance-10000 where account_number=1001;

update accounts set balance=balance+10000 where account_number=1002;

commit;

select * from accounts;

start transaction;

update accounts set balance=balance-20000 where account_number = 1003;

select * from accounts;

rollback;

start transaction;

update accounts set balance=balance+5000 where account_number=1002;

savepoint sp1;

update accounts set balance =  balance + 8000 where account_number=1005;

savepoint sp2;

update accounts set balance =balance -3000 where account_number=1004;

rollback to sp2;

select * from accounts;

start transaction;

update accounts set balance =  balance + 2000 where account_number=1001;

savepoint s1;

select * from accounts;

update accounts set balance =  balance + 3000 where account_number=1002;

savepoint s2;
update accounts set balance =  balance + 4000 where account_number=1003;
savepoint s3;

rollback to s2;


start transaction;

select * from accounts;

update accounts set balance=balance+1000 where account_number=1004;

savepoint sp_test;

update accounts set balance=balance+2000 where account_number=1005;

release savepoint sp_test;
commit;

select * from accounts;

select * from accounts where balance=(select max(balance) from accounts);

select * from accounts where balance=(select min(balance) from accounts);

select sum(balance)/count(*) as avg_balance from accounts;

select avg(balance) from accounts;

select * from accounts where account_type="Current";