use classicmodels;

show tables;

select * from customers;

select count(*) as NumberOfColumns from information_schema.COLUMNS where TABLE_NAME = 'customers';

select COLUMN_NAME from information_schema.COLUMNS where TABLE_NAME='customers';

select COLUMN_NAME,DATA_TYPE from information_schema.COLUMNS where TABLE_NAME = 'customers';

select COLUMN_NAME,COLUMN_TYPE from information_schema.COLUMNS where TABLE_NAME = 'customers'; 

select COLUMN_NAME,IS_NULLABLE from information_schema.COLUMNS where TABLE_NAME = 'customers';

select COLUMN_NAME,COLUMN_KEY from information_schema.COLUMNS where TABLE_NAME = 'customers';