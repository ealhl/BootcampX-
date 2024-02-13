SELECT
    t.name,
    COUNT(*) AS total_assistances
FROM
    teachers AS t
JOIN
    assistance_requests AS ar ON t.id = ar.teacher_id
WHERE
    t.name = 'Waylon Boehm'
GROUP BY
    t.name;