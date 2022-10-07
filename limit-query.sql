use classicmodels;

select
     customerName,
     customerNumber,
     creditLimit
from
     customers
order by creditLimit desc limit 5;



select 
     customerName,
     customerNumber
from customers
order by customerName
limit 10;



select 
     customerName,
     customerNumber
from customers
order by customerName
limit 10,10;

select state
from customers
where state is not null
limit 5;




