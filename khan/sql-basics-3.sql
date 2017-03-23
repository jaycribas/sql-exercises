/* Challenge: TODO list database stats

STEP 1: Here's a table containing a TODO list with the number of minutes it will take to complete each item. Insert another item to your todo list with the estimated minutes it will take.

STEP 2: Select the SUM of minutes it will take to do all of the items on your TODO list. You should only have one SELECT statement.
*/

CREATE TABLE todo_list (
  id INTEGER PRIMARY KEY,
  item TEXT,
  minutes INTEGER);

INSERT INTO todo_list
  VALUES
  (1, "Wash the dishes", 15),
  (2, "vacuuming", 20),
  (3, "Learn some stuff on KA", 30),
/* STEP 1 */
  (4, "Laundry", 60);

/* STEP 2 */
SELECT SUM(minutes) FROM todo_list;
