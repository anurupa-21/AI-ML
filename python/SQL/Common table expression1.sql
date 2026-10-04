/* CTE in SQL is a temporary result set that you can reference within a SELECT,INSERT,UPDATE or DELETE statement. CTE are defined using the WITH keyword, and they can make complex queries easier to write,understand and maintain by breaking them into simpler parts */


select * from Employees;

select * into #temp1 from Employees;

select * from #temp1;

--Ex-1
WITH CTE as (
select * from #temp1)

select * from CTE;

--Ex:2
with Test_CTE as ( select employeeid,firstname from #temp1 where employeeid in (2,4))
select * from Test_CTE

--Ex:3
with CTE1 as (select * from #temp1 where employeeid in (1,2,3))
select * into #temp2 from CTE1;

select * from #temp2;

--Ex:4
with CTE2 as (select * from #temp1 where EmployeeID in (2,4,6))
update #temp1 set EmployeeID=101 where EmployeeID in (select distinct employeeid from cte2)
select * from #temp1

--Ex:5
with CTE3 as (select * from #temp1 where EmployeeID=1)
delete from #temp1 where employeeId in (select distinct employeeid from CTE3)
select * from #temp1

--Ex:6
with CTE4 as (select * from #temp1 where EmployeeID in (101))
insert into  #temp1 select * from CTE4
select * from #temp1





