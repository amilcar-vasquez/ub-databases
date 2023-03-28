-- 1.  Select all the students that came from Sacred Heart Junior College - school id 11
SELECT S.student_id, S.gender, S.school_id, SC.school_name
FROM student as S
JOIN school as SC
ON S.school_id = SC.school_id
WHERE S.school_id = 11;

-- 2.  Select all the students that graduated.
SELECT *
FROM completion;

-- 3.  How many students did not pass Principles of Programming II (course id 64)?
SELECT DISTINCT PS.student_id, PS.course_grade, PS.course_points, PS.semester, C.course_id, C.course_title
FROM program_status AS PS
JOIN course AS C
ON PS.course_id = C.course_id
WHERE PS.course_points <= 6
AND C.course_id = 64;

-- 4.  Which feeder schools are in the Cayo District?
SELECT school_id, school_name, district
FROM school
WHERE district = 'Cayo';

-- 5.  Show all the students that scored A in any programming related course
SELECT DISTINCT PS.student_id, PS.course_grade, PS.course_points, PS.semester, C.course_id, C.course_title
FROM program_status AS PS
JOIN course AS C
ON PS.course_id = C.course_id
WHERE PS.course_grade LIKE 'A%'
AND C.course_title LIKE '%PROGRAMMING%';

-- 6.  How many females students take IT, compared to male students?
SELECT gender, COUNT(*) as student_amount
FROM student
GROUP BY gender;

-- 7.  List students that graduated during the pandemic year (2020)
SELECT student_id, grad_date
FROM completion
WHERE grad_date LIKE '%2020';


-- 8.  Show all the students that came from a school under the Nazarene management.
SELECT S.student_id, SC.school_id, SC.school_name, SC.management
FROM student AS S
JOIN school AS SC
ON S.school_id = SC.school_id
WHERE SC.management = 'Nazarene';


-- 9.  Create a transcript of grades for student 4538.
SELECT PS.student_id, PS.course_grade, PS.course_points, PS.semester, C.course_id, C.course_code, C.course_title
FROM program_status AS PS
JOIN course AS C
ON PS.course_id = C.course_id
WHERE PS.student_id = 4538;


-- 10. list all the students whom originated from UB, and dropped a Database course.
SELECT DISTINCT S.student_id, SC.school_id, SC.school_name, PS.program_status, C.course_id, C.course_title
FROM student AS S
JOIN school AS SC
ON S.school_id = SC.school_id
JOIN program_status AS PS
ON S.student_id = PS.student_id
JOIN course AS C
ON PS.course_id = C.course_id
WHERE PS.program_status = 'Dropped'
AND C.course_title LIKE '%DATABASE%'
AND SC.school_id = 13;


