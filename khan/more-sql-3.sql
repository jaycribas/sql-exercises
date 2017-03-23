/* Challenge: The wordiest author

STEP 1: We've created a database of a few popular authors and their books, with word counts for each book. In this first step, select all the authors who have written more than 1 million words, using GROUP BY and HAVING. Your results table should include the 'author' and their total word count as a 'total_words' column.

STEP 2: Now select all the authors that write more than an average of 150,000 words per book. Your results table should include the 'author' and average words as an 'avg_words' column.
*/

CREATE TABLE books (
  id INTEGER PRIMARY KEY,
  author TEXT,
  title TEXT,
  words INTEGER);

INSERT INTO books
  (author, title, words)
  VALUES
  ("J.K. Rowling", "Harry Potter and the Philosopher's Stone", 79944),
  ("J.K. Rowling", "Harry Potter and the Chamber of Secrets", 85141),
  ("J.K. Rowling", "Harry Potter and the Prisoner of Azkaban", 107253),
  ("J.K. Rowling", "Harry Potter and the Goblet of Fire", 190637),
  ("J.K. Rowling", "Harry Potter and the Order of the Phoenix", 257045),
  ("J.K. Rowling", "Harry Potter and the Half-Blood Prince", 168923),
  ("J.K. Rowling", "Harry Potter and the Deathly Hallows", 197651),
  ("Stephenie Meyer", "Twilight", 118501),
  ("Stephenie Meyer", "New Moon", 132807),
  ("Stephenie Meyer", "Eclipse", 147930),
  ("Stephenie Meyer", "Breaking Dawn", 192196),
  ("J.R.R. Tolkien", "The Hobbit", 95022),
  ("J.R.R. Tolkien", "Fellowship of the Ring", 177227),
  ("J.R.R. Tolkien", "Two Towers", 143436),
  ("J.R.R. Tolkien", "Return of the King", 134462);

/* STEP 1 */
SELECT author, SUM(words) AS total_words FROM books
  GROUP BY author
  HAVING SUM(words) > 1000000;

/* STEP 2 */
SELECT author, AVG(words) AS avg_words FROM books
  GROUP BY author
  HAVING AVG(words) > 150000;
