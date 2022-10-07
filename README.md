<p class="has-line-data" data-line-start="0" data-line-end="4">Install Mysql<br>
Download link :<a href="https://dev.mysql.com/downloads/">https://dev.mysql.com/downloads/</a><br>
Download MySQL Sample Database ( classicmodels)<br>
Sample Database Download Link: <a href="https://www.mysqltutorial.org/mysql-sample-database.aspx">https://www.mysqltutorial.org/mysql-sample-database.aspx</a></p>

### What is Database Testing?<br>
<p class="has-line-data" data-line-start="0" data-line-end="4">Database Testing is a type of software testing that checks the schema, tables, triggers, etc. of<br>
the Database under test.<br>
The 3 types of Database Testing are</p>
<ol>
<li class="has-line-data" data-line-start="4" data-line-end="5">Structural Testing</li>
<li class="has-line-data" data-line-start="5" data-line-end="6">Functional Testing</li>
<li class="has-line-data" data-line-start="6" data-line-end="7">Non-functional Testing</li>
</ol>

### Functional Database Testing<br>
<p class="has-line-data" data-line-start="0" data-line-end="10">Functional Database Testing is a type of database testing that is used to validate the<br>
functional requirements of a database from the end-user’s perspective. The main goal of<br>
functional database testing is to test whether the transactions and operations performed by the<br>
end-users which are related to the database works as expected or not.<br>
Following are the basic conditions that need to be observed for database validations.<br>
● Whether the field is mandatory while allowing NULL values on that field?<br>
● Whether the length of each field is of sufficient size?<br>
● Whether all similar fields have the same names across tables?<br>
● Whether there are any computed fields present in the Database?</p>

### Non-functional testing<br>
<p class="has-line-data" data-line-start="0" data-line-end="4">Non-functional testing in the context of database testing can be categorized into various<br>
categories as required by the business requirements. These can be load testing, Stress Testing,<br>
Security Testing, Usability Testing, and Compatibility Testing, and so on.</p>


### Stored Procedure Testing<br>
#### What is stored procedure<br>
● A stored procedure is a block of SQL statements.<br>
● We can save stored procedures and can be reused multiple times.<br>
● We can also pass parameters to a stored procedure.<br>
#### Advantage<br>
● Reduce network traffic<br>
● Centralize business logic in the database<br>
● Make database more secure</p>


### Checking data integrity and consistency<br>
Following checks are important<br>

- Whether the data is logically well organized?<br>
- Whether the data stored in the tables is correct and as per the business requirements?<br>
- Whether there are any unnecessary data present in the application under test?<br>
- Whether the data has been stored as per as the requirement with respect to data which<br>
has been updated from the user interface?<br>
- Whether the TRIM operations performed on the data before inserting data into the<br>
Database under test?<br>
- Whether the transactions have been performed according to the business requirement<br>
specifications and whether the results are correct or not?<br>
- Whether the data has been properly committed if the transaction has been successfully<br>
executed?<br>
- Whether the data has been rolled backed successfully if the transaction has not been<br>
executed successfully by the end-user?<br>
- Whether the data has been rolled backed if the transaction has not been executed<br>
successfully and multiple heterogeneous databases have been involved in the<br>
transaction in question?<br>
- Whether all the transactions have been executed by using the required design<br>
procedures as specified by the system business requirements?</p>

### Login and User Security Example<br>
The validations of the login and user security credentials need to take into consideration the<br>
following things.</p>
<ol>
<li class="has-line-data" data-line-start="3" data-line-end="8">Whether the application prevents the user from proceeding further in the application in<br>
case of a<br>
● invalid username but valid password<br>
● valid username but invalid password.<br>
● invalid username and invalid password.</li>
<li class="has-line-data" data-line-start="8" data-line-end="10">Whether the user is allowed to perform only those specific operations which are<br>
specified by the business requirements?</li>
<li class="has-line-data" data-line-start="10" data-line-end="11">Whether the data is secured from unauthorized access?</li>
<li class="has-line-data" data-line-start="11" data-line-end="12">Whether there are different user roles created with different permissions?</li>
<li class="has-line-data" data-line-start="12" data-line-end="14">Whether all the users have required levels of access on the specified Database as<br>
required by the business specifications?</li>
<li class="has-line-data" data-line-start="14" data-line-end="17">Check that sensitive data like passwords, credit card numbers are encrypted and not<br>
stored as plain text in Database. It is a good practice to ensure all accounts should have<br>
passwords that are complex and not easily guessed</li>
</ol>


### Here is some database testing checklist you might have used:<br>
- Check if correct data is getting saved in database upon successful page submit<br>
- Check values for columns which are not accepting null values<br>
- Check for data integrity. Data should be stored in single or multiple tables based on<br>
design<br>
- Index names should be given as per the standards e.g.<br>
- IND_&lt;Tablename&gt;<em>&lt;ColumnName&gt;<br>
- Tables should have primary key column<br>
- Null values should not be allowed for Primary key column<br>
- Table columns should have description information available (except for audit columns<br>
like created date, created by etc.)<br>
- For every database add/update operation log should be added<br>
- Required table indexes should be created<br>
- Data should be rolled back in case of failed transactions<br>
- Check if data is committed to database only when the operation is successfully<br>
completed<br>
- Check if input data is not truncated while saving. Field length shown to user on page and<br>
in database schema should be same<br>
- Check numeric fields with minimum, maximum, and float values<br>
- Test stored procedures and triggers with sample input data<br>
- Database name should be given as per the application type i.e. test, UAT, sandbox, live<br>
(though this is not a standard it is helpful for database maintenance)<br>
- Database logical names should be given according to database name (again this is not<br>
standard but helpful for DB maintenance)<br>
- Stored procedures should not be named with prefix “sp</em>”<br>
- Check values for table audit columns (like createddate, createdby, updatedate,<br>
updatedby, isdeleted, deleted date, deleted by etc.) are populated properly<br>
- Check numeric fields with negative values (for both acceptance and non-acceptance)<br>
- Check if radio button and dropdown list options are saved correctly in database<br>
- Check if database fields are designed with correct data type and data length<br>
- Check if all table constraints like Primary key, Foreign key etc. are implemented correctly<br>
- Input field leading and trailing spaces should be truncated before committing data to<br>
database</p>

# practice

### QUERY FOR ClassicModel

<pre>

use classicmodels;

show tables;

select * from customers;

select count(*) as NumberOfColumns from information_schema.COLUMNS where TABLE_NAME = 'customers';

select COLUMN_NAME from information_schema.COLUMNS where TABLE_NAME='customers';

select COLUMN_NAME,DATA_TYPE from information_schema.COLUMNS where TABLE_NAME = 'customers';

select COLUMN_NAME,COLUMN_TYPE from information_schema.COLUMNS where TABLE_NAME = 'customers';

select COLUMN_NAME,IS_NULLABLE from information_schema.COLUMNS where TABLE_NAME = 'customers';

select COLUMN_NAME,COLUMN_KEY from information_schema.COLUMNS where TABLE_NAME = 'customers';
</pre>

### QUERY FOR Record Company - SQL IN 60 Min

<pre>
create database record_company;
use record_company;
CREATE TABLE record(
   test_column INT
);

ALTER table record
ADD another_column varchar(255);

DROP TABLE record;

CREATE TABLE bands(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY(id) 
);

CREATE TABLE albums(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  relaese_year INT,
  band_id INT NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY(band_id) REFERENCES bands(id)
);

INSERT INTO bands(name) VALUES ('Radwan');

INSERT INTO bands(name) VALUES('Minhaj'),('Saif'),('Adnan');

SELECT * FROM  bands;

SELECT * FROM bands LIMIT 2;

SELECT name FROM bands;

SELECT id AS 'ID', name AS 'Band Name' FROM bands;

SELECT * FROM bands ORDER BY name DESC; 

INSERT INTO albums (name,relaese_year, band_id) 
VALUES ('The Number Of beasts',1985,1),
	   ('Power Slave',1984,1),
	   ('Nightmare',2018,2),
	   ('Infintiy',2022,3),
       ('Comming',NULL,4),
	   ('Infinity',2022,3);

SELECT * FROM albums;

SELECT name FROM albums;

SELECT DISTINCT name FROM albums;

UPDATE albums SET relaese_year = 2023 WHERE id=1;

SELECT * FROM albums WHERE relaese_year < 2000;

SELECT * FROM albums WHERE name LIKE '%er%' OR band_id=2;

SELECT * FROM albums WHERE relaese_year = 1984 AND band_id=1;

SELECT * FROM albums WHERE relaese_year  BETWEEN 2000 AND 2018;

SELECT *  FROM albums WHERE relaese_year IS NULL;

DELETE FROM albums WHERE id > 10;

SELECT * FROM albums;

SELECT * FROM bands JOIN albums ON bands.id = albums.band_id;

SELECT * FROM bands INNER JOIN albums ON bands.id = albums.band_id;

SELECT * FROM bands LEFT JOIN albums ON bands.id = albums.band_id;

SELECT * FROM albums RIGHT JOIN bands ON bands.id = albums.band_id;

SELECT AVG(relaese_year) FROM albums;

SELECT band_id, COUNT(band_id) FROM albums GROUP BY band_id;

SELECT b.name AS band_name, COUNT(a.id) AS num_albums
FROM bands AS b
LEFT JOIN albums AS a ON b.id =  a.band_id
GROUP BY b.id;

SELECT b.name AS band_name, COUNT(a.id) AS num_albums
FROM bands AS b
LEFT JOIN albums AS a ON b.id =  a.band_id
GROUP BY b.id
HAVING num_albums =1;

</pre>



