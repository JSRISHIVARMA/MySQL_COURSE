use mysqldatabase;
-- create table example7(empid int primary key , empname varchar primary key);
create table example8(empid int, empname varchar(10),salary int, primary key(empid,empname,salary));
alter table example8 add constraint primary12 primary key(empid);

insert into example7 values(1, "varma", 10000),(2, "rishi", 1000),(3,"varma",1000);

delete from example7 where empid = 1;
desc exampl7;
select * from department;

-- set Null
create table example10(empid int primary key,empname varchar(10),salary int);
drop table example11;
create table example11(depID int,depname varchar(10),empid int,foreign key(empid) references example10(empid) on delete set null);
insert into example10 values(1,"rishi",10000),(2,"varma",1000),(3,"rishi",10000);
insert into example11 values(1,"IT",1),(2,"rishi",2),(3,"CSE",3);
select * from example10;
select * from example11;

-- Check Constraint --> It is constraint applied to the values enter are vaild or not based
 
create table example12(empid int,empname varchar(10),salary int,check(salary between 1 and 1000));
create table example13(empid int,empname varchar(10),age int,check(age between 18 and 60));
insert into example13 values(1,"Rishi",20),(2,"Rishi",55),(3,"Rishi",60);

insert into example12 values(1,"Rishi",100);

create a table from anoter table
-- some special comparasion Operators: