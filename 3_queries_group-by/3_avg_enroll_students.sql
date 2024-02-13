SELECT 
    s.name AS student,
    AVG(asu.duration) AS average_assignment_duration
FROM 
    students AS s
JOIN 
    assignment_submissions AS asu ON s.id = asu.student_id
WHERE 
    s.end_date IS NULL
GROUP BY 
    s.id
ORDER BY 
    average_assignment_duration DESC;