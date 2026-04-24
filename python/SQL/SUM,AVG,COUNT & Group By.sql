select * from Sales;

select sum(quantity) [Total Quantity] from Sales;

select sum(quantity) [Total Quantity], sum (totalamount) [Sum Of Amount] from Sales;

select avg(quantity) [Average quantity] from Sales;

select avg(quantity) [Average Quantity],avg(totalamount) [Average Of Amount] from Sales;

--sum of quantity, sum of total amount,avg of quantity,avg of total amount for each distinct product

select productid, sum(quantity) [Total Quantity], sum (totalamount) [Sum Of Amount],avg(quantity) [Average Quantity],avg(totalamount) [Average Of Amount] from Sales group by ProductID;

--sum of quantity, sum of amount, avg of quantity & avg of amount for distinct combination of productid & store id

select  sum(quantity) [Total Quantity], sum (totalamount) [Sum Of Amount],avg(quantity) [Average Quantity],avg(totalamount) [Average Of Amount],productid,StoreID from Sales group by ProductID,StoreID;

select count(*) [Number of Rows] from Sales;

select count(paymentmethod) [No of Records] from Sales;

select count(distinct productid) [Distinct Product] from Sales;
select paymentmethod,count(distinct PaymentMethod) [Distinct Payment method] from Sales group by PaymentMethod;
select paymentmethod,count(*) [No. Of Records] from Sales group by PaymentMethod;




