-- DROP DATABASE favorite_cars;

CREATE DATABASE week_1;

USE week_1;
-- Very Easy
CREATE TABLE cars (
make VARCHAR(20),
model VARCHAR(20),
make_year INT 
);

INSERT INTO cars (make, model, make_year)
VALUES ("Mazda", "3", 2012),
	   ("Subaru", "WRX", 2015),
       ("Honda", "Civic", 1996);
       
-- New query for extra cars
INSERT INTO cars (make, model, make_year)
VALUES ('Hyundai', 'Veloster', 2021),
	   ('Tesla', 'Model 3', 2020);
       
SELECT * FROM cars;

-- Easy
CREATE TABLE favorite_books (
Title VARCHAR(20),
Publish_date DATE,
Author VARCHAR(20)
);

ALTER TABLE favorite_books MODIFY Publish_date YEAR;

INSERT INTO favorite_books (Title, Publish_date, Author)
VALUES ('Point Blank', 2002, 'Anthony Horowitz'),
	   ('Stormbreaker', 2000, 'Anthony Horowitz'),
       ('The Hobbit', 1937, 'J. R. R. Tolkien'),
       ('The Guitar Grimoire', 1995, 'Adam Kadmon'),
       ('Grendal', 1971, 'John Gardner');
       
INSERT INTO favorite_books (Title, Publish_date, Author)
VALUES ('Berserk', 1997, 'Hakusensha'),
	   ('Layers of fear', 2017, 'Junji Ito');
       
-- Delete the oldest book
SET SQL_SAFE_UPDATES = 0;
DELETE FROM favorite_books
WHERE Title = "The Hobbit";

-- The sum of all books
SELECT COUNT(Title) FROM favorite_books;

SELECT * FROM favorite_books;

CREATE TABLE movies (
Title VARCHAR(20),
Release_date DATE,
Rating VARCHAR(20)
);

INSERT INTO movies (Title, Release_date, Rating)
VALUES ("The Matrix", "1999-03-31", "R"),
	   ("Alpha Dog", "2006-01-27", "R"),
       ("Friday", "1995-04-26", "R"),
       ("The Fifth Element", "1997-05-09", "R"),
       ("Twister", "1996-05-10", "PG-13"),
       ("Scream", "1996-12-20", "R"),
       ("Ghostbusters", "1984-06-08", "PG"),
       ("Deadpool", "2016-02-12", "R"),
       ("Shrek", "2001-05-18", "PG"),
       ("Brave", "2012-06-22", "PG");
       



       
SELECT * FROM movies;

-- Medium
-- Pull movies that start "s" and arrange in date order
SELECT * FROM movies 
WHERE Title LIKE '%S%' ORDER BY Release_date ASC;



       







