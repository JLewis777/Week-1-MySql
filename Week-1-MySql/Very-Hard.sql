-- Very Hard
USE week_1;


-- CREATE TABLE cars (
-- make VARCHAR(20),
-- model VARCHAR(20),
-- make_year INT 
-- );

INSERT INTO cars (make, model, make_year)
VALUES ('Jeep', 'Wrangler', 2015), ('Nissan', 'Altima', 2005), ('Ford', 'Explorer', 1993);

SELECT * FROM cars;

ALTER TABLE cars
ADD COLUMN price INT,
ADD COLUMN color VARCHAR(20);

UPDATE cars SET price = 11000, color = "Blue" WHERE make = "Mazda";
UPDATE cars SET price = 30000, color = "Black" WHERE make = "Subaru";
UPDATE cars SET price = 10000, color = "Grey" WHERE make = "Honda";
UPDATE cars SET price = 23000, color = "Red" WHERE make = "Hyundai";
UPDATE cars SET price = 30000, color = "White" WHERE make = "Tesla";
UPDATE cars SET price = 20000, color = "Black" WHERE make = "Jeep";
UPDATE cars SET price = 41000, color = "Red" WHERE make = "Nissan";
UPDATE cars SET price = 2000, color = "Green" WHERE make = "Ford";

SELECT concat(make, " ", model) AS make_model FROM cars;

SELECT make, COUNT(make) AS same_model FROM cars GROUP BY make;

INSERT INTO cars (make, model, make_year, price, color)
VALUES("Honda", "Accord", 2004, 20000, "blue");


