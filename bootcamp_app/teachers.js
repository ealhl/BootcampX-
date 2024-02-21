//A Pool will manage multiple client connections for us
const { Pool } = require("pg");

const pool = new Pool({
  user: "yiva",
  password: "123",
  host: "localhost",
  database: "bootcampx",
});


// Store all potentially malicious values in an array.
const queryString = `
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = $1
ORDER BY teacher;
  `;

const cohortName = process.argv[2] || "JUL02";
const value = [`${cohortName}`];
console.log(value);
console.log(cohortName);
//Name of Teachers That Assisted
pool.query(queryString, value).then((res) => {
  res.rows.forEach((row) => {
    console.log(`${row.cohort}: ${row.teacher}`);
  });
});


pool.end();