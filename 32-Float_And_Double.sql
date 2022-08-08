USE bluecourse;
CREATE TABLE thingies (price FLOAT);
 
INSERT INTO thingies(price) VALUES (88.45);
 
SELECT * FROM thingies;
 
INSERT INTO thingies(price) VALUES (8877.45);
 
SELECT * FROM thingies;
 
 -- Float will convert the numbers to 0000 to storing the final value in the table, losing data
INSERT INTO thingies(price) VALUES (8877665544.45);
 
SELECT * FROM thingies;