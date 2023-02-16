CREATE DATABASE IF NOT EXISTS course_transfers;

CREATE TABLE feeder_schools (
    school_id VARCHAR(100) NOT NUll,
    school_name VARCHAR(100) NOT NUll,
    school_contact VARCHAR(100) NOT NUll,
    PRIMARY KEY (school_id)
);

CREATE TABLE feeder_courses (
    fs_course_id VARCHAR(100) NOT NUll,
    school_id VARCHAR(100) NOT NUll,
    fs_course_name VARCHAR(100) NOT NUll,
    fs_course_description TEXT NOT NUll,
    PRIMARY KEY (course_id),
    FOREIGN KEY (school_id) REFERENCES feeder_schools(school_id)
);

CREATE TABLE ub_courses (
    ub_course_id VARCHAR(100) NOT NUll,
    ub_course_name VARCHAR(100) NOT NUll,
    ub_course_description TEXT NOT NUll,
    PRIMARY KEY (ub_course_id),
);

CREATE TABLE transfer_matrix (
    transfer_id SERIAL PRIMARY KEY,
    fs_course_id VARCHAR(100) NOT NUll,
    fs_course_name VARCHAR(100) NOT NUll,
    ub_course_id VARCHAR(100) NOT NUll,
    ub_course_name VARCHAR(100) NOT NUll,
    transfer_justification TEXT NOT NUll,
    FOREIGN KEY (fs_course_id) REFERENCES feeder_courses (fs_course_id),
    FOREIGN KEY (ub_course_id) REFERENCES ub_courses (ub_course_id)
);