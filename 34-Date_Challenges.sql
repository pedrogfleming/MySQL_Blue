USE bluecourse;
/* What's a good use case for CHAR?
------
Used for text that we know has a fixed length, e.g., State abbreviations, 
abbreviated company names, sex M/F, etc.
*/
CREATE TABLE students(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	genre CHAR(1) DEFAULT 'x' NOT NULL,
    last_Name VARCHAR(30) NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    age INT    
);

INSERT INTO students (last_Name,first_name) VALUE ('Lopez','Daniel');

SELECT * FROM students;
/*
What's the difference between DATETIME and TIMESTAMP?
------
They both store datetime information, but there's a difference in the range, 
TIMESTAMP has a smaller range. TIMESTAMP also takes up less space. 
TIMESTAMP is used for things like meta-data about when something is created
or updated.
*/

CREATE TABLE inventory (
	item_name VARCHAR(50) NOT NULL,
    price DECIMAL(8,2) NOT NULL,
    quantity INT NOT NULL
);
-- Print out the current time
SELECT CURTIME();

-- Print out the current date
SELECT CURDATE();

SELECT DAYOFWEEK(CURDATE()) AS 'Current day of the week(number)';
SELECT DAYOFWEEK(NOW()) AS 'Current day of the week(number)';
SELECT DATE_FORMAT(NOW(), '%w') + 1 AS 'Current day of the week(number)';

SELECT DAYNAME(CURDATE()) AS 'Current day of the week(name)';
SELECT DAYNAME(NOW()) AS 'Current day of the week(name)';

SELECT date_format(CURDATE(), '%m/%d/%y') AS 'Current date with format mm/dd/yyyy';

SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i') AS 'Current date with format August 8th at 05:26';;

CREATE TABLE tweets2(
	content VARCHAR(140) NOT NULL,
    username VARCHAR(20) NOT NULL,
    time_created TIMESTAMP DEFAULT NOW()
);

INSERT INTO tweets2(content,username) VALUES ('this is my first tweet','raichu95');
SELECT * FROM tweets2;
INSERT INTO tweets2(content,username) VALUES ('this is my second tweet','raichu95');
SELECT * FROM tweets2