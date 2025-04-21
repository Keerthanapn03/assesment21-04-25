create table students1(
id int primary key ,
name varchar(50),
email varchar(50) unique,
age int,
marks decimal
);

insert into students1 values(1,'Ram','ram12@gmail.com',20,99); 
insert into students1 values(2,'Seeta','seeta@gmail.com',21,98); 
insert into students1 values(3,'Geeta','geetha34@gmail.com',18,77); 
insert into students1 values(4,'Pooja','pooja234@gmail.com',22,69); 
insert into students1 values(5,'Rhul','rahul8812@gmail.com',19,100); 
insert into students1 values(6,'Ranga','raangaa@gmail.com',17,42); 

select * from students1;

Fetch student details where age > 21.
select * from students1 where age>21;

Update the email of the student with id = 5 to
'rahul@gmail.com'.
update students1 set email='rahul@gmail.com' where id=5;
update students1 set name='Rahul' where id=5;

Delete all students with age < 18.
delete from students1 where age<18;
rollback;

select * from students1 order by marks desc offset 1 limit 1 ;


create table studentss(
id int primary key,
name varchar(50),
age int
);

insert into studentss values(1,'Rahul',22); 
insert into studentss values(2,'Priya',21); 
insert into studentss values(3,'Akash',23);

select * from studentss;

create table courses(
course_id int,
student_id int,
course_name varchar(50)
);

insert into courses values(101,1,'Java'); 
insert into courses values(102,2,'Python'); 
insert into courses values(103,1,'SQL');

select * from courses;

select s.name ,c.course_name from courses c inner join studentss s where s.id=c.student_id;











