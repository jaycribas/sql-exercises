/* Find the names of all students who are friends with someone named Gabriel. */

SELECT a.name, b.name
  FROM friend
  JOIN student a
  ON friend.id1 = a.id
  JOIN student b
  ON friend.id2 = b.id
  WHERE a.name = 'Gabriel' OR b.name = 'Gabriel';
