create database programminghero;

use programminghero;

create table student
(
	Roll char(4) primary key,
    Name varchar(50) not null,
    Email varchar(50) unique,
    Address varchar(50),
    -- Age int check(Age>10)
    Age int,
    constraint checking_rule check (age > 10)
);

create table student
(
	Roll char(4),
    Name varchar(20) not null,
    Email varchar(20),
    Address varchar(50),
    Age int,
    primary key(Roll),
    unique(Email),
    check (age > 10)
);

create table student
(
	Roll char(4),
    Name varchar(20) not null,
    Email varchar(20),
    Address varchar(50),
    Age int,
    -- constraint primary key(Roll),
    -- constraint unique(Email),
    -- constraint check (age > 10)
    constraint pk_rule primary key(Roll),
    constraint unique_rule unique(Email),
    constraint checking_rule check (age > 10)
);

insert into Student(Roll,name,email,address,age) values(1,'Nirob','niroborin111@gmail.com','Bandar',26);
-- insert into Student(Roll,name,email,address,age) values(2,'Nirob','orin111@gmail.com','Bandar',2);
insert into Student(Roll,name,email,address,age) values(2,'Nirob','iniroborin111@gmail.com','Bandar',26);
insert into Student(Roll,name,email,age) values(3,'Nirob','imniroborin111@gmail.com',26);

select roll,name,email,address,age from student;
select * from student;

select roll,name from student;

select * 
from student 
where name ='nirob';

select roll,name,age
from student 
where name ='nirob';

select 10+5;
select 10+5 as Sum;

select email+address
from student;

select email+address as sum
from student;

select *
from student
-- where age > 15;
-- where age = 26;
-- where age<>10; -- not equal 10
where age<>26;


select roll,name
from student
where age >15 and name = 'nirob';

select roll,name
from student
where age >15 or email = 'nirob';

select roll,name
from student
where age >15 or (email = 'niroborin111@gmail.com' and name='abul');



create table Library(
	BookName varchar(50) primary key,
    -- Roll char(4)
    who_hired_Roll char(4),
    -- foreign key(who_hired_Roll) references student(Roll)
    constraint foreign key(who_hired_Roll) references student(Roll)
);

create table Course(
	CourseName varchar(10),
    University varchar(10),
    Credit int,
    primary key(coursename,university)
);

select 5+6;

select log10(100) as logValue;

select upper('abc');

