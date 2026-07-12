create database triggers_practice;

create table orders(
order_id int primary key,
customer varchar(50),
amount int,
order_date date
);

insert into orders values
(1,'Dinesh',200,'2026-07-09'),
(2,'Akhila',250,'2026-07-10'),
(3,'Kalyan',300,'2026-07-01'),
(4,'Anitha',500,'2026-07-19'),
(5,'Sushma',350,'2026-07-20'),
(6,'Babu',500,'2026-07-11')
;

create table audit_log(
log_id int primary key auto_increment,
action_type varchar(20),
order_id int,
message varchar(100)
);

delimiter $$

create trigger trg_aftr_insert
after insert
on orders
for each row
begin
	insert into audit_log(action_type,order_id,message) values
    ('insert',new.order_id,'New Record Inserted');
end$$

delimiter ;

show triggers;
select * from orders;
insert into orders values(7,'Bob',340,'2026-07-10');

select * from audit_log;


delimiter $$
create trigger trg_after_update
after update
on orders
for each row
begin
	insert into audit_log(action_type,order_id,message) values
    ('update',new.order_id,'Order is Updated');
end$$
delimiter ;

show triggers;

update orders
set amount=500 
where order_id=1;

select * from audit_log;

delimiter $$
create trigger trg_aftr_amt_update
after update
on orders
for each row
begin 
	insert into audit_log(action_type,order_id,message) values
    ('update',new.order_id,concat('Amount changed',old.amount ,' to',new.amount));
end$$
delimiter ;

update orders
set amount=450
where order_id=2;

select * from audit_log;


delimiter $$
create trigger trg_bfr_delete
before delete
on orders
for each row
begin 
	if old.amount>250 then
		signal sqlstate '45000'
        set message_text = 'Cannot delete expensive orders';
	end if;
end$$
delimiter ;

