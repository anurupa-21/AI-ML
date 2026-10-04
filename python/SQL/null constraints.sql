create database constraints
use constraints
--constraints
--condition that can be applied on columns of a table & these condition are to be followed while inserting records into the table

--not null constraint

--case1: we will have to create a new table
create table test_not_null
(
EID int not null,
age tinyint,
firstname varchar(256)
)
select * from test_not_null;

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'test_not_null'

insert into test_not_null values (1,23,'Mayank')
insert into test_not_null values (null,23,'Mayank')

--case2: the table already exists
--we want to make firstname column nullable

alter table test_not_null alter column firstname varchar(256) not null;
insert into test_not_null values (2,34,null)