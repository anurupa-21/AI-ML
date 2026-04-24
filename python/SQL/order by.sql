use employee_details;

select * from Employees;

select * from [dbo].[Employees] order by Salary;
select * from [dbo].[Employees] order by Salary desc;
select * from Employees order  by firstname asc,salary desc;
select * from Employees order  by department asc,salary desc;