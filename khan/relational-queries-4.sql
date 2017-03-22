/* Challenge: FriendBook

STEP 1: We've created a database for a friend networking site, with a table storing data on each person, a table on each person's hobbies, and a table of friend connections between the people. In this first step, use a JOIN to display a table showing people's names with their hobbies.

STEP 2:Now, use another SELECT with a JOIN to show the names of each pair of friends, based on the data in the friends table.
*/

CREATE TABLE persons (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  fullname TEXT,
  age INTEGER);

INSERT INTO persons
  (fullname, age)
  VALUES
  ("Bobby McBobbyFace", "12"),
  ("Lucy BoBucie", "25"),
  ("Banana FoFanna", "14"),
  ("Shish Kabob", "20"),
  ("Fluffy Sparkles", "8");

CREATE table hobbies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  person_id INTEGER,
  name TEXT);

INSERT INTO hobbies
  (person_id, name)
  VALUES
  (1, "drawing"),
  (1, "coding"),
  (2, "dancing"),
  (2, "coding"),
  (3, "skating"),
  (3, "rowing"),
  (3, "drawing"),
  (4, "coding"),
  (4, "dilly-dallying"),
  (4, "meowing");

CREATE table friends (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  person1_id INTEGER,
  person2_id INTEGER);

INSERT INTO friends
  (person1_id, person2_id)
  VALUES
  (1, 4),
  (2, 3);

/* STEP 1 */
SELECT persons.fullname, hobbies.name
  FROM persons
  JOIN hobbies
  ON persons.id = hobbies.person_id;

/* STEP 2 */
SELECT p.fullname, f.fullname
  FROM friends
  JOIN persons p
  ON friends.person1_id = p.id
  JOIN persons f
  ON friends.person2_id = f.id;
