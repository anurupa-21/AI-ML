select * from Sales;

select paymentmethod , sum(totalamount) as [Sum of sales] from Sales group by PaymentMethod;

select productId,paymentmethod,sum(totalamount) [sum of sales] from sales group by ProductID,PaymentMethod order by ProductID;