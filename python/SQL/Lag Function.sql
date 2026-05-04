select * from ProfitData;

select *, lag(profit) over (partition by product order by monthnumber) [Previous Month Profit] from ProfitData;

select MonthNumber,MonthName,sum(profit) [Total Profit],lag(sum(profit)) over (order by monthnumber asc) [previoud month profit] from ProfitData group by monthnumber,MonthName order by MonthNumber;