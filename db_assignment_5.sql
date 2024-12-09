--assignmnet 5
--1)
select * from employees

--2)
select distinct department_id from employees

--3)
create table students(
	ID int identity(1,1) primary key,
	First_Name varchar(50) not null,
	Last_Name varchar(50) default 'Unknown',
	student_address varchar(100) default 'N/A',
	City varchar(50) default 'N/A',
	Birth_Date Date
)

--4)
insert into students 
values ('Ahmed', 'Ali', 'Downtown', 'Cairo', '1995-01-01')
select * from students



--5)
insert into students (First_Name, Last_Name, student_address, City, Birth_Date)
values ('Ahmed', 'Ali', 'Downtown', 'Cairo', convert(date, '1995-01-01', 23));

-- 6)
update students
set student_address = 'Garden City'
where Last_Name = 'Ali';

--7)
begin transaction;

delete from students
where City = 'Cairo';

rollback transaction;

select * from students;