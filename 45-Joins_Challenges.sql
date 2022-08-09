CREATE DATABASE school_db;
USE school_db;

CREATE TABLE students(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    first_name VARCHAR(60) NOT NULL
);

CREATE TABLE papers(
	title VARCHAR (60) NOT NULL,
    grade INT NOT NULL,
    student_id INT,
	FOREIGN KEY(student_id) 
	REFERENCES students(id)
	ON DELETE CASCADE
);

INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

SELECT first_name,title,grade FROM students AS s
INNER JOIN papers AS p
ON s.id = p.student_id
ORDER BY first_name DESC,title ASC;

SELECT first_name,title,grade FROM students AS s
LEFT JOIN papers AS p
ON s.id = p.student_id
ORDER BY first_name ASC,title ASC;

SELECT first_name,
	 ifnull(title,'MISSING') AS 'title',
     ifnull(grade,0) AS 'grade'
     FROM students AS s
LEFT JOIN papers AS p
ON s.id = p.student_id
ORDER BY first_name ASC,title ASC;

SELECT first_name,
	AVG(ifnull(grade,0)) AS 'average'
     FROM students AS s
LEFT JOIN papers AS p
ON s.id = p.student_id
GROUP BY s.id
ORDER BY average DESC;

SELECT first_name,
	AVG(ifnull(grade,0)) AS 'average',
    CASE
		WHEN AVG(ifnull(grade,0)) >= 75 THEN 'PASSING'
        ELSE 'FAILING'
    END AS 'passing_status'
     FROM students AS s
LEFT JOIN papers AS p
ON s.id = p.student_id
GROUP BY s.id
ORDER BY average DESC;

