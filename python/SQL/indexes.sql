-- Index

select * from Employees

create index IX_1 on Employees (salary desc)

create index IX_2 on Employees(firstname,lastname)

drop index Employees.IX_1