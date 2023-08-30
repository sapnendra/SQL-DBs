create database if not exists College;
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
(103, "Anoop", 90, "A", "Reewa"),
(104, "Ratnesh", 84, "A", "Amiliya"),
(105, "Paawan", 82, "A", "Chhindwada");

select * from student;