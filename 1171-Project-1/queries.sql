--What faculties at UB end in S?
SELECT faculty_id, faculty_name
FROM faculties
WHERE faculty_id
LIKE '%S';

--What programs are offered in Belize City?
SELECT program_id, program_name, program_location
FROM programs
WHERE program_location = 'Belize City';

--What courses does Mrs. Vernelle Sylvester teach?
SELECT C.course_id, C.code, C.year, C.semester, C.section, C.title AS course_name, I.instructor_id, I.instructor_name
FROM courses AS C
JOIN instructors AS I
ON C.instructor_id=I.instructor_id
WHERE I.instructor_name = 'Vernelle Sylvester'
GROUP BY C.course_id, I.instructor_id;

--Which instructors have a Masters Degree?
SELECT instructor_id, instructor_name, degree
FROM instructors
WHERE degree = 'M.Sc.';

-- What are the prerequisites for Programming 2?
SELECT C.course_id, C.code, C.title, P.prereq_id
FROM courses AS C
JOIN pre_requisites AS P
ON C.course_id = P.course_id
WHERE C.title='Priciples of Programming 2';

--List the program_name and code, year, semester section and title for all courses.
