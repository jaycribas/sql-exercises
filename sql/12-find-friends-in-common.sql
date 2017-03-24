/* This is not working, results SHOULD BE:
Austin 11, Jordan 12, Kyle 12
Andrew 10, Cassandra 9, Garbriel 9

For each student A who likes a student B where the two are not friends, find if they have a friend C in common (who can introduce them!). For all such trios, return the name and grade of A, B, and C. */

-- SELECT  a.name, a.grade,
--         b.name, b.grade,
--         c.name, c.grade
--   FROM student_like
--   JOIN student a
--   ON a.id = student_like.liker_id
--   JOIN student b
--   ON b.id = student_like.likee_id
--   JOIN friend friends_1
--   ON a.id = friends_1.id1
--   JOIN friend friends_2
--   ON b.id = friends_2.id1
--   JOIN student c
--   ON c.id = friends_1.id2 AND c.id = friends_2.id2;

SELECT
  a.name, a.grade,
  b.name, b.grade,
  c.name, c.grade
  FROM student_like
  JOIN student a
  ON a.id = student_like.liker_id
  JOIN student b
  ON b.id = student_like.likee_id
  -- AND b.id NOT IN (
  --   SELECT id2 FROM friend
  --   WHERE id1 = a.id)
  JOIN friend f1
  ON a.id = f1.id1
  JOIN friend f2
  ON f2.id1 = c.id
  AND f2.id2 = b.id
  JOIN student c
  ON c.id = f1.id2;

  -- SELECT
  --   a.name, a.grade,
  --   b.name, b.grade,
  --   c.name, c.grade
  --   FROM student a, student_like, student b, student c, friend f1, friend f2
  --   WHERE a.id = student_like.liker_id
  --   AND student_like.likee_id = b.ID
  --   AND b.id NOT IN (
  --     SELECT id2 FROM friend WHERE id1 = a.id)
  --   AND b.id NOT IN (
  --     SELECT id2 FROM friend WHERE id1 = a.id)
  --   AND a.id = f1.id1
  --   AND f1.id2 = c.id
  --   AND a.id = f1.id1
  --   AND f1.id2 = c.id
  --   AND c.id = f2.id1
  --   AND f2.id2 = b.id;
