use classicmodels;

select productCode,
       productName,
       textDescription
from   products p
inner join productlines pl 
on   p.productLine = pl.productLine;  


select o.orderNumber,
       o.status,
       sum(quantityOrdered * priceEach) total
from orders o
inner join orderdetails od
on o.orderNumber = od.orderNumber
group by orderNumber;

select orderNumber,
       orderDate,
       orderLineNumber,
       productName,
       quantityOrdered,
       priceEach
from   orders
inner join orderdetails using (orderNumber)
inner join products using(productCode)
order by
          orderNumber,
          orderLineNumber;



select orderNumber,
       orderDate,
       customerName,
       orderLineNumber,
       productName,
       quantityOrdered,
       priceEach
from orders
inner join orderdetails using (orderNumber)
inner join products using (productCode)
inner join customers using(customerNumber)
order by orderNumber,orderLineNumber;
      

select 
       orderNumber,
       productName,
       msrp,
       priceEach
from   products p
inner join orderdetails o
on p.productcode = o.productCode
and p.msrp > o.priceEach
where p.productcode = 'S10_1678';
     




     