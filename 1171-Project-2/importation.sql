--importing data:
COPY school
FROM '/home/bntubenque/repos/ub-databases/1171-Project-2/csvs/school.csv'
DELIMITER ','
CSV HEADER;

COPY program
FROM '/home/bntubenque/repos/ub-databases/1171-Project-2/csvs/program.csv'
DELIMITER ','
CSV HEADER;

COPY student
FROM '/home/bntubenque/repos/ub-databases/1171-Project-2/csvs/student.csv'
DELIMITER ','
CSV HEADER;

COPY course
FROM '/home/bntubenque/repos/ub-databases/1171-Project-2/csvs/course.csv'
DELIMITER ','
CSV HEADER;

COPY program_status
FROM '/home/bntubenque/repos/ub-databases/1171-Project-2/csvs/program_status.csv'
DELIMITER ','
CSV HEADER;

COPY completion
FROM '/home/bntubenque/repos/ub-databases/1171-Project-2/csvs/completion.csv'
DELIMITER ','
CSV HEADER;
