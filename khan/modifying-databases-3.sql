/* Spin-off of "Project: App impersonator"
  - Creates at least one table.
  - Inserts at least 3 rows of data.
  - Updates at least 1 row of data.
  - Deletes at least 1 row of data
*/

CREATE TABLE zombie_killer (
  id INTEGER,
  username TEXT,
  score INTEGER,
  tagline TEXT);

INSERT INTO zombie_killer
  (id, username, score, tagline)
  VALUES
  (1, "Rick", 4000, "We call em walkers"),
  (2, "Shaun", 2000, "Bash em in the head...that seems to work out."),
  (3, "Ash", 9000, "Aaaaaah!");
SELECT * FROM zombie_killer;

UPDATE zombie_killer
  SET score = 15000
  WHERE id = 3;
SELECT * FROM zombie_killer;

DELETE FROM zombie_killer
  WHERE id = 2;
SELECT * FROM zombie_killer;
