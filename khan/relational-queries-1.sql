/* Challenge: Bobby's Hobbies

STEP 1: We've created a database of people and hobbies, and each row in hobbies is related to a row in persons via the person_id column. In this first step, insert one more row in persons and then one more row in hobbies that is related to the newly inserted person.

STEP 2: Now, select the 2 tables with a join so that you can see each person's name next to their hobby.

STEP 3: Now, add an additional query that shows only the name and hobbies of 'Bobby McBobbyFace', using JOIN combined with WHERE.
*/

CREATE TABLE persons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    age INTEGER);

INSERT INTO persons
  (name, age)
  VALUES
  ("Bobby McBobbyFace", 12),
  ("Lucy BoBucie", 25),
  ("Banana FoFanna", 14),
  ("Shish Kabob", 20),
  ("Fluffy Sparkles", 8),
/* PART 1 */
  ("Kitty Kat", 5);

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
  (4, "meowing"),
/* PART 1 */
  (6, "meowing");

/* PART 2 */
SELECT persons.name, hobbies.name FROM persons
    JOIN hobbies
    ON persons.id = hobbies.person_id;

/* PART 3 */
SELECT persons.name, hobbies.name FROM persons
    JOIN hobbies
    ON persons.id = hobbies.person_id
    WHERE persons.name = "Bobby McBobbyFace";
