
--constraints
--condition that can be applied on columns of a table & these condition are to be followed while inserting records into the table

--not null constraint

--case1: we will have to create a new table
create table test_unique
(
SID int unique,
age tinyint not null,
firstname varchar(256) not null unique,
lastname varchar(256)
)
select * from test_unique;

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'test_not_null'

insert into test_unique values (1,22,'Mayank','Mehera')
insert into test_unique values (1,24,'Rohit','Singh')

--case2: the table already exists

alter table test_unique add unique(lastname)