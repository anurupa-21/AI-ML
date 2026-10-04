select * from Sales;

--total sales,avg sales, total quantity,avg quantity for each distinct product
select productid,sum(totalamount) [Sum of sales],sum(quantity) [Total quantity],avg(totalamount) [Avg Amount],avg(quantity) [Avg quantity] from sales group by ProductID  having sum(totalamount)<700 and sum(quantity)=21;