SELECT title FROM books WHERE released_year = 2017;
 
SELECT title FROM books WHERE released_year != 2017;
 
SELECT title, author_lname FROM books;
 
SELECT title, author_lname FROM books WHERE author_lname = 'Harris';
 
SELECT title, author_lname FROM books WHERE author_lname != 'Harris';

SELECT title FROM books WHERE title LIKE 'W';
 
SELECT title FROM books WHERE title LIKE 'W%';
 
SELECT title FROM books WHERE title LIKE '%W%';
 
SELECT title FROM books WHERE title LIKE 'W%';
 
SELECT title FROM books WHERE title NOT LIKE 'W%';

SELECT title, released_year FROM books ORDER BY released_year;
 
SELECT title, released_year FROM books 
WHERE released_year > 2000 ORDER BY released_year;


SELECT title, author_lname, released_year FROM books
WHERE author_lname='Eggers';
 
SELECT title, author_lname, released_year FROM books
WHERE released_year > 2010;
 
SELECT  
    title, 
    author_lname, 
    released_year FROM books
WHERE author_lname='Eggers' 
    AND released_year > 2010;
 
SELECT 1 < 5 && 7 = 9;
-- false
 
SELECT -10 > -20 && 0 <= 0;
-- true
 
SELECT -40 <= 0 AND 10 > 40;
--false
 
SELECT 54 <= 54 && 'a' = 'A';
-- true
 
SELECT * 
FROM books
WHERE author_lname='Eggers' 
    AND released_year > 2010 
    AND title LIKE '%novel%';
/*
Please note, as of MySQL 8.0.17, the && operator is deprecated and support for it will be removed in a future MySQL version. Applications should be adjusted to use the standard SQL AND operator.
If you're using MySQL 5.7 or older, which most of you are if you're using GoormIDE, then you don't have to worry about this right now. But, in newer versions of MySQL (8.0.17 and newer) you will need to replace && with AND.
*/    
 
SELECT title, released_year FROM books 
WHERE released_year >= 2000 ORDER BY released_year;
 
SELECT title, stock_quantity FROM books;
 
SELECT title, stock_quantity FROM books WHERE stock_quantity >= 100;
 
SELECT 99 > 1;
 
SELECT 99 > 567;
 
100 > 5
-- true
 
-15 > 15
-- false
 
9 > -10
-- true
 
1 > 1
-- false
 
'a' > 'b'
-- false
 
'A' > 'a'
-- false
 
'A' >=  'a'
-- true
 
SELECT title, author_lname FROM books WHERE author_lname = 'Eggers';
 
SELECT title, author_lname FROM books WHERE author_lname = 'eggers';
 
SELECT title, author_lname FROM books WHERE author_lname = 'eGGers';

SELECT title, released_year FROM books;
 
SELECT title, released_year FROM books
WHERE released_year < 2000;
 
SELECT title, released_year FROM books
WHERE released_year <= 2000;
 
SELECT 3 < -10;
-- false
 
SELECT -10 < -9;
-- true
 
SELECT 42 <= 42;
-- true
 
SELECT 'h' < 'p';
-- true
 
SELECT 'Q' <= 'q';
-- true

SELECT 
    title, 
    author_lname, 
    released_year 
FROM books
WHERE author_lname='Eggers' || released_year > 2010;
 
 
SELECT 40 <= 100 || -2 > 0;
-- true
 
SELECT 10 > 5 || 5 = 5;
-- true
 
SELECT 'a' = 5 || 3000 > 2000;
-- true
 
SELECT title, 
       author_lname, 
       released_year, 
       stock_quantity 
FROM   books 
WHERE  author_lname = 'Eggers' 
              || released_year > 2010 
OR     stock_quantity > 100;
-- Please note, as of MySQL 8.0.17, the || operator is deprecated and support for it will be removed in a future MySQL version. Applications should be adjusted to use the standard SQL OR operator.
-- If you're using MySQL 5.7 or older, which most of you are if you're using GoormIDE, then you don't have to worry about this right now. But, in newer versions of MySQL (8.0.17 and newer) you will need to replace || with OR.