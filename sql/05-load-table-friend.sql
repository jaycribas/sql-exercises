/* psql sql-exercises < sql/05-load-table-friend.sql */

COPY friend FROM '/Users/jaycribas/desktop/projects/sql-exercises/data/friends.csv'
  DELIMITER ',' CSV HEADER;

SELECT * FROM friend;
