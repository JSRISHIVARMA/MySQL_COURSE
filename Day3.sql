use mysqldatabase;

-- Not Null Constrain
create table example1(empId int Not Null,empName varchar(20),empsalary int);
desc example1;
insert into example1 value(0, "Rishi", 100000);
insert into example1 value(Null, "Rishi", 100000);
select * from example1;

-- Unique Constrain 
create table example2(empId int unique,empName varchar(20),empsalary int);
desc example2;
insert into example2 value(0, "Rishi", 100000);
insert into example2 value(0, "Rishi", 100000);
select * from example1;
alter table example1 add constraint uni1 unique(empID);
desc example1;
-- check table Constrain
truncate table example1;

-- composite Uniqe Key : it is a table level Constrain
create table example3(empId int,empName varchar(20),emp_department int,Unique(empID,empName,emp_department));
desc example3;

-- primary Key  => It is Combination of Not Null + Unique Constraints
-- It can be applied as a column level or table level
create table example4(empId int primary key,empName varchar(20),salary int);
insert into example4 values(1,"Varma",10000);
desc example4;

-- Composite Primary Key
create table example5(empId int ,empName varchar(20),salary int,primary key(empID,empName,Salary));
alter table example5 add constraint primary12 primary key(empID ,empName,salary);
desc example5;
-- Foreign Key:- It is table level constraint which is used to apply relationship between tables
/*
Before creating the foreign key to the table ,we need to creating a table with primary key ,
then we need to refer table with primary key in the creation of foreign key
1)the table with primary key is parent table
2)the table with foreign key is Child table table	
*/

create table example6(emp_ID int,empName varchar(20),salary int);
create table example7(empID int,empName varchar(20),salary int,foreign key(empID) references example6(empID));
