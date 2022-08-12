CREATE DATABASE trigger_users_example;
USE trigger_users_example;
CREATE TABLE users (
    username VARCHAR(100),
    age INT
);
DELIMITER $$
CREATE TRIGGER must_be_adult
	BEFORE INSERT ON users FOR EACH ROW
    BEGIN
		  IF NEW.age<18
          THEN
              SIGNAL SQLSTATE'45000'
              SET MESSAGE_TEXT ='Must be an adult!';
          END IF;
    END;
$$
DELIMITER ;
INSERT INTO users (username,age)VALUES ('Raichu','22');
INSERT INTO users (username,age)VALUES ('Lala','10');   
SELECT * FROM users;               