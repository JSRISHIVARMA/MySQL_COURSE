-- DML Commands
use mysqldatabase;
create table employee_d(
employee_id int(3),
employee_name varchar(20),
designation varchar(20),
salary int(10)
);

insert into employee_d values(01,"rishi","IT",100000);
insert into employee_d values(02,"varma","cse",200000);
select * from employee_d;
SET sql_safe_updates = 0;
delete from employee_d where salary =  10000;
truncate table employee_d;
desc employee_d;

-- Update Command
-- it is a DML Command to udate the vlues in the column of a table.for update we need to use where clause mandatory. 

update  employee_d set salary = 10 where salary = 200000;

-- alter command : It is a dl command to alter the table like:
-- adding, changing 
alter table employee_d add (domain varchar(20));
select * from employee_d;
update employee_d set domain = "Finance" where salary >= 100000;
update employee_d set domain = "Health Care" where salary = 10;
select * from employee_d;
-- Dropping specific column using alter
alter table employee_d drop column designation;
-- Modifying column datatype using alter command 
alter table employee_d modify column employee_id bigint;
desc employee_d;

alter table employee_d drop column designation;