--importing data:
COPY faculties
FROM '/home/bntubenque/repos/ub-databases/1171-Project-1/csvs/faculties.csv'
DELIMITER ','
CSV HEADER;

COPY programs
FROM '/home/bntubenque/repos/ub-databases/1171-Project-1/csvs/programs.csv'
DELIMITER ','
CSV HEADER;

COPY instructors
FROM '/home/bntubenque/repos/ub-databases/1171-Project-1/csvs/instructors.csv'
DELIMITER ','
CSV HEADER;

COPY courses
FROM '/home/bntubenque/repos/ub-databases/1171-Project-1/csvs/courses.csv'
DELIMITER ','
CSV HEADER;

COPY courses_programs
FROM '/home/bntubenque/repos/ub-databases/1171-Project-1/csvs/courses_programs.csv'
DELIMITER ','
CSV HEADER;

COPY pre_requisites
FROM '/home/bntubenque/repos/ub-databases/1171-Project-1/csvs/pre_reqs.csv'
DELIMITER ','
CSV HEADER;