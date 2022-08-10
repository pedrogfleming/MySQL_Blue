USE join_us;
-- Find earliest date a user joined
SELECT 
	email,
	date_format(created_at,'%M %D %Y') AS earliest_date
from users
ORDER BY created_at ASC LIMIT 1;
-- challenge 2
SELECT * 
FROM   users 
WHERE  created_at = (SELECT Min(created_at) 
                     FROM   users); 

-- Show total users according to the month they joined
SELECT 
 date_format(created_at,'%M') AS per_month_joined,
 count(*) as count
FROM users
group by per_month_joined
ORDER BY count DESC;

SELECT Monthname(created_at) AS month, 
       Count(*)              AS count 
FROM   users 
GROUP  BY month 
ORDER  BY count DESC; 

-- Count the total yahoo users
SELECT 	
    count(*) as yahoo_users
FROM users
WHERE email  LIKE '%@yahoo.com';

-- Count by email host provider

SELECT CASE 
         WHEN email LIKE '%@gmail.com' THEN 'gmail' 
         WHEN email LIKE '%@yahoo.com' THEN 'yahoo' 
         WHEN email LIKE '%@hotmail.com' THEN 'hotmail' 
         ELSE 'other' 
       end      AS provider, 
       Count(*) AS total_users 
FROM   users 
GROUP  BY provider 
ORDER  BY total_users DESC; 