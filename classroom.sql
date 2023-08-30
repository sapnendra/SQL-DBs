use college;
create table student (
	id int primary key,
    name varchar(50),
    age int not null
);

insert into student values(1, "Aman", 26);
insert into student values(2, "Sapnendra", 20);
insert into student values(3, "Sangam", 24);

select * from student;

insert into student values(4, "Saurabh", 22);

select * from student;

create database if not exists college1;

drop database if exists college1;

show databases;

show tables;

create table student2 (
	rollno int primary key,
    name varchar(50)
);

insert into student2 values(211049, "Sapnendra");
insert into student2 values(211038, "Praveen");

select * from student2;

drop table if exists student;

create table student (
	rollno int primary key,
    name varchar(50)
);

insert into student
(name, rollno)
values
("Sapnendra", 049),
("Saurabh", 038),
("Sangam", 040);

select * from student;

drop table if exists student;

drop database if exists college;

create database if not exists LoginDetails;

use LoginDetails;

drop table if exists loginDetail;

create table loginDetail (
	username varchar(50) primary key,
    password varchar(16),
	count int not null
);

insert into loginDetail
(count, username, password)
values
(1, "jai_sapnendra", "hello"),
(2, "jai-sapnendra", "how"),
(3, "jaiSapnendra", "areYou");

select * from loginDetail;

create table temp (
	id int unique
);

insert into temp values(101);
insert into temp values(101);

select * from temp;
