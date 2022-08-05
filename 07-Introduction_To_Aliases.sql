-- CODE: Introduction to Aliases

SELECT cat_id AS id, name FROM cats;
 SELECT cat_id id, name FROM cats;
  SELECT cat_id 'ID', name FROM cats;
  
SELECT name AS 'cat name', breed AS 'kitty breed' FROM cats;
 
DESC cats;