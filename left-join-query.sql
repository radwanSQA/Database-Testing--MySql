use classicmodels;

select customers.customerNumber,
       customerName,
	   orderNumber,
       status
from customers
left join orders on
orders.customerNumber =  customers.customerNumber; 

select customers.customerNumber,
       customerName,
	   orderNumber,
       status
from customers
left join orders using(customerNumber);

select
    c.customerNumber,
    c.customerName,
    o.orderNumber,
    o.status
from customers c
left join orders o on o.customerNumber = c.customerNumber
where orderNumber is null;   

select
     lastName,
     firstName,
     customerName,
     checkNumber,
     amount
from employees
left join customers on employeeNumber = salesRepEmployeeNumber
left join payments on payments.customerNumber = customers.customerNumber
order by customerName,checkNumber;  

select o.orderNumber,
       customerNumber,
       productCode
from orders o
left join orderDetails using (orderNumber)
where orderNumber =  10123;


  