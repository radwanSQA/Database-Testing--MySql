use classicmodels;
/** order by **/
select contactFirstName
from customers 
order by
    contactLastName asc;


select contactFirstName,contactLastName 
from customers
order by
     contactFirstName asc,
     contactLastName desc;

select * from orderDetails;


select
   orderNumber,
   orderLineNumber,
   quantityOrdered * priceEach
from
   orderDetails
order by
   quantityOrdered * priceEach desc;

select 
   orderNumber,
   status
from 
   orders
order by field(status,
			   'In Process',
				'On Hold',
				'Cancelled',
				'Resolved',
				'Disputed',
				'Shipped');


select 
    firstName,
    lastName,
    reportsTo
from
  employees
order by
  reportsTo;