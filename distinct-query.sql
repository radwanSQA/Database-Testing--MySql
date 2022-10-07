use classicmodels;

/** distinct use for remove duplicate row**/
select lastName 
from employees
order by lastName;  

select
   distinct lastName
from employees
   order by
      lastName;

select distinct state
from customers;

select distinct
  state,city
from customers
where state is not null
order by state,city;

select 
  state,city
from
   customers
where
   state is not null
order by
   state,city;




