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

-- What are the prerequisites for Programming 2 (nested query gives the prerequisite course name)?
SELECT C.course_id, C.code AS course_code, C.title AS course_name, P.prereq_id AS prereq_code, 
       (SELECT C2.title FROM courses AS C2 WHERE C2.code = P.prereq_id) AS prerequisite_name
FROM courses AS C
JOIN pre_requisites AS P
ON C.course_id = P.course_id
WHERE P.course_id = 3;

--List the code, year, semester, section and title for all courses.
SELECT code, year, semester, section, title
FROM courses;

--List the program_name and code, year, semester section and title for all courses in the AINT program.
SELECT P.program_id, P.program_name, C.code, C.year, C.semester, C.section, C.title AS course_name
FROM programs AS P
JOIN courses_programs AS CP
ON P.program_id = CP.program_id
JOIN courses AS C
ON CP.course_id = C.course_id 
WHERE P.program_id = 'AINT';


-- List the faculty_name and code, year, semester section and title for all courses offered by FST.
SELECT F.faculty_id, F.faculty_name, C.year, C.semester, C.section, C.title AS course_name
FROM faculties AS F
JOIN programs AS P
ON F.faculty_id = P.faculty_id
JOIN courses_programs AS CP
ON P.program_id = CP.program_id
JOIN courses AS C
ON CP.course_id = C.course_id
WHERE F.faculty_id = 'FST';