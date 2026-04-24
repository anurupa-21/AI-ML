select * from Employees;

select * into #3 from Employees;

select * from #3;

delete from #3 where LastName='' or Department='0';

select * into #4 from Employees;

select * from #4;

delete from #4 ;

truncate table #3;

drop table #3;

--Delete: delete certain records from table
--if we will use delete without where condition , all record from table will be deleted, but structure remain intact
--Truncate: delete all records from table but structure of table remains intact
--Drop: All records will be deleted plus table structure will also be removed 