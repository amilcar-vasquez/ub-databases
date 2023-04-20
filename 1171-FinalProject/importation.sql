--importing data:
COPY feeder
FROM '/home/bntubenque/repos/ub-databases/1171-FinalProject/csvs/feeder.csv'
DELIMITER ','
CSV HEADER;

COPY program
FROM '/home/bntubenque/repos/ub-databases/1171-FinalProject/csvs/program.csv'
DELIMITER ','
CSV HEADER;

COPY student
FROM '/home/bntubenque/repos/ub-databases/1171-FinalProject/csvs/student.csv'
DELIMITER ','
CSV HEADER;

COPY course
FROM '/home/bntubenque/repos/ub-databases/1171-FinalProject/csvs/course.csv'
DELIMITER ','
CSV HEADER;

COPY student_course
FROM '/home/bntubenque/repos/ub-databases/1171-FinalProject/csvs/student_course.csv'
DELIMITER ','
CSV HEADER;

COPY student_program
FROM '/home/bntubenque/repos/ub-databases/1171-FinalProject/csvs/student_program.csv'
DELIMITER ','
CSV HEADER;