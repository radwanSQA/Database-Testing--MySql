use classicmodels;

select employeeNumber,
        lastName,
        firstName
from
        employees
where
        firstName like 'a%';


select employeeNumber,
        lastName,
        firstName
from
        employees
where
       lastName Like '%on';


select employeeNumber,
        lastName,
        firstName
from
        employees
where 
        lastName like '%on%';

select employeeNumber,
        lastName,
        firstName
from
        employees
where
        firstName like 'T_m';


select employeeNumber,
        lastName,
        firstName
from
        employees
where 
        lastName not like 'B%';


select productCode,
       productName
from 
       products
where
        productCode like '%\_20%';  
       



