DROP TABLE IF EXISTS bjat_table;
DROP TABLE IF EXISTS pse_table;

CREATE TABLE bjat_table (
    student_id int NOT NULL,
    student_name text NOT NULL,
    bjat_score int NOT NULL
);

CREATE TABLE pse_table (
    student_id int NOT NULL,
    student_name text NOT NULL,
    pse_score int NOT NULL
);

--insert data into bjat table:
INSERT INTO bjat_table (student_id, student_name, bjat_score)
VALUES ('1', 'Jakob Roth', '68');

INSERT INTO bjat_table (student_id, student_name, bjat_score)
VALUES ('2', 'Calvin Sheppard', '90');

INSERT INTO bjat_table (student_id, student_name, bjat_score)
VALUES ('3', 'Ashley Ballard', '45');

INSERT INTO bjat_table (student_id, student_name, bjat_score)
VALUES ('5', 'Willie Carey', '55');

INSERT INTO bjat_table (student_id, student_name, bjat_score)
VALUES ('6', 'Eliana Hale', '62');

INSERT INTO bjat_table (student_id, student_name, bjat_score)
VALUES ('7', 'Lorna Shelton', '44');

INSERT INTO bjat_table (student_id, student_name, bjat_score)
VALUES ('9', 'Noor Davila', '43');

INSERT INTO bjat_table (student_id, student_name, bjat_score)
VALUES ('10', 'Fatimah Holt', '55');

--insert data into pse table:
INSERT INTO pse_table (student_id, student_name, pse_score)
VALUES ('1', 'Jakob Roth', '72');

INSERT INTO pse_table (student_id, student_name, pse_score)
VALUES ('2', 'Calvin Sheppard', '92');

INSERT INTO pse_table (student_id, student_name, pse_score)
VALUES ('4', 'Charles Watson', '48');

INSERT INTO pse_table (student_id, student_name, pse_score)
VALUES ('5', 'Willie Carey', '60');

INSERT INTO pse_table (student_id, student_name, pse_score)
VALUES ('6', 'Eliana Hale', '64');

INSERT INTO pse_table (student_id, student_name, pse_score)
VALUES ('7', 'Lorna Shelton', '54');

INSERT INTO pse_table (student_id, student_name, pse_score)
VALUES ('8', 'Mary Fischer', '45');

INSERT INTO pse_table (student_id, student_name, pse_score)
VALUES ('10', 'Fatimah Holt', '58');