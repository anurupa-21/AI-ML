select * from EmployeeSalaries;
--incorrect way
select *, LAST_VALUE(EmployeeName) over (order by Salary desc) [emp with lowest salary] from EmployeeSalaries;

--correct way
select *,Last_VALUE(employeeName) over(partition by department order by salary desc rows between unbounded preceding and unbounded following) [Emp with lowest salary],LAST_VALUE(salary) over (partition by department order by salary desc rows between unbounded preceding and unbounded following) [lowest salary] from EmployeeSalaries;