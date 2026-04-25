--check constraint
--it check certain condition that can be applied on the column of the table, if this condition fail we will not able to insert records

--Case1:
create table test_check
(
EID int,
firstname varchar(256),
age tinyint check(age>=10)
)
select * from test_check;

insert into test_check values (1,'Mayank','20')
insert into test_check values (2,'Raj','9');

update test_check set eid=11 where eid=1
--case 2:
alter table test_check add check(eid>5)
insert into test_check values (3,'Nitin',34)