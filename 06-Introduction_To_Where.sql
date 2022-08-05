-- CODE: Introduction to WHERE
-- Select by age:

SELECT * FROM cats WHERE age=4; 

-- Select by name:

SELECT * FROM cats WHERE name='Egg'; 

-- Notice how it deals with case:

SELECT * FROM cats WHERE name='egG'; 

SELECT cat_id FROM cats WHERE cat_id <= 7;

SELECT name,breed FROM CATS;

SELECT name,age FROM cats WHERE breed = 'Tabby';

SELECT cat_id,age FROM cats WHERE cat_id = age;