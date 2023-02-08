--join all rows that have the same student id.

SELECT * FROM bjat_table
INNER JOIN pse_table
ON bjat_table.student_id = pse_table.student_id;

--join all rows that have the same student id.  Also includes all records from bjat table.

SELECT * FROM bjat_table
LEFT JOIN pse_table
ON bjat_table.student_id = pse_table.student_id;

--join all rows that have the same student id.  Also includes all records from pse table.
SELECT * FROM bjat_table
RIGHT JOIN pse_table
ON bjat_table.student_id = pse_table.student_id;

--join all rows that have the same student id but do not have pse scores.
SELECT * FROM bjat_table
LEFT JOIN pse_table
ON bjat_table.student_id = pse_table.student_id
WHERE pse_table.student_id IS NULL;

--join all rows that have the same student id but do not have BJAT scores.
SELECT * FROM bjat_table
RIGHT JOIN pse_table
ON bjat_table.student_id = pse_table.student_id
WHERE bjat_table.student_id IS NULL;

--join all rows from both tables.
SELECT * FROM bjat_table
FULL JOIN pse_table
ON bjat_table.student_id = pse_table.student_id;

--join all rows that have either bjat or pse scores missing.
SELECT * FROM bjat_table
FULL JOIN pse_table
ON bjat_table.student_id = pse_table.student_id
WHERE bjat_table.student_id IS NULL OR pse_table.student_id IS NULL;