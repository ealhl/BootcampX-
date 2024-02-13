SELECT SUM(asu.duration) AS total_duration
FROM assignment_submissions AS asu
JOIN students AS s ON asu.student_id = s.id
WHERE s.name = 'Ibrahim Schimmel';