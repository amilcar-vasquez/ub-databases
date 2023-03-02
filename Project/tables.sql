DROP TABLE IF EXISTS faculties;
DROP TABLE IF EXISTS programs;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS courses_programs;
DROP TABLE IF EXISTS instructors;
DROP TABLE IF EXISTS pre_requisites;

CREATE TABLE faculties(
    faculty_id VARCHAR(4) PRIMARY KEY,
    faculty_name VARCHAR(100) NOT NULL,
    faculty_description TEXT NOT NULL
);

CREATE TABLE programs (
  program_id CHAR(4) PRIMARY KEY,
  faculty_id VARCHAR(4),
  program_name VARCHAR(50) NOT NULL,
  program_description TEXT NOT NULL,
  FOREIGN KEY (faculty_id)
    REFERENCES faculties (faculty_id)
);

CREATE TABLE instructors (
  instructor_id INT PRIMARY KEY,
  email VARCHAR (50) NOT NULL,
  instructor_name VARCHAR (50),
  office_location VARCHAR (50),
  telephone CHAR (20)
);

CREATE TABLE courses (
  course_id INT PRIMARY KEY,
  code CHAR ( 8 ) NOT NULL,
  year INT NOT NULL,
  semester INT NOT NULL,
  section VARCHAR (10) NOT NULL,
  title VARCHAR ( 100 ) NOT NULL,
  credits INT NOT NULL,
  modality VARCHAR ( 50 ) NOT NULL,
  modality_type VARCHAR(20) NOT NULL,
  instructor_id INT NOT NULL,
  class_venue	VARCHAR(100),
  communicatioin_tool	VARCHAR(25),
  course_platform	VARCHAR(25),
  field_trips	VARCHAR(3) check(field_trips in ('Yes','No')),
  resources_required TEXT NOT NULL,
  resources_recommended TEXT NOT NULL,
  resources_other TEXT NOT NULL,
  description TEXT NOT NULL,
  outline_url TEXT NOT NULL,
  UNIQUE (code, year, semester, section),
  FOREIGN KEY (instructor_id)
    REFERENCES instructors (instructor_id)
);
  
CREATE TABLE courses_programs (
  course_programs_id INT PRIMARY KEY,
  course_id INT NOT NULL,
  program_id CHAR(4) NOT NULL,
  FOREIGN KEY (program_id)
    REFERENCES programs (program_id),
  FOREIGN KEY (course_id)
    REFERENCES courses (course_id)
);

CREATE TABLE pre_requisites (
    prereq_id VARCHAR(24) PRIMARY KEY,
    course_id INT NOT NULL,
    FOREIGN KEY (course_id)
        REFERENCES courses (course_id)
);