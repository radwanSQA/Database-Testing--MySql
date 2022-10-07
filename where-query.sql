use classicmodels;

/** where **/

select 
   lastName,
   firstName,
   jobTitle
from 
   employees
where
   jobTitle = 'Sales Rep';


select
  lastName,
  firstName,
  jobTitle,
  officeCode
from
  employees
where
  jobTitle='Sales Rep' and
  officeCode = 1;


select
  lastName,
  firstName,
  jobTitle,
  officeCode
from
  employees
where
   jobTitle = 'Sales Rep' OR
   officeCode = 1
order by
   officeCode,
   jobTitle;

    
select
   firstName,
   lastName,
   officeCode
from 
   employees
where
    officeCode between 1 AND 3
order by
    officeCode;



select  
  firstName,
  lastName
from
   employees
where
   lastName like '%son'
order by firstName;


select
   firstName,
   lastName,
   officeCode
from 
   employees
where
   officeCode in(1,2,3)
order by
   officeCode;  
 

select
   firstName,
   lastName,
   reportsTo
from
   employees
where
   reportsTo is null;

select
  lastName,
  firstName,
  jobTitle
from
   employees
where
   jobTitle <> 'Sales Rep';


select 
  lastName,
  firstName,
  officeCode
from 
  employees
where
  officeCode> 5;


select 
  lastName,
  firstName,
  officeCode
from 
  employees
where
  officeCode <= 4;
