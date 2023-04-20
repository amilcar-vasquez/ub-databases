-- 1.  Select all the students that came from Sacred Heart Junior College - school id 11
SELECT S.student_id, S.gender, S.school_id, SC.school_name
FROM student as S
JOIN school as SC
ON S.school_id = SC.school_id
WHERE S.school_id = 11;

-- 2.  Select all the students that graduated.
SELECT *
FROM completion;

-- 3.  Which students did not pass Principles of Programming II (course id 64)?
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

-- Teacher Sent Queries

-- I. Find the total number of students and average course points by feeder institutions.
SELECT S.school_id, SC.school_name, AVG(student_avg_course_points) as avg_course_points, COUNT(*) as student_count
FROM student AS S
JOIN school AS SC ON S.school_id = SC.school_id
JOIN (
    SELECT student_id, AVG(course_points) as student_avg_course_points
    FROM program_status
    GROUP BY student_id
) AS PS
ON S.student_id = PS.student_id
GROUP BY S.school_id, SC.school_name
ORDER BY avg_course_points DESC;

-- Find the total number of students and average course points by gender.
SELECT gender, AVG(student_avg_course_points) as avg_course_points, COUNT(*) as student_count
FROM (
    SELECT S.gender, AVG(PS.course_points) as student_avg_course_points
    FROM student AS S
    JOIN program_status AS PS
    ON S.student_id = PS.student_id
    GROUP BY S.student_id
) AS student_avg
GROUP BY gender;

--Find the total number of students and average course points by ethnicity.
SELECT ethnicity, AVG(student_avg_course_points) as avg_course_points, COUNT(*) as student_count
FROM (
    SELECT S.ethnicity, AVG(PS.course_points) as student_avg_course_points
    FROM student AS S
    JOIN program_status AS PS
    ON S.student_id = PS.student_id
    GROUP BY S.student_id
) AS student_avg
GROUP BY ethnicity
ORDER BY avg_course_points DESC;

-- Find the total number of students and average course points by city.
SELECT city, AVG(student_avg_course_points) as avg_course_points, COUNT(*) as student_count
FROM (
    SELECT S.city, AVG(PS.course_points) as student_avg_course_points
    FROM student AS S
    JOIN program_status AS PS
    ON S.student_id = PS.student_id
    GROUP BY S.student_id
) AS student_avg
GROUP BY city
ORDER BY avg_course_points DESC;

--Find the total number of students and average course points by district.
SELECT district, AVG(student_avg_course_points) as avg_course_points, COUNT(*) as student_count
FROM (
    SELECT S.district, AVG(PS.course_points) as student_avg_course_points
    FROM student AS S
    JOIN program_status AS PS
    ON S.student_id = PS.student_id
    GROUP BY S.student_id
) AS student_avg
GROUP BY district
ORDER BY avg_course_points DESC;

--Find the total number and percentage of students by program status.
SELECT program_status, COUNT(DISTINCT PS.student_id) as student_count,
COUNT(DISTINCT PS.student_id)*100.0/(SELECT COUNT(DISTINCT student_id)
FROM program_status) AS student_percent
FROM program_status AS PS
GROUP BY program_status;

--Find the letter grade breakdown (how many A, A-,B,B+,...)for each of the following courses:
--Fundamentals of Computing 
--Principles of Programming I 
--Algebra 
--Trigonometry 
--College English I 

SELECT C.course_title, PS.course_grade, COUNT(*) as grade_count
FROM program_status AS PS
JOIN course AS C ON PS.course_id = C.course_id
WHERE C.course_id = 11
GROUP BY C.course_title, PS.course_grade
ORDER BY C.course_title, grade_count DESC;

SELECT C.course_title, PS.course_grade, COUNT(*) as grade_count
FROM program_status AS PS
JOIN course AS C ON PS.course_id = C.course_id
WHERE C.course_id = 28
GROUP BY C.course_title, PS.course_grade
ORDER BY C.course_title, grade_count DESC;
UNION -- this can be done to combine where say two courses are essentially the same but have separate data sets.
SELECT C.course_title, PS.course_grade, COUNT(*) as grade_count
FROM program_status AS PS
JOIN course AS C ON PS.course_id = C.course_id
WHERE C.course_id = 27
GROUP BY C.course_title, PS.course_grade
ORDER BY C.course_title, grade_count DESC;

SELECT C.course_title, PS.course_grade, COUNT(*) as grade_count
FROM program_status AS PS
JOIN course AS C ON PS.course_id = C.course_id
WHERE C.course_id = 3
GROUP BY C.course_title, PS.course_grade
ORDER BY C.course_title, grade_count DESC;

SELECT C.course_title, PS.course_grade, COUNT(*) as grade_count
FROM program_status AS PS
JOIN course AS C ON PS.course_id = C.course_id
WHERE C.course_id = 46
GROUP BY C.course_title, PS.course_grade
ORDER BY C.course_title, grade_count DESC;

SELECT C.course_title, PS.course_grade, COUNT(*) as grade_count
FROM program_status AS PS
JOIN course AS C ON PS.course_id = C.course_id
WHERE C.course_id = 44
GROUP BY C.course_title, PS.course_grade
ORDER BY C.course_title, grade_count DESC;

SELECT C.course_title, PS.course_grade, COUNT(*) as grade_count
FROM program_status AS PS
JOIN course AS C ON PS.course_id = C.course_id
WHERE C.course_id = 24
GROUP BY C.course_title, PS.course_grade
ORDER BY C.course_title, grade_count DESC;