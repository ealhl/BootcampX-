SELECT 
    s.name AS student_name,
    AVG(asu.duration) AS average_completion_time,
    AVG(a.duration) AS average_suggested_completion_time
FROM 
    students AS s
JOIN 
    assignment_submissions AS asu ON s.id = asu.student_id
JOIN 
    assignments AS a ON asu.assignment_id = a.id
WHERE 
    s.end_date IS NULL
GROUP BY 
    s.id
HAVING 
    AVG(asu.duration) < AVG(a.duration)
ORDER BY 
    average_completion_time;