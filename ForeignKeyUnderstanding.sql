create database if not exists foreignKeyUnderstanding;

use foreignKeyUnderstanding;

create table if not exists course (
	id int primary key,
    name varchar(20)
);

insert into course
(id, name)
values
(101, "Science"),
(102, "English"),
(103, "Hindi");

select * from course;

create table if not exists teacher (
	id int primary key,
    name varchar(20),
    dept_id int not null
);

insert into teacher
(id, name, dept_id)
values
(101, "Adam", 101),
(102, "Bob", 103),
(103, "Casey", 102),
(104, "Donald", 102);

select * from teacher;