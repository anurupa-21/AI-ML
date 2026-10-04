select * from Employees order by Department,Salary desc;
select * from EmployeeRecords where lastname='Miller' and employeeid=3;
select * from EmployeeRecords where lastname='Miller' and employeeid='3';
select * from EmployeeRecords where  department='HR' or department='Finance';
select * from EmployeeRecords where  (department='HR' or department='Finance') and salary=60000.0;