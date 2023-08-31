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
















