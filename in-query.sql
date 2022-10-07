use classicmodels;

select 
     customerName,
     country
from
      customers
where
      country IN ('USA','France','UK');


select 
     customerName,
     country
from
    customers
where
     country IN ('usa');

select * from Customers
where Country NOT IN ('Germany', 'France', 'UK');

select * from customers;