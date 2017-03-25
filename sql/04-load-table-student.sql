/* psql sql-exercises < sql/04-load-table-student.sql */

COPY student FROM '/Users/jaycribas/desktop/projects/sql-exercises/data/students.csv'
  DELIMITER ',' CSV HEADER;

SELECT * FROM student;
