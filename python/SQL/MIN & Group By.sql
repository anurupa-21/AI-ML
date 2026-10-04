select * from Sales;

select min(quantity) [Minimum Quantity] from Sales;

select min(saleDate) [Mminimum Sales Date] from Sales;
select min(PaymentMethod) [Minimum Payment Method] from Sales;

--show minimum total amount for each storeId
select storeid,min(totalamount) [Minimum Total Amount] from Sales group by storeid;
