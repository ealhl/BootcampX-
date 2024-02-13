SELECT c.name AS cohort, COUNT(*) AS total_submissions
FROM cohorts AS c
JOIN students AS s ON c.id = s.cohort_id
JOIN assignment_submissions AS asu ON s.id = asu.student_id
GROUP BY c.name
ORDER BY total_submissions DESC;