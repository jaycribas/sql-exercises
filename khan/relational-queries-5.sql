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

INSERT INTO singers
  (name, age, country)
  VALUES
  ("Bjork", 51, "Iceland"),
  ("MIA", 41, "Sri Lanka"),
  ("Thom Yorke", 48, "England"),
  ("Trent Reznor", 51, "USA"),
  ("Gwen Stefani", 47, "USA"),
  ("Grimes", 29, "Canada"),
  ("FKA twigs", 29, "England"),
  ("Janelle Monae", 31, "USA");

INSERT INTO actors
  (name, age, country, friend)
  VALUES
  ("Natalie Portman", 35, "USA", 5),
  ("Zoe Saldana", 38, "USA", 7),
  ("Hugh Jackman", 48, "Australia"),
  ("Octavia Spencer", 64, "USA", 8),
  ("Emma Stone", 28, "USA"),
  ("Ryan Gosling", 36, "USA"),
  ("Meryl Streep", 67, "USA");

SELECT singers.name, actors.name FROM singers
  JOIN actors
  ON singers.id = actors.friend;
