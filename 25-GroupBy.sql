USE book_shop;
SELECT title, author_lname FROM books;
 
SELECT title, author_lname FROM books
GROUP BY author_lname;
 
SELECT author_lname, COUNT(*) 
FROM books GROUP BY author_lname;
 
 
SELECT title, author_fname, author_lname FROM books;
 
SELECT title, author_fname, author_lname FROM books GROUP BY author_lname;
 
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname;
 
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;
 
SELECT released_year FROM books;
 
SELECT released_year, COUNT(*) FROM books GROUP BY released_year;
 
SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released') AS year FROM books GROUP BY released_year;