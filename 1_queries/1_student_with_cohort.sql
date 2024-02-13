SELECT id, name
FROM students
WHERE cohort_id = (SELECT cohort_id FROM students LIMIT 1) -- Get any cohort_id
ORDER BY name;