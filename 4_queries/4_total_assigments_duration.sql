SELECT
    a.day,
    COUNT(*) AS number_of_assignments,
    SUM(a.duration) AS duration
FROM
    assignments a
GROUP BY
    a.day
ORDER BY
    a.day;