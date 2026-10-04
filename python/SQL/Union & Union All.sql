create table append1 (C1 int,C2 nvarchar(255),C3 int)
insert into append1 values (1,'A',7),
(2,'B',8),
(3,'C',9)



create table append2 (C1 int,C2 nvarchar(255),C3 int)
insert into append2 values (11,'AA',17),
(2,'B',8),
(33,'C1',91)


select * from append1;
select * from append2;

SELECT c1, c2, c3 FROM append1
UNION ALL
SELECT c1, c2, c3 FROM append2;

SELECT c1, c2, c3 FROM append1
UNION 
SELECT c1, c2, c3 FROM append2;

--Number of column present in the select list have to be same
--Data type of the columns have to be same
-- order in which column are written has to be same

select c1,c2,c3 from append1 
union
select c1,c2 from append2;

select c1,c2,c3 from append1 
union
select c1,c3,c2 from append2;

select c1 [column1],c2[column2],c3[column3] from append1 union select c1[col1],c2[col2],c3[col3] from append2;