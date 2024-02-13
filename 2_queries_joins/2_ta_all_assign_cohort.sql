
SELECT SUM(asu.duration) AS total_duration
FROM assignment_submissions AS asu
JOIN assignments AS a ON asu.assignment_id = a.id
JOIN students AS s ON asu.student_id = s.id
JOIN cohorts AS c ON s.cohort_id = c.id
WHERE c.name = 'FEB12';