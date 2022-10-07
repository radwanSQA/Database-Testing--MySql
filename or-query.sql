use classicmodels;

select
     customerName,
     country
from
     customers
where
     country = 'usa' or
     country = 'france';

select 
     customerName,
     country,
     creditLimit
from
     customers
where
     (country='france' or
	 country = 'usa' ) and
     creditLimit > 200000;