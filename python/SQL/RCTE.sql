--factorial of give no

with RCTE as (
--anchor query
select 1 as n

union all

--recursive query
select n+1 from RCTE where n<=4

)
select exp(sum(log(n))) factorial from RCTE 