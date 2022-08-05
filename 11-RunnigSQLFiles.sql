SHOW TABLES;
SELECT * FROM cats;
DROP TABLE cats;
 
-- mysql-ctl cli
CREATE DATABASE cat_app;
use cat_app;
 CREATE TABLE cats
    (
        cat_id INT NOT NULL AUTO_INCREMENT,
        name VARCHAR(100),
        age INT,
        PRIMARY KEY(cat_id)
    );
-- source first_file.sql
 
DESC cats;
 
 
 
INSERT INTO cats(name, age)
VALUES('Charlie', 17);
 
INSERT INTO cats(name, age)
VALUES('Connie', 10);
 
SELECT * FROM cats;
 
-- source testing/insert.sql