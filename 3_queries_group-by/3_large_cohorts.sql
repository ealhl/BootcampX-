SELECT c.name, COUNT(*) AS student_count
FROM students AS s
JOIN cohorts AS c ON s.cohort_id = c.id
GROUP BY c.name
HAVING COUNT(*) >= 18
ORDER BY student_count;