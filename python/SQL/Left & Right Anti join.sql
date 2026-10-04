select * from table1 a left join table2 b on a.C1=b.C1 where b.C3 is null; 
select * from table1 a right join table2 b on a.C1=b.C1 where a.C2 is null; 
