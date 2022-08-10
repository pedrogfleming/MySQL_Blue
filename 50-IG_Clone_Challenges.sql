USE ig_clone;
DESC users;

-- FIND THE 5 OLDEST USERS
-- query cost: 10.25
-- full table scan
SELECT 
    *
FROM
    users
ORDER BY created_at DESC
LIMIT 5;

-- What day of the week do most osers register on?
-- We need to figure out when to schedule an ad campgain
SELECT 
    DAYNAME(u.created_at) AS day_of_week,
    COUNT(DAYNAME(u.created_at)) AS tot_reg
FROM
    users u
GROUP BY day_of_week
ORDER BY tot_reg DESC
LIMIT 2;

SELECT 
    DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 2;

DESC photos;

-- We want to target our inactive users with an email campaign
-- Find the users who have never posted a photo

SELECT 
    u.id, u.username AS 'User without photos'
FROM
    users u
        LEFT JOIN
    photos p ON u.id = p.user_id
WHERE
    p.id IS NULL;

-- We ´re running a new contest to see who can get the most likes on a single photo
-- Who won??!!

DESC photos;
DESC users;
DESC likes;

SELECT 
    COUNT(*) AS Num_of_likes,
    u.username
FROM
    photos p
        INNER JOIN
    likes l ON  l.photo_id = p.id
        INNER JOIN
    users u ON u.id = p.user_id
GROUP BY p.id
ORDER BY Num_of_likes DESC;
-- LIMIT 1;

SELECT 
    COUNT(*) AS Num_of_likes,
    p.id,
    p.image_url,
    u.username
FROM
    photos p
        INNER JOIN
    likes l ON  l.photo_id = p.id
        INNER JOIN
    users u ON u.id = p.user_id
GROUP BY p.id
ORDER BY Num_of_likes DESC limit 1;


-- How many times does the average user post?
SELECT * FROM users limit 20;
SELECT * FROM photos limit 20;

WITH cte_total_photos(total_posts) AS
(
	SELECT 
	count(user_id) AS total_posts
	FROM photos
),
cte_total_user(total_users) AS
(
	SELECT count(id)
	FROM users
)
SELECT 
	(total_posts/
    (SELECT total_users FROM cte_total_user)
    ) AS 'Average number of photos per user'
FROM cte_total_photos;

SELECT (SELECT Count(*) 
        FROM   photos) / (SELECT Count(*) 
                          FROM   users) AS avg; 


-- Five most popular hashtags
DESC tags;
DESC photo_tags;
DESC photos;

SELECT 
    tags.id, tag_name, COUNT(photo_tags.tag_id) AS tag_count
FROM
    tags
        INNER JOIN
    photo_tags ON tags.id = photo_tags.tag_id
GROUP BY tags.id
ORDER BY tag_count DESC
LIMIT 5;

SELECT 
    tags.id, tag_name, COUNT(*) AS tag_count
FROM
    tags
        INNER JOIN
    photo_tags ON tags.id = photo_tags.tag_id
GROUP BY tags.id
ORDER BY tag_count DESC
LIMIT 5;

-- We have a small problem with bots on our site...
-- Find users who have liked every single photo on the site


SELECT username, 
       Count(*) AS num_likes 
FROM   users 
       INNER JOIN likes 
               ON users.id = likes.user_id 
GROUP  BY likes.user_id 
HAVING num_likes = (SELECT Count(*) 
                    FROM   photos); 


-- Didn´t work
-- WITH cte_total_photos(total_posts) AS
-- (
-- 	SELECT 
-- 	count(*) AS total_posts
-- 	FROM photos
-- ),
-- cte_filter_bots(user_id,type_of_user) AS
-- (
-- 	SELECT
-- 		user_id,
-- 		CASE
-- 			WHEN COUNT(user_id) = (SELECT total_posts FROM cte_total_photos) THEN 'BOT'
-- 			ELSE
-- 			'HUMAN'
-- 		END AS type_of_user
--     FROM likes
--     GROUP BY user_id
-- )
-- SELECT 
-- user_id,
-- username,
-- type_of_user
--   FROM cte_filter_bots  
-- INNER JOIN users
-- HAVING type_of_user = 'BOT';
