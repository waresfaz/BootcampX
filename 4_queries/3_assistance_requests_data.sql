SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at-started_at) as duration
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;


/*
SELECT teachers.name as teacher, 
students.name as student, 
assignments.name as assignment, 
(completed_at-started_at) as duration
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN teachers ON teacher_id = teachers.id
JOIN assignments ON assignment_id = assignments.id
ORDER BY duration;
*/