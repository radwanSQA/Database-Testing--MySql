create database hr;

use hr;
/**create**/
create table departments(
   department_id int(11) auto_increment primary key,
   dept_name varchar(100)
 
);


create table employee(
  id int auto_increment primary key,
  first_name varchar(50) not null,
  last_name varchar(50) not null,
  department_id int(11) not null,
     
  foreign key(department_id)
    references departments(department_id)
);

/**insert**/

insert into departments(dept_name) 
values('sales'),
      ('marketing'),
	  ('Finance'),
	  ('Accounting'),
	  ('Warehouse'),
	  ('Production');

insert into employee(first_name,last_name,department_id)
values ('John','Doe',1),
	    ('Buhs','liya',2),
       ('David','Mallan',3);

select department_id,dept_name from departments;

select id,first_name,last_name,department_id from employee;

create view v_employee_info as select 
   id,first_name,last_name,dept_name
from
  employee
    inner join
departments using(department_id) ;  


select * from departments;
select * from employee;


select * from v_employee_info;





