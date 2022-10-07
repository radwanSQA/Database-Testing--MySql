use classicmodels;

select customerName,
       country,
       salesRepEmployeeNumber
from 
       customers
where salesRepEmployeeNumber IS NUll
order by customerName;


select customerName,
       country,
       salesRepEmployeeNumber
from 
       customers
where salesRepEmployeeNumber IS NOT NUll
order by customerName;