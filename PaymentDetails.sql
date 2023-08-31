create database if not exists PaymentDetails;

use PaymentDetails;

create table if not exists Payment (
	cust_id int primary key,
    cust_name varchar(30),
    pay_mode varchar(25),
    city_name varchar(20)
);

insert into Payment
(cust_id, cust_name, pay_mode, city_name)
values
(101, "Olivia Barratt", "Netbanking", "Portland"),
(102, "Ethan Sinclair", "Credit Card", "Miami"),
(103, "Maya Harnandez", "Credit Card", "Seattle"),
(104, "Liam Donovan", "Netbanking", "Devver"),
(105, "Sofia Nguyen", "Credit Card", "New Orleans"),
(106, "Caleb Foster", "Credit Card", "Minneapolis"),
(107, "Ava Patel", "Debit Card", "Phoenix"),
(108, "Lucas carter", "Netbanking", "Boston"),
(109, "Isabella Martinez", "Netbanking", "Nashville"),
(110, "Jackson Brooks", "Credit Card", "Boston");

select pay_mode, count(cust_name)
from Payment
group by pay_mode;

Update Payment
set cust_id = "111"
where cust_id = "110";

select *
from Payment;

Update Payment
set cust_id = "110"
where cust_id = "111";

select *
from Payment;

update Payment
set pay_mode = "Debit Card"
where cust_id = "110";

select *
from Payment;

update Payment
set pay_mode = "Credit Card"
where cust_id = "110";

select *
from Payment;

set sql_safe_updates=0;









