use learning_sql;

ALTER TABLE topics MODIFY topics_status VARCHAR(255);

ALTER TABLE checklist ADD testcolumn int;

UPDATE topics 
SET topics_date = '2022-05-05'
WHERE topic_id=2;

ALTER TABLE vehicles ADD model VARCHAR(100) NOT NULL;

ALTER TABLE vehicles
ADD color VARCHAR(50),
ADD note VARCHAR(255);

ALTER TABLE vehicles
MODIFY note VARCHAR(100) NOT NULL;

ALTER TABLE vehicles 
MODIFY year SMALLINT NOT NULL,
MODIFY color VARCHAR(20) NULL AFTER make;

ALTER TABLE vehicles
CHANGE COLUMN note vehicleCondition VARCHAR(100) NOT NULL; 

