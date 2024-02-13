SELECT cohort.name, COUNT(*) AS student_count
FROM students
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohort.name
HAVING COUNT(*) >= 18
ORDER BY student_count;