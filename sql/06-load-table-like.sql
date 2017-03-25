/* psql sql-exercises < sql/06-load-table-like.sql */

COPY student_like FROM '/Users/jaycribas/desktop/projects/sql-exercises/data/likes.csv'
  DELIMITER ',' CSV HEADER;

SELECT * FROM student_like;
