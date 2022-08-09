use Tv_Shows_DB;
SELECT 
    *
FROM
    series;

SELECT 
    title, rating
FROM
    series
        JOIN
    reviews ON series.id = reviews.series_id;

SELECT 
    title, AVG(rating) AS avg_rating
FROM
    series
        JOIN
    reviews ON series.id = reviews.series_id
GROUP BY series.id
ORDER BY avg_rating;

SELECT 
    first_name, last_name, rating
FROM
    reviewers
        JOIN
    reviews ON reviewers.id = reviews.reviewer_id;
   

SELECT 
    first_name, last_name, rating
FROM
    reviews
        INNER JOIN
    reviewers ON reviewers.id = reviews.reviewer_id;
    
SELECT 
    title AS 'Unreviewed_series'
FROM
    series
WHERE
    series.id NOT IN (SELECT 
            series_id
        FROM
            reviews);

SELECT 
    title AS 'Unreviewed_series'
FROM
    series
        LEFT JOIN
    reviews ON series.id = reviews.series_id
WHERE
    rating IS NULL;

SELECT 
    s.genre,
    ROUND(AVG(r.rating),2) AS avg_rating
FROM
    series s
        INNER JOIN
    reviews r ON s.id = r.series_id
GROUP BY s.genre; 

SELECT 
	reviewers.first_name AS 'First Name',
    reviewers.last_name AS 'Last Name',
    IFNULL(COUNT(reviews.rating),0) AS 'COUNT',
    IFNULL(min(reviews.rating),0) AS 'MIN',
    IFNULL(max(reviews.rating),0)  AS 'MAX',
    ROUND(IFNULL(avg(reviews.rating),0),2) AS 'AVG',
    CASE WHEN count(reviews.rating) > 0 THEN  'ACTIVE'
		ELSE 'INACTIVE'
	END AS 'STATUS'
FROM reviewers
LEFT JOIN reviews
ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;

SELECT 
	reviewers.first_name AS 'First Name',
    reviewers.last_name AS 'Last Name',
    IFNULL(COUNT(reviews.rating),0) AS 'COUNT',
    IFNULL(min(reviews.rating),0) AS 'MIN',
    IFNULL(max(reviews.rating),0)  AS 'MAX',
    ROUND(IFNULL(avg(reviews.rating),0),2) AS 'AVG',
    IF(COUNT(reviews.rating) >= 1,'ACTIVE','INACTIVE') AS 'STATUS'
FROM reviewers
LEFT JOIN reviews
ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;

-- CHALLENGE 6 - Reviewer Stats With POWER USERS 

SELECT first_name, 
       last_name, 
       Count(rating)                    AS COUNT, 
       Ifnull(Min(rating), 0)           AS MIN, 
       Ifnull(Max(rating), 0)           AS MAX, 
       Round(Ifnull(Avg(rating), 0), 2) AS AVG, 
       CASE 
         WHEN Count(rating) >= 10 THEN 'POWER USER' 
         WHEN Count(rating) > 0 THEN 'ACTIVE' 
         ELSE 'INACTIVE' 
       end                              AS STATUS 
FROM   reviewers 
       LEFT JOIN reviews 
              ON reviewers.id = reviews.reviewer_id 
GROUP  BY reviewers.id; 

DESC series;
DESC reviews;
DESC reviewers;

SELECT 
    title,
    reviews.rating AS 'rating',
    CONCAT(first_name, ' ', last_name) AS 'reviewer'
FROM
    series s
        INNER JOIN
    reviews ON s.id = reviews.series_id
        INNER JOIN
    reviewers ON reviews.reviewer_id = reviewers.id
ORDER BY title;

-- CHALLENGE 7 - 3 TABLES!

SELECT 
    title,
    rating,
    CONCAT(first_name,' ', last_name) AS reviewer
FROM reviewers
INNER JOIN reviews 
    ON reviewers.id = reviews.reviewer_id
INNER JOIN series
    ON series.id = reviews.series_id
ORDER BY title;