CREATE DATABASE shirts_db;
USE shirts_db;
CREATE TABLE shirts(
	shirt_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    article VARCHAR(50) NOT NULL,
    color VARCHAR(20) NOT NULL,
    shirt_size VARCHAR(1) NOT NULL,
    last_worn INT NOT NULL
);
ALTER TABLE shirts MODIFY COLUMN shirt_size VARCHAR(3);
DESC shirts;

INSERT INTO shirts (article,color,shirt_size,last_worn)
VALUES
	('t-shirt', 'white', 'S', 10),
	('t-shirt', 'green', 'S', 200),
	('polo shirt', 'black', 'M', 10),
	('tank top', 'blue', 'S', 50),
	('t-shirt', 'pink', 'S', 0),
	('polo shirt', 'red', 'M', 5),
	('tank top', 'white', 'S', 200),
	('tank top', 'blue', 'M', 15)
;

SELECT * FROM shirts;

INSERT INTO shirts (article,color,shirt_size,last_worn)
VALUE('polo shirt','purple','M',50);

SELECT * FROM shirts;

SELECT article,color FROM shirts;

SELECT article, color, shirt_size, last_worn
FROM shirts WHERE shirt_size = 'M';
    
UPDATE shirts SET shirt_size = 'L'WHERE article = 'polo shirts';

SELECT * FROM shirts;

UPDATE shirts SET last_worn=0 WHERE last_worn=15;
SELECT * FROM shirts;

UPDATE shirts SET shirt_size='XS',color='off white'
WHERE color='white';
SELECT * FROM shirts;

DELETE FROM shirts WHERE last_worn=200;
SELECT * FROM shirts;

DELETE FROM shirts WHERE article='tank top';
SELECT * FROM shirts;

DELETE FROM shirts;
SELECT * FROM shirts;

DROP TABLE shirts;
DESC shirts;