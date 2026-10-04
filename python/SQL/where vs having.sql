select * from Sales;
select * from Sales where TotalAmount>=161;
select productid,sum(totalamount)[sum of sales] from Sales group by ProductID having sum(totalamount)<700;
select productid,sum(totalamount)[sum of sales] from Sales where TotalAmount>=161 group by ProductID;
select productid,sum(totalamount)[sum of sales] from Sales where TotalAmount>=161 group by ProductID having sum(totalamount)>250 order by productId desc,sum(totalamount) asc;