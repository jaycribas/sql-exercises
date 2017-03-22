/* Challenge: Book list database

STEP 1: What are your favorite books? You can make a database table to store them in! In this first step, create a table to store your list of books. It should have columns for id, name, and rating.

STEP 2: Now, add three of your favorite books into the table.
*/

/* STEP 1 */
CREATE TABLE books (
  id INTEGER PRIMARY KEY,
  name TEXT,
  rating INTEGER);

/* STEP 2 */
INSERT INTO books
  VALUES
  (1, "Harry Potter", 8),
  (2, "Game of Thrones", 9),
  (3, "Jurrasic Park", 7);
