USE book_shop;

SELECT 
	COUNT(*) AS 'Total books'
FROM books;

SELECT
	released_year,
	count(*) AS "Number of books released"
FROM books
GROUP BY released_year
ORDER BY released_year;

SELECT * FROM books;
DESC books;

SELECT
	SUM(stock_quantity) AS 'Total number of books in stock'
FROM books; 

SELECT 
	CONCAT(author_lname,' ',author_fname) AS 'Author',
    round(AVG(released_year),0) AS 'Average release year'
FROM books
GROUP BY author_lname,author_fname;

DESC books;
SELECT
	CONCAT(author_lname,' ',author_fname) AS 'Author with more pages written',
    pages
FROM books
ORDER BY pages DESC LIMIT 1;

SELECT	CONCAT(author_lname,' ',author_fname) AS 'Author with more pages written',
	pages
FROM books
WHERE pages= (
	SELECT MAX(pages) FROM books
);
	
DESC books;
SELECT
	released_year AS 'year',
    COUNT(*) AS '# books',
    AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year
ORDER BY released_year ASC;

