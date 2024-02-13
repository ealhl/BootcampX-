SELECT
    COUNT(*) AS total_assistances,
    s.name
FROM
    students AS s
JOIN
    assistance_requests AS ar ON s.id = ar.student_id
WHERE
    s.name = 'Elliot Dickinson'
GROUP BY
    s.name;