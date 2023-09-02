create database if not exists College;

use College;

create table student(
	rollno int primary key,
    name varchar(50),
    marks int not null,
    grade varchar(1),
    city varchar(20)
);

insert into student
(rollno, name, marks, grade, city)
values
(101, "Anil", 78, "A", "Pune"),
(102, "Sapnendra", 89, "A", "Bhopal"),
(103, "Anoop", 90, "A", "Bhopal"),
(104, "Ratnesh", 84, "A", "Amiliya"),
(105, "Paawan", 82, "A", "Bhopal");

drop table student;

select * from student;

/* for drop a column */
alter table student
drop column age;

/* add a column */
alter table student
add column age int not null;

drop table if exists student;

select * from student;
select name, marks from student;
select city from student;
select distinct city from student;
select * from student where marks > 80;
select * from student where city="Bhopal" and marks > 80;
select * from student where marks+12 > 100;
select * 
from student 
where city="Bhopal" or marks > 80;
select *
from student
where marks between 85 and 100;
select *
from student
where city in ("Bhopal", "Amiliya", "Gujrat");
select *
from student
where city not in ("Bhopal", "Gurgaon", "Amiliya");
select *
from student
where marks > 80
limit 3;
use College;
select count(rollno)
from student;

use College;

select city, avg(marks)
from student
group by city;

select city, avg(marks)
from student
group by city
order by city asc;

use College;

update student
set marks = marks + 1;

select * from student;

delete from student
where marks <= 82;

select * from student;

alter table student
change name full_name varchar(20);

delete from student
where marks < 80;

alter table student 
drop column grade;

use College;

create table if not exists result (
	rollno int primary key,
    name varchar(20),
    marks int not null,
    city varchar(20)
);

insert into result
(rollno, name, marks, city)
values
(101, "Anil", 78, "Pune"),
(102, "Bhumika", 93, "Mumbai"),
(103, "Chetan", 85, "Mumbai"),
(104, "Dhruv", 96, "Delhi"),
(105, "Emanual", 92, "Delhi"),
(106, "Farah", 82, "Delhi");

select * from result;

create view view1 as
select rollno, name, marks from result;

select * from view1;

drop view view1;

select avg(marks) from result;

select * from result
where marks > 87.6667;

select * from result
where marks > (select avg(marks) from result);

 select *
 from result
 where rollno in (
	select rollno 
    from result
    where rollno % 2 = 0
);

select max(marks)
from result;

select max(marks)
from (
	select * 
    from result 
    where city = "Delhi"
) as temp;