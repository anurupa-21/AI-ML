use employee_details;

select * from EmployeeRecords;

select * from EmployeeRecords where employeeid=2;

select employeeid,firstname from EmployeeRecords where employeeid=2;

select * from EmployeeRecords where salary>=75000.0
select * from EmployeeRecords where salary<=75000.0
select firstname,lastname,department,salary from EmployeeRecords where salary<75000.0
select distinct firstname,lastname,department,salary from EmployeeRecords where salary<75000.0

