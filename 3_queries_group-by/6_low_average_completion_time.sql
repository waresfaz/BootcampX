SELECT students.name as student, AVG(assignment_submissions.duration) as avg_completion_time, AVG(assignments.duration) as suggested_avg_time
FROM students
JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY student
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY avg_completion_time;