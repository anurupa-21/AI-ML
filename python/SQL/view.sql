select * from Employees;

select * into emp_bkp from Employees;

select * from emp_bkp;

-- a view is a virtual table, it is a stored SQL query
--it helps in reducing the complexity of code
--help in implementing security

create view view_1 as (
select * from emp_bkp
)

select * from view_1

create view view_2 as 
(
select employeeid,firstname,lastname,email,departmentid,hiredate from emp_bkp 
)
select * from view_2
-- updating view will also update base table
update view_1 set EmployeeID=100