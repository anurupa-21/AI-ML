select * from Employees;

select * into #1 from Employees;

--Ex:1
with CTE1 as(select * from #1 where EmployeeID in (1,2)), CTE2 as(select * from #1 where EmployeeID in (3,4))
select * from cte1 union all select * from cte2

--Ex:2
with CTE3 as ( select employeeid,firstname from #1 where EmployeeID=1),cte4 as (select employeeid,firstname from #1 where EmployeeID in(3))
select * into #2 from(select * from cte3 union all select * from cte4) X

select * from #2

--ex:3
with CTE3 as ( select employeeid,firstname from #1 where EmployeeID=1),cte4 as (select employeeid,firstname from #1 where EmployeeID in(3))
insert into #2 select * from(select * from cte3 union all select * from cte4) X

select * from #2
--ex:4
with CTE3 as ( select employeeid,firstname,salary from #1 where EmployeeID=2),cte4 as (select employeeid,firstname,salary from #1 where EmployeeID in (4))
delete from #2 where employeeid in (select distinct employeeid from cte3 union all select distinct employeeid from cte4) 

select * from #2

--ex:5

with CTE3 as ( select employeeid,firstname,salary from #1 where EmployeeID=9),cte4 as (select employeeid,firstname,salary from #1 where EmployeeID in (10))
update #1 set EmployeeID=100 where employeeid in (select distinct employeeid from cte3 union all select distinct employeeid from cte4) 

select * from #1