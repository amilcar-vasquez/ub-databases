DROP TABLE IF EXISTS school;
DROP TABLE IF EXISTS program;
DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS course;
DROP TABLE IF EXISTS program_status;
DROP TABLE IF EXISTS completion;

CREATE TABLE school(
    school_id INT PRIMARY KEY,
    school_name VARCHAR (100),
    management VARCHAR (50),
    urban_rural CHAR(1),
    city VARCHAR (50),
    funding VARCHAR (50),
    district VARCHAR (50)
);

CREATE TABLE program(
    program_id INT PRIMARY KEY,
    course_code CHAR (4) NOT NULL,
    program_name VARCHAR (25) NOT NULL,
    degree_id INT NOT NULL,
    degree VARCHAR (25) NOT NULL
);

CREATE TABLE student(
    student_id INT PRIMARY KEY,
    gender CHAR(1) NOT NULL check(gender in ('F','M')),
    ethinicity CHAR (25),
    city VARCHAR (50),
    district VARCHAR (50),
    school_id INT,
    program_id INT NOT NULL,
    FOREIGN KEY (school_id)
        REFERENCES school (school_id),
    FOREIGN KEY (program_id)
        REFERENCES program (program_id)
);

CREATE TABLE course(
    course_id INT PRIMARY KEY,
    course_code CHAR (10) NOT NULL,
    course_title VARCHAR (50) NOT NULL,
    course_credits INT NOT NULL
);

CREATE TABLE program_status(
    program_status_id INT PRIMARY KEY,
    program_status VARCHAR (25) NOT NULL,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    course_grade CHAR (2),
    course_points DECIMAL,
    semester CHAR (6),
    FOREIGN KEY (student_id)
        REFERENCES student (student_id),
    FOREIGN KEY (course_id)
        REFERENCES course (course_id)
);

CREATE TABLE completion(
    completion_id INT PRIMARY KEY,
    program_status VARCHAR (10) NOT NULL,
    program_start CHAR (10),
    grad_date CHAR (10),
    program_end CHAR (10),
    student_id INT NOT NULL,
    FOREIGN KEY (student_id)
        REFERENCES student (student_id)
);