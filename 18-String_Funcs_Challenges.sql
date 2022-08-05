SELECT 
reverse(
	upper('Why does my cat look at me with such hatred?')
) as Reversed_Phrase;

SELECT 
    REPLACE(Title, ' ', '->') AS title
FROM
    books;

DESC books;
SELECT 
    author_lname AS fowards,
    REVERSE(author_lname) AS backwards
FROM
    books;

SELECT UPPER(
	CONCAT(author_lname,' ',author_fname)
) AS 'full name in caps'
FROM books;

DESC books;

SELECT 
    CONCAT_WS(' ',
            title,
            'was released in',
            released_year) AS blurb
FROM
    books;
    
SELECT 
	title,
    char_length(title) AS 'character count'
FROM books;

SELECT 
    CONCAT(SUBSTR(title, 1, 10), '...') AS 'short title',
    CONCAT_WS(',', author_lname, author_fname) AS 'author',
    CONCAT_WS(' ', stock_quantity, 'in', 'stock') AS 'quantity'
FROM
    books;