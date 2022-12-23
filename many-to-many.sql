-- DROP TABLE IF EXISTS student,course,student_course;
-- CREATE TABLE student (
-- 	student_id SERIAL PRIMARY KEY,
-- 	student_name VARCHAR(50) UNIQUE NOT NULL
-- );

-- CREATE TABLE course (
-- 	course_id SERIAL PRIMARY KEY,
-- 	course_name VARCHAR(50) UNIQUE NOT NULL
-- );

-- CREATE TABLE student_course (
-- 	course_id INT NOT NULL,
-- 	student_id INT NOT NULL,
--     PRIMARY KEY(course_id, student_id)
-- );

-- INSERT INTO student(student_name) VALUES('Aldi');
-- INSERT INTO student(student_name) VALUES('Erwin');


-- INSERT INTO course(course_name) VALUES('Intro Database');
-- INSERT INTO course(course_name) VALUES('Intro Backend');

-- INSERT INTO student_course(course_id, student_id) VALUES(1, 1);
-- INSERT INTO student_course(course_id, student_id) VALUES(1, 2);
-- INSERT INTO student_course(course_id, student_id) VALUES(2, 2);

-- SELECT * FROM student_course;

SELECT
    student_name,
    course_name
FROM student_course
LEFT JOIN student USING(student_id)
INNER JOIN course USING(course_id);