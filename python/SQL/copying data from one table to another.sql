--copying data from existing table to new table

--case1: the new table simply doesn't exist
select * From Sales


--this statement will result in the creation of new_table_1 which will be having structure and records both same as that of sales table
select * into New_Table_1 from Sales

----certain columns to be copied
drop table New_Table_1

select productid,quantity into new_table_1 from Sales;
select * from new_table_1;

--case2: new table structure/table already exists
select top 0 * into new_table_2 from Sales;
select * from new_table_2;
insert into new_table_2 select * from Sales;

----copying certain columns
select * into new_table_3 from sales where 1=0

select * from new_table_3;
insert into new_table_3 (ProductID,SaleDate) select productid,saledate from Sales