/* For each student A who likes a student B where the two are not friends, find if they have a friend C in common (who can introduce them!). For all such trios, return the name and grade of A, B, and C. */

-- CREATE VIEW Matchmaker AS
-- SELECT * FROM student_like
-- WHERE likee_id NOT IN (
-- SELECT id2 FROM friend
-- WHERE id1 = liker_id)
-- AND likee_id NOT IN (
-- SELECT id1 FROM friend
-- WHERE id2 = liker_id);

SELECT a.name, a.grade,
       b.name, b.grade,
       c.name, c.grade
  FROM student a
  JOIN (
    SELECT liker_id, likee_id, f1.id1 as id1_a FROM Matchmaker
  JOIN friend f1
  ON Matchmaker.liker_id = f1.id1
  OR Matchmaker.liker_id = f1.id2
  JOIN friend f2
  ON Matchmaker.likee_id = f2.id1
  OR Matchmaker.likee_id = f2.id2
  WHERE f1.id1=f2.id1
    OR f1.id2=f2.id1
    OR f1.id1=f2.id2
    OR f1.id2 = f2.id1 ) RefinedMatchmaker
  ON RefinedMatchmaker.liker_id = a.id
  JOIN student b
  ON RefinedMatchmaker.likee_id = b.id
  JOIN student c
  ON RefinedMatchmaker.id1_a = c.id
  LIMIT 2;

-- SELECT liker_id, likee_id FROM matchmaker
-- JOIN friend f1
-- ON matchmaker.liker_id = f1.id1
-- OR matchmaker.liker_id = f1.id2
-- JOIN friend f2
-- ON matchmaker.likee_id = f2.id1
-- OR matchmaker.likee_id = f2.id2
-- WHERE f1.id1=f2.id1 OR f1.id2=f2.id1 OR f1.id1=f2.id2 OR f1.id2 = f2.id1;


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

-- SELECT
--   a.name, a.grade,
--   b.name, b.grade,
--   c.name, c.grade
--   FROM student_like
--   JOIN student a
--   ON a.id = student_like.liker_id
--   JOIN student b
--   ON b.id = student_like.likee_id
--   AND b.id NOT IN (
--     SELECT id2 FROM friend
--     WHERE id1 = a.id)
--   JOIN friend f1
--   ON a.id = f1.id1
--   JOIN student c
--   ON f1.id2 = c.id
--   JOIN friend f2
--   ON f2.id1 = c.id
--   AND f2.id2 = b.id;

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
