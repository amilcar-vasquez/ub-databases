-- 1.  Select all the students that came from Sacred Heart Junior College - school id 11
SELECT S.student_id, S.gender, S.school_id, SC.school_name
FROM student as S
JOIN school as SC
ON S.school_id = SC.school_id
WHERE S.school_id = 11;

-- 2.  Select all the students that graduated.
-- 3.  How many students did not pass Programming 1?
-- 4.  Which feeder schools are in the Cayo District?
-- 5.  Show all the students that scored A in Fundamentals of computing (course id 11)
-- 6.  How many females students take IT, compared to male students?
-- 7.  List students that graduated during the pandemic years (2019-2020)
-- 8.  Show all the students that came from a school under the Nazarene management.
-- 9.  Show all the grades for student 4538.
-- 10. list all the students that withdrew from a course.