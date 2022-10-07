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




