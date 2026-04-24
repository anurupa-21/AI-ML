select * from EmployeeRecords where not firstname='John';
select * from EmployeeRecords where not firstname='John' and not salary=60000.0;
select * from EmployeeRecords where not lastname='Miller';
select * from EmployeeRecords where not lastname='Miller' or not department='HR';
select * from EmployeeRecords where salary between 75000 and 85000;
select * from EmployeeRecords where salary not between 75000 and 85000;
--or
select * from EmployeeRecords where not salary  between 75000 and 85000;

select * from EmployeeRecords where department in ('HR','IT');

select * from EmployeeRecords where not department in ('HR','IT');
--or
select * from EmployeeRecords where  department not in ('HR','IT');
