CREATE DATABASE learning_sql;

use learning_sql;

CREATE TABLE topics(
  topic_id INT AUTO_INCREMENT PRIMARY KEY,
  topic_name VARCHAR(255)  NOT NULL, 
  topics_day VARCHAR(255) NOT NULL,
  topics_status TINYINT(255) NOT NULL, 
  topics_date DATE
);

DESCRIBE topics;


CREATE TABLE checklist(
  todo_id INT AUTO_INCREMENT,
  topic_id INT,
  todo VARCHAR(255) NOT NULL,
  is_complete BOOLEAN NOT NULL DEFAULT FAlSE,
  PRIMARY KEY(todo_id,topic_id),
  FOREIGN KEY(topic_id)
   REFERENCES topics (topic_id)
   ON UPDATE RESTRICT ON DELETE CASCADE
);

DESCRIBE checklist;


CREATE TABLE vehicles(
   vehicleId INT,
   year INT NOT NULL,
   make VARCHAR(100) NOT NULL,
   PRIMARY KEY(vehicleId)
 
);


DESCRIBE vehicles;




