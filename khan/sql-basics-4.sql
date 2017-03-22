/* Spin-off of "Project: Design a store database"
  - Contains at least one table
  - Each table has at least 2 columns and one of the columns is the ID.
  - Selects and orders some of the data.
  - Performs at least one additional SELECT statement using an aggregate function.
*/

CREATE TABLE shoes (id INTEGER PRIMARY KEY, brand TEXT, color TEXT, size INTEGER, type TEXT, quantity INTEGER);

INSERT INTO shoes VALUES (1, "Nike", "black", 10, "hi tops", 5);
INSERT INTO shoes VALUES (2, "Nike", "blue", 10, "hi tops", 2);
INSERT INTO shoes VALUES (3, "Nike", "white", 10, "hi tops", 4);
INSERT INTO shoes VALUES (4, "Nike", "orange", 9, "trainers", 2);
INSERT INTO shoes VALUES (5, "Puma", "black", 7, "trainers", 6);
INSERT INTO shoes VALUES (6, "Puma", "black", 9, "trainers", 2);
INSERT INTO shoes VALUES (7, "Puma", "red", 10, "hi tops", 3);

SELECT brand, SUM(quantity) FROM shoes
GROUP BY brand;

SELECT type, SUM(quantity) FROM shoes
GROUP BY type;
