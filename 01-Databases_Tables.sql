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

-- DROP TABLE cats; 

CREATE TABLE Pastries(
	Name VARCHAR(50),
    Quantity INT
);

DESC Pastries;
-- DROP TABLE Pastries; 

CREATE TABLE People(
	First_name VARCHAR(20),
    Last_name VARCHAR(20),
    Age INT
);

DESC People;

-- Define a table with a DEFAULT name specified:

CREATE TABLE cats3
  (
    name VARCHAR(20) DEFAULT 'no name provided',
    age INT DEFAULT 99
  );
-- Notice the change when you describe the table:

DESC cats3; 

-- Combine NOT NULL and DEFAULT:

CREATE TABLE cats4
  (
    name VARCHAR(20) NOT NULL DEFAULT 'unnamed',
    age INT NOT NULL DEFAULT 99
  );
DESC cats4;

CODE: Primary Keys
Define a table with a PRIMARY KEY constraint:

CREATE TABLE unique_cats
  (
    cat_id INT NOT NULL,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
  );
DESC unique_cats; 

-- Adding in AUTO_INCREMENT:

CREATE TABLE unique_cats2 (
    cat_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
);

CREATE TABLE Employees(
	Id INT NOT NULL AUTO_INCREMENT,
    Last_Name VARCHAR(255) NOT NULL,
    First_Name VARCHAR(255) NOT NULL,
    Middle_Name VARCHAR(255),
    Age INT NOT NULL,
    Current_Status VARCHAR(30) DEFAULT 'employed' NOT NULL,
    PRIMARY KEY (Id)
);
DESC Employees;

-- Another way of defining a primary key:
-- CREATE TABLE employees (
--     id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
--     first_name VARCHAR(255) NOT NULL,
--     last_name VARCHAR(255) NOT NULL,
--     middle_name VARCHAR(255),
--     age INT NOT NULL,
--     current_status VARCHAR(255) NOT NULL DEFAULT 'employed'
-- );