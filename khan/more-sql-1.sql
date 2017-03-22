/* Challenge: Karaoke song selector

STEP 1: Ever sung karaoke? It's a place where you sing songs with your friends, and it's a lot of fun. We've created a table with songs, and in this challenge, you'll use queries to decide what songs to sing. For the first step, select all the song titles.

STEP 2: Maybe your friends only like singing either recent songs or truly epic songs. Add another SELECT that uses OR to show the titles of the songs that have an 'epic' mood or a release date after 1990.

(Tip: If you're not sure how to select rows where a column equals a value, remember that you can check the documentation below.)

STEP 3: People get picky at the end of the night. Add another SELECT that uses AND to show the titles of songs that are 'epic', and released after 1990, and less than 4 minutes long.
Note that the duration column is measured in seconds.
*/

CREATE TABLE songs (
    id INTEGER PRIMARY KEY,
    title TEXT,
    artist TEXT,
    mood TEXT,
    duration INTEGER,
    released INTEGER);

INSERT INTO songs
  (title, artist, mood, duration, released)
  VALUES
  ("Bohemian Rhapsody", "Queen", "epic", 60, 1975),
  ("Let it go", "Idina Menzel", "epic", 227, 2013),
  ("I will survive", "Gloria Gaynor", "epic", 198, 1978),
  ("Twist and Shout", "The Beatles", "happy", 152, 1963),
  ("La Bamba", "Ritchie Valens", "happy", 166, 1958),
  ("I will always love you", "Whitney Houston", "epic", 273, 1992),
  ("Sweet Caroline", "Neil Diamond", "happy", 201, 1969),
  ("Call me maybe", "Carly Rae Jepsen", "happy", 193, 2011);

/* STEP 1 */
SELECT title FROM songs;

/* STEP 2 */
SELECT title FROM songs
  WHERE mood = "epic"
  OR released > 1990;

/* STEP 3 */
SELECT title FROM songs
  WHERE mood = "epic"
  AND released > 1990
  AND duration < 240;
