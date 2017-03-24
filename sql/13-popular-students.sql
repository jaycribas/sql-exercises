/* Find the name and grade of all students who are liked by more than one other student. */

SELECT name, grade
  FROM student_like
  JOIN student
  ON id = likee_id
  GROUP BY name, grade
  HAVING COUNT(id) > 1;
