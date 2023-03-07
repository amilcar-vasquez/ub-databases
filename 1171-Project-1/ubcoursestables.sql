DROP TABLE IF EXISTS course_outlines;

CREATE TABLE course_outlines (
    ub_course_id VARCHAR(100) NOT NUll,
    course_title VARCHAR(100) NOT NUll,
    credits INT not NULL,
    section VARCHAR(10) NOT NUll,
    course_modality TEXT CHECK (course_modality IN ('online', 'face to face')),
    course_modality_type TEXT CHECK (course_modality_type IN ('Synchronous', 'Asynchronous')),
    course_instructor_email TEXT NOT NULL,
    program TEXT NOT NULL,
    semester VARCHAR(100) NOT NUll,
    class_venue VARCHAR(100) NOT NUll,
    communication_tool VARCHAR(100) CHECK (communication_tool IN ('Zoom', 'Google Meet')),
    course_platform VARCHAR(100) NOT NUll,
    field_trips VARCHAR(3) CHECK (field_trips IN ('yes', 'no')),
    resources TEXT,
    required TEXT,
    recommended TEXT,
    other TEXT,
    course_description TEXT NOT NULL,
    course_outline_url TEXT
);

INSERT INTO course_outlines
VALUES (
    'CMPS1171',
    'Introduction to Databases',
    3,
    'OS1',
    'online',
    'Synchronous',
    'kryan@ub.edu.bz',
    'Associate in Information Technology (AINT)',
    '2022-2',
    'Online',
    'Google Meet',
    'MOODLE',
    'no',
    'NA',
    'None',
    'Database Processing: Fundamentals, Design, and Implementation 14th Edition.',
    'Course materials for this course are found at doit.ub.edu.bz',
    'This course is designed to provide fundamental techniques and knowledge for data storage, retrieval and analysis. Topics include: Fundamentals of Database Management System and Database Design which encompasses Relational Model and Normalization, Database Design Using Normalization, Data Modeling and the Entity-Relationship Model, and Transforming Data Models in Database Designs. In addition, students will learn how to use SQL to perform data analysis on large datasets.',
    'https://docs.google.com/document/d/1IX_6VRlIIjMCOdMvMn5MwkzuvKzAQdz7/edit?usp=sharing&ouid=112021628456907974128&rtpof=true&sd=true'
);