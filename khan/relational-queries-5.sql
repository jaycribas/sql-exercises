/* Spin-off of "Project: Famous people"
  - Contains at least two tables with at least 15 rows total.
  - One of the tables contains a column that relates to the primary key of another table.
  - Has at least one query that does a JOIN.
  - Has no logic or syntax errors.
*/

CREATE TABLE singers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  age INTEGER,
  country TEXT);

CREATE TABLE actors (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  age INTEGER,
  country TEXT,
  friend INTEGER);

INSERT INTO singers (name, age, country)
  VALUES ("Bjork", 51, "Iceland");
INSERT INTO singers (name, age, country)
  VALUES ("MIA", 41, "Sri Lanka");
INSERT INTO singers (name, age, country)
  VALUES ("Thom Yorke", 48, "England");
INSERT INTO singers (name, age, country)
  VALUES ("Trent Reznor", 51, "USA");
INSERT INTO singers (name, age, country)
  VALUES ("Gwen Stefani", 47, "USA");
INSERT INTO singers (name, age, country)
  VALUES ("Grimes", 29, "Canada");
INSERT INTO singers (name, age, country)
  VALUES ("FKA twigs", 29, "England");
INSERT INTO singers (name, age, country)
  VALUES ("Janelle Monae", 31, "USA");

INSERT INTO actors (name, age, country, friend)
  VALUES ("Natalie Portman", 35, "USA", 5);
INSERT INTO actors (name, age, country, friend)
  VALUES ("Zoe Saldana", 38, "USA", 7);
INSERT INTO actors (name, age, country)
  VALUES ("Hugh Jackman", 48, "Australia");
INSERT INTO actors (name, age, country, friend)
  VALUES ("Octavia Spencer", 64, "USA", 8);
INSERT INTO actors (name, age, country)
  VALUES ("Emma Stone", 28, "USA");
INSERT INTO actors (name, age, country)
  VALUES ("Ryan Gosling", 36, "USA");
INSERT INTO actors (name, age, country)
  VALUES ("Meryl Streep", 67, "USA");

SELECT singers.name, actors.name FROM singers
  JOIN actors
  ON singers.id = actors.friend;
