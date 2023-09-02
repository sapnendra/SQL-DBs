use College;

Alter table student 
add column age int not null default 19;

select * from student;

alter table student
modify age varchar(2);

alter table student
change age stu_age int;

alter table student
drop column stu_age;

alter table student
rename to stu;

alter table stu
rename to student;

truncate table student;