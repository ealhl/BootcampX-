SELECT
    c.name AS cohort,
    SUM(ar.completed_at - ar.started_at) AS total_duration
FROM
    assistance_requests ar
JOIN
    students s ON ar.student_id = s.id
JOIN
    cohorts c ON s.cohort_id = c.id
GROUP BY
    cohort
ORDER BY
    total_duration;