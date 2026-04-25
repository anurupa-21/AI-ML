--order of execution

select * from Employees

select Department,avg(salary) [Avg Salary] from employees where salary >50000 group by department having avg(salary)>55000 order by department;

--from & join
--where
--group by
--having
--select
--distinct
--orrder by
--top

select distinct top 1 Department,avg(salary) [Avg Salary] from employees where salary >50000 group by department having avg(salary)>55000 order by department;