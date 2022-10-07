use classicmodels;

select
   customername,
   country,
   state
from
  customers
where
  country = 'usa' and
  state = 'ca';  



select customername,
       country,
       state,
       creditlimit
from 
       customers
where
       country = 'usa' and
	   state = 'ca' and
       creditlimit > 100000;
       
    
   