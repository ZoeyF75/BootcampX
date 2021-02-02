SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;

-- SELECT students.name as student, AVG(assignment_submissions.duration) as average_assigment_duration
-- FROM students
-- JOIN assignment_submissions ON student_id = students.id
-- GROUP BY students.name, students.end_date
-- HAVING students.end_date IS NULL
-- ORDER BY average_assigment_duration DESC;