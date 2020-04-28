SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions 
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';


-- SELECT sum(duration) also works for line 1 but the other is more specific and this prints with the title "sum"