select * from Employees;

insert into Employees values (9,'Jay','','IT',73000,'2022-04-04')
insert into Employees values (10,'Nitin','Shamani','0',54000,'2021-02-22')

select * from Employees where Department=null;

select * from Employees where Department is null;
select * from Employees where Department is not null;