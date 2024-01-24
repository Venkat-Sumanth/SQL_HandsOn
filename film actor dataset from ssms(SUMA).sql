CREATE DATABASE SUMA;
GO

USE SUMA;
Go

CREATE TABLE USERS (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    date_of_birth DATE
);

INSERT INTO USERS(id,first_name, last_name, email, date_of_birth) 
VALUES
(1,'John', 'Doe', 'john.doe@example.com', '1990-01-01'),
(2,'Jane', 'Smith', 'jane.smith@example.com', '1992-05-15'),
(3,'Alice', 'Johnson', 'alice.johnson@example.com', '1985-10-20'),
(4,'Bob', 'Williams', 'bob.williams@example.com', '1998-07-30'),
(5,'Emily', 'Clark', 'emily.clark@example.com', '1987-02-14'),
(6,'Michael', 'Robinson', 'michael.robinson@example.com', '1995-06-05'),
(7,'Sarah', 'Lewis', 'sarah.lewis@example.com', '1989-03-25'),
(8,'David', 'Walker', 'david.walker@example.com', '1992-11-12'),
(9,'Sophia', 'Hall', 'sophia.hall@example.com', '1996-08-08'),
(10,'James', 'Allen', 'james.allen@example.com', '1984-04-20'),
(11,'Olivia', 'Young', 'olivia.young@example.com', '1993-12-30'),
(12,'Chris', 'King', 'chris.king@example.com', '1990-09-15'),
(13,'Grace', 'Wright', 'grace.wright@example.com', '1997-05-10'),
(14,'William', 'Scott', 'william.scott@example.com', '1986-07-22');

select * from USERS;


CREATE TABLE films (
    film_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_date DATE,
    price DECIMAL(5,2),
    rating VARCHAR(10),
    user_rating DECIMAL(2,1)
	CHECK (user_rating >= 1 AND user_rating <= 5)
);

INSERT INTO films (film_id,title, release_date, price, rating, user_rating) 
VALUES
(1,'Inception', '2010-07-16', 12.99, 'PG-13', 4.8);
(2,'The Shawshank Redemption', '1994-09-23', 9.99, 'R', 4.9),
(3,'The Godfather', '1972-03-24', 14.99, 'R', 4.7),
(4,'The Dark Knight', '2008-07-18', 11.99, 'PG-13', 4.8),
(5,'Pulp Fiction', '1994-10-14', 10.99, 'R', 4.6),
(6,'The Matrix', '1999-03-31', 9.99, 'R', 4.7),
(7,'Forrest Gump', '1994-07-06', 8.99, 'PG-13', 4.5),
(8,'Toy Story', '1995-11-22', 7.99, 'G', 4.4),
(9,'Jurassic Park', '1993-06-11', 9.99, 'PG-13', 4.3),
(10,'Avatar', '2009-12-18', 12.99, 'PG-13', 4.2),
(11,'Blade Runner 2049', '2017-10-06', 13.99, 'R', 4.3),
(12,'Mad Max: Fury Road', '2015-05-15', 11.99, 'R', 4.6),
(13,'Coco', '2017-11-22', 9.99, 'PG', 4.8),
(14,'Dunkirk', '2017-07-21', 12.99, 'PG-13', 4.5),
(15,'Spider-Man: Into the Spider-Verse', '2018-12-14', 10.99, 'PG', 4.9),
(16,'Parasite', '2019-10-11', 14.99, 'R', 4.6),
(17,'Whiplash', '2014-10-10', 9.99, 'R', 4.7),
(18,'Inside Out', '2015-06-19', 9.99, 'PG', 4.8),
(19,'The Grand Budapest Hotel', '2014-03-28', 10.99, 'R', 4.4),
(20,'La La Land', '2016-12-09', 11.99, 'PG-13', 4.5);

select * from films;



CREATE TABLE actors (
    actor_id INT PRIMARY KEY,
    actor_name VARCHAR(255) NOT NULL
);

INSERT INTO actors (actor_id,actor_name)
VALUES
(1,'Leonardo DiCaprio'),  -- Associated with Inception
(2,'Tim Robbins'),        -- Associated with The Shawshank Redemption
(3,'Marlon Brando'),      -- Associated with The Godfather
(4,'Christian Bale'),     -- Associated with The Dark Knight
(5,'John Travolta'),      -- Associated with Pulp Fiction
(6,'Keanu Reeves'),       -- Associated with The Matrix
(7,'Tom Hanks'),          -- Associated with Forrest Gump
(8,'Tom Hanks'),          -- Associated with Toy Story (Tom Hanks appears twice for demonstration purposes)
(9,'Sam Neill'),          -- Associated with Jurassic Park
(10,'Sam Worthington'),    -- Associated with Avatar
(11,'Ryan Gosling'),       -- Associated with Blade Runner 2049
(12,'Tom Hardy'),          -- Associated with Mad Max: Fury Road
(13,'Anthony Gonzalez'),   -- Associated with Coco
(14,'Fionn Whitehead'),    -- Associated with Dunkirk
(15,'Shameik Moore'),      -- Associated with Spider-Man: Into the Spider-Verse
(16,'Song Kang-ho'),       -- Associated with Parasite
(17,'Miles Teller'),       -- Associated with Whiplash
(18,'Amy Poehler'),        -- Associated with Inside Out
(19,'Ralph Fiennes'),      -- Associated with The Grand Budapest Hotel
(20,'Emma Stone');         -- Associated with La La Land

select * from actors;

CREATE TABLE film_actors (
    film_id INTEGER REFERENCES films(film_id),
    actor_id INTEGER REFERENCES actors(actor_id),
    PRIMARY KEY (film_id, actor_id)
);

INSERT INTO film_actors (film_id, actor_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

select * from film_actors;

SELECT SCHEMA_NAME() AS defaultschema;

SELECT
*
FROM sys.tables t
INNER JOIN sys.schemas s
ON t.schema_id = s.schema_id;

select  f.title,a.actor_name from dbo.films f
inner join film_actors fa on f.film_id = fa.film_id
inner join actors a on fa.actor_id = a.actor_id;

select f.title,a.actor_name from dbo.films f
left join film_actors fa on f.film_id = fa.film_id
left join actors a on fa.actor_id = a.actor_id; 

select f.film_id,f.title,a.actor_name from films f
left join film_actors fa on f.film_id =fa.film_id
left join actors a on fa.actor_id = a.actor_id
order by film_id;

select f.film_id,f.title,a.actor_name from films f
inner join film_actors fa on f.film_id = fa.film_id
inner join actors a on fa.actor_id = a.actor_id
order by f.film_id;

select title as name from films
union
select actor_name as name from actors;

select actor_name as name from actors
union all
select title  as name from films;



SELECT
  title,
  (SELECT TOP 1 a.actor_name
   FROM actors a
   INNER JOIN film_actors fa ON a.actor_id = fa.actor_id
   WHERE fa.film_id = f.film_id) AS actor_name
FROM films f;


select title from films f
where film_id in (select fa.film_id from film_actors fa
join actors a on a.actor_id = fa.actor_id
where a.actor_name in ('Leonardo DiCaprio', 'Tom Hanks'));