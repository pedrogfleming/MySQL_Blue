USE bluecourse;
INSERT INTO cats(name, age) VALUES ('Jetson', 7);
SELECT * FROM cats;

-- INSERT INTO table_name 
--             (column_name, column_name) 
-- VALUES      (value, value), 
--             (value, value), 
--             (value, value);

DESC People;
INSERT INTO People(First_name,Last_name,Age)
VALUES('Tina','Belcher',13);
SELECT * FROM People;

INSERT INTO people(age, last_name, first_name)
VALUES (42, 'Belcher', 'Bob');

INSERT INTO People 
            (First_name, Last_name,Age) 
VALUES      ('Linda', 'Belcher',45), 
            ('Phillip', 'Frond',38), 
            ('Calvin', 'Fischoeder',70);
SELECT * FROM People;

-- CODE: Setting Default Values 

INSERT INTO cats() VALUES();
 
SELECT * FROM cats;
 
INSERT INTO cats3() VALUES();
 
SELECT * FROM cats3;
 
INSERT INTO cats3(name, age) VALUES('Montana', NULL);
 
SELECT * FROM cats3;
 
INSERT INTO cats4(name, age) VALUES('Cali', NULL);

-- CODE: A Primer on Primary Keys

-- Insert some new cats:

INSERT INTO unique_cats(cat_id, name, age) VALUES(1, 'Fred', 23);
 
INSERT INTO unique_cats(cat_id, name, age) VALUES(2, 'Louise', 3);
 
 -- We cannot duplicate the entry with the same id
INSERT INTO unique_cats(cat_id, name, age) VALUES(1, 'James', 3);
-- Notice what happens:

SELECT * FROM unique_cats; 



-- INSERT a couple new cats:

INSERT INTO unique_cats2(name, age) VALUES('Skippy', 4);
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
INSERT INTO unique_cats2(name, age) VALUES('Skippy', 4);
-- Notice the difference:

SELECT * FROM unique_cats2; 

-- Table Constraints Exercise
INSERT INTO employees(first_name, last_name, age) VALUES
('Dora', 'Smith', 58);