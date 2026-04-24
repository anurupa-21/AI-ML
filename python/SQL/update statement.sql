select * from Employees;

select * into #1 from Employees;

select * from #1;

update #1 set Department='HR' where Department is null;

update #1 set Salary=89000 , HireDate ='2023-01-01' where EmployeeID=7;

select * into #2 from Employees;
select * from #2;
update #2 set Department='Finance'
