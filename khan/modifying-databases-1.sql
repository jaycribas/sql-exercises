/* Challenge: Dynamic Documents

STEP 1: We've created a database for a documents app, with rows for each document with it's title, content, and author. In this first step, use UPDATE to change the author to 'Jackie Draper' for all rows where it's currently 'Jackie Paper'. Then re-select all the rows to make sure the table changed like you expected.

STEP 2: Now you'll delete a row, being very careful not to delete all the rows. Only delete the row where the title is 'Things I'm Afraid Of'. Then re-select all the rows to make sure the table changed like you expected.
*/

CREATE table documents (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    content TEXT,
    author TEXT);

INSERT INTO documents
  (author, title, content)
  VALUES
  ("Puff T.M. Dragon", "Fancy Stuff", "Ceiling wax, dragon wings, etc."),
  ("Puff T.M. Dragon", "Living Things", "They're located in the left ear, you know."),
  ("Jackie Paper", "Pirate Recipes", "Cherry pie, apple pie, blueberry pie."),
  ("Jackie Paper", "Boat Supplies", "Rudder - guitar. Main mast - bed post."),
  ("Jackie Paper", "Things I'm Afraid Of", "Talking to my parents, the sea, giant pirates, heights.");

SELECT * FROM documents;

/* STEP 1 */
UPDATE documents
  SET author = "Jackie Draper"
  WHERE author = "Jackie Paper";
SELECT * FROM documents;

/* STEP 2 */
DELETE FROM documents
  WHERE title = "Things I'm Afraid Of";
SELECT * FROM documents;
