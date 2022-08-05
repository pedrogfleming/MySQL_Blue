CREATE DATABASE BlueCourse;
use BlueCourse;
CREATE TABLE Tweets (
    Username VARCHAR(15),
    Content VARCHAR(140),
    Num_of_favorites INT
);

CREATE TABLE cats
  (
    name VARCHAR(100),
    age INT
  );

SELECT * FROM tweets;

SHOW TABLES;
SHOW COLUMNS FROM tweets;
DESC tweets;

DROP TABLE cats; 

CREATE TABLE Pastries(
	Name VARCHAR(50),
    Quantity INT
);

DESC Pastries;
DROP TABLE Pastries;

