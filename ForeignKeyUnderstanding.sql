create database if not exists foreignKeyUnderstanding;

use foreignKeyUnderstanding;

create table if not exists dept(
	id int primary key,
    name varchar(20)
);

insert into dept
(id, name)
values
(101, "Science"),
(102, "English"),
(103, "Hindi");

select * from dept;

create table if not exists teacher (
	id int primary key,
    name varchar(20),
    dept_id int not null,
    foreign key (dept_id) references dept(id) 
    on update cascade
    on delete cascade
);

insert into teacher
(id, name, dept_id)
values
(101, "Adam", 101),
(102, "Bob", 103),
(103, "Casey", 102),
(104, "Donald", 102);

select * from teacher;

update dept
set id = 103
where id = 104;







