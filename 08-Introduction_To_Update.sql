-- CODE: Updating Data
-- Change tabby cats to shorthair:

UPDATE cats SET breed='Shorthair' WHERE breed='Tabby'; 
SELECT * FROM cats;
-- Another update:

UPDATE cats SET age=14 WHERE name='Misty'; 
SELECT * FROM cats;

UPDATE cats SET name = 'Jack' WHERE name = 'Jackson';
SELECT * FROM cats;

update cats set breed='British Shorhair' WHERE name='Ringo';
SELECT * FROM cats;

UPDATE cats SET age=12 WHERE breed='Maine Coon';
SELECT * FROM cats;