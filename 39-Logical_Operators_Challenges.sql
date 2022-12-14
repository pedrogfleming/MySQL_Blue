USE book_shop;
DESC books;
SELECT 
    *
FROM
    books
WHERE
    released_year < 1980;
    
SELECT 
    *
FROM
    books
WHERE
    author_lname IN ('Eggers' , 'Chabon');
    
SELECT 
    *
FROM
    books
WHERE
    author_lname = 'Eggers'
        OR author_lname = 'Chabon';
        
SELECT 
    *
FROM
    books
WHERE
    author_lname = 'Lahiri'
        AND released_year > 2000;
        
SELECT * FROM books
WHERE pages BETWEEN 100 AND 200;

SELECT * FROM books
WHERE pages >= 100 AND pages <= 200;

SELECT * FROM books
WHERE author_lname LIKE 'C%' OR 'S%';

SELECT 
    title, 
    author_lname 
FROM books 
WHERE 
    SUBSTR(author_lname,1,1) = 'C' OR 
    SUBSTR(author_lname,1,1) = 'S';

SELECT title, author_lname FROM books 
WHERE SUBSTR(author_lname,1,1) IN ('C', 'S');

SELECT 
    title, 
    author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title = 'Just Kids' OR title = 'A Heartbreaking Work of Staggering Genius' THEN 'Memoir'
        ELSE 'Novel'
    END AS TYPE
FROM books;

SELECT 
	title,
    author_lname,
    CASE
		WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*),' ','books')
        END AS 'COUNT'
FROM books
GROUP BY author_lname,author_fname;