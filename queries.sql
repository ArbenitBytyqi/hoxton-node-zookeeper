--1) Query to create the Animals table
CREATE TABLE Animals (
 id INTEGER,
 species TEXT NOT NULL,
 name TEXT NOT NULL,
 age INTEGER NOT NULL,
 was_fed TEXT NOT NULL,
 PRIMARY KEY (id)
);

--Query to populate the Animals table

INSERT INTO Animals
(species,name,age, was_fed)
VALUES 
("Dog","Rocky",2, "Yes");

INSERT INTO Animals
(species,name,age, was_fed)
VALUES 
("Cat","Cutie",1, "No");

INSERT INTO Animals
(species,name,age, was_fed)
VALUES 
("Lion","Danger",6, "Yes");

INSERT INTO Animals
(species,name,age, was_fed)
VALUES 
("Wolf","Loner",3, "No");

--Query to update dogs age 

UPDATE Animals
SET age = "4"
WHERE id=1;

--Query to update "Dangers" feeding state

UPDATE Animals
SET was_fed = "No"
WHERE name="Danger";

-- Query to Delete the Lion 

DELETE FROM Animals
WHERE name="Danger";

--Query to drop table favorite food 

ALTER TABLE Animals DROP COLUMN favorite_food;

--Query to track Origin

ALTER TABLE Animals ADD COLUMN Origin TEXT;

--Query to track origin of Animals

UPDATE Animals
SET origin = "Kosovo"
WHERE id=1;

UPDATE Animals
SET origin = "Albania"
WHERE id=4;

UPDATE Animals
SET origin = "Albanian Alps"
WHERE id=4;

--Query to feed all animals at the same time

UPDATE Animals
SET was_fed = "Yes";