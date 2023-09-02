create database innerjoin;
use innerjoin;

create table if not exists student (
	student_id int primary key,
    name varchar(20)
);

drop table if exists student;
drop table if exists course;

insert into student
(student_id, name)
values
(101, "Adam"),
(102, "Bob"),
(103, "Casey");

create table if not exists course (
	student_id int primary key,
    course varchar(20)
);

insert into course
(student_id, course)
values
(102, "English"),
(105, "Math"),
(103, "Science"),
(107, "Computer Science");

select * from student;
 
select * from student as s
left join course as c
on s.student_id = c.student_id
union
select * from student as a
right join course as b
on a.student_id = b.student_id;

select *
from student as a
left join course as b
on a.student_id = b.student_id
where b.student_id is null;

select *
from student as a
right join course as b
on a.student_id = b.student_id
where a.student_id is null;

select *
from student as a
left join course as b
on a.student_id = b.student_id
where b.student_id is null
union
select *
from student as a
right join course as b
on a.student_id = b.student_id
where a.student_id is null;

create table if not exists employee (
	id int primary key,
	name varchar(20),
    manager_id int
);

insert into employee
(id, name, manager_id)
values
(101, "Adam", 103),
(102, "Bob", 104),
(103, "Casey", null),
(104, "Donald", 103);

select * from employee;

select *
from employee as a
join employee as b
on a.id = b.manager_id;

select a.name as manager_name, b.name
from employee as a
join employee as b
on a.id = b.manager_id;

select name from employee
union
select name from employee;

select name from employee
union all
select name from employee;