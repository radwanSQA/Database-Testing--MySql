use classicmodels;

select
     productCode,
     productName,
	 buyPrice
from
    products
where
     buyprice between 90 and 100;


select productCode
       productName,
       buyPrice
from
       products
where
       buyprice not between 20 and 30; 

select productCode
       productName,
       buyPrice
from
       products
where
       buyprice < 20 or buyPrice > 100; 


select orderNumber,
       requiredDate,
        status
from
      orders
where 
     requiredDate between
     cast('2003-01-01' as DATE) and
     cast('2003-01-31' as DATE);
           





