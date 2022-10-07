use classicmodels;

create table members(
  member_id int auto_increment,
  name varchar(100),
  primary key(member_id)

);

create table committees(
comittee_id int auto_increment,
name varchar(100),
primary key(comittee_id)  
);



insert into members(name) 
values('John'),('Jane'),('Mary'),('David'),('Amelia');

insert into committees(name)
values('John'),('Mary'),('Amelia'),('Joe');

select * from members;

select * from committees;


select m.member_id,
       m.name as member,
       c.comittee_id,
       c.name as comittee
from members m
inner join committees c on c.name = m.name;



select m.member_id,
       m.name as member,
       c.comittee_id,
       c.name as comittee
from members m
left join committees c on c.name = m.name;


select m.member_id,
       m.name as member,
       c.comittee_id,
       c.name as comittee
from members m right join committees c
on c.name=m.name;


select m.member_id,
       m.name as member,
       c.comittee_id,
       c.name as comittee
from members m
cross join committees c;




