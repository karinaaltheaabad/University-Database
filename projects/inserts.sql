
-- Script name: inserts.sql
-- Author:      Karina Abad
-- Purpose:     insert sample data to test database

USE iLearnDB; 

-- UNIVERSITY
INSERT INTO university (iduniversity, university_name) VALUES (1,'SAN FRANCISCO STATE UNIVERSITY');
INSERT INTO university (iduniversity, university_name) VALUES (2,'SAN FRANCISCO CITY COLLEGE');
INSERT INTO university (iduniversity, university_name) VALUES (3,'UNIVERSITY OF SAN FRANCISCO');
-- WEBSITE 
INSERT INTO website (URL, university) VALUES ('www.sfsu.edu', 1), ('www.sfcc.edu', 2), ('www.usf.edu', 3);
-- REGION 
INSERT INTO region (idregion, region_zipcode, university) VALUES (1, 94132, 1), (2, 43522, 2), (3, 23455, 3); 
-- LIBRARY 
INSERT INTO library (idlibrary, library_name, address, region) VALUES (1, 'SFSU LIBRARY', '100 ELM ST. SF 94320', 1), (2, 'SFCC LIBRARY', '100 PAK ST. SF 94220', 2), (3, 'USF LIBRARY', '100 TOWN ST. SF 95555', 3);
-- BOOK 
INSERT INTO book (ISBN, book_name, library) VALUES (9123, 'THE ART OF RACING IN THE RAIN', 1), (9122, 'COMPUTER NETWORKING', 1), (1234, 'HARRY POTTER AND THE GOBLET OF FIRE', 1);
-- MULTIMEDIA 
INSERT INTO multimedia (idmultimedia, type, library) VALUES (1, 'ebook', 1), (2, 'video', 1), (3, 'audio', 1);
-- EBOOK 
INSERT INTO ebook (idebook, ebook_genre, multimedia) VALUES (1, 'fiction', 1), (2, 'nonfiction', 1), (3, 'biography', 1);
-- AUTHOR
INSERT INTO author (idauthor, author_name, book) VALUES (1, 'kelly smith', 9123), (2, 'miguel paso', 9122), (3, 'ripa ann', 1234);
-- AUDIO 
INSERT INTO audio (idaudio, genre, multimedia) VALUES (1, 'rock', 3), (2, 'soft jazz', 3), (3, 'classical', 3);
-- VIDEO
INSERT INTO video (idvideo, video_name, multimedia) VALUES (1, 'kiss me', 2), (2, 'marley and me', 2), (3, 'killing me softly', 2);
-- SEMESTER
INSERT INTO semester (idsemester, semester_season, university) VALUES (1, 'FALL', 1), (2, 'SPRING', 1), (3, 'SUMMER', 1), (4, 'WINTER', 1);
-- STUDENT
INSERT INTO student (idstudent, student_email, student_name) VALUES (1, 'kabad1@mail.sfsu.edu', 'KARINA ABAD'), (2, 'JOEY@mail.sfsu.edu', 'JOEY CEDO'), (3, 'MIGUEL@mail.sfsu.edu', 'MIGUEL CRUZ');
-- EMPLOYEE
INSERT INTO employee (employeeid, employee_type, university) VALUES (1, 'PROFESSOR', 1), (2, 'TECH ENGINEER', 1);
-- EDUCATOR
INSERT INTO educator (ideducator, educator_email, employee_type, employee) VALUES (1, 'j@mail.sfsu', 'PROFESSOR', 1), (2, 'k@mail.sfsu', 'PROFESSOR', 1), (3, 'jk@sfsu.edu', 'PROFESSOR', 1);
-- ELECTRONIC
INSERT INTO electronic (idelectronic, library) VALUES (1, 1), (2, 1), (3, 1), (4, 1);
-- COLLEGE
INSERT INTO college (idcollege, college_name, university) VALUES (1, 'COLLEGE OF BUSINESS', 1), (2, 'COLLEGE OF ENGINEERING', 1), (3, 'COLLEGE OF BUSINESS', 1);
-- DEPARTMENT
INSERT INTO department (iddepartment, department_name, college) VALUES (1, 'COMMUNICATIONS', 1), (2, 'MATHEMATICS', 2), (3, 'BUSINESS', 3);
-- SUBJECT
INSERT INTO subject (idsubject, subject_name) VALUES (1, 'Microbiology'), (2, 'Algebraic Equations'), (3, 'Managing Small Businesses');
-- CLASS
INSERT INTO class (idclass, class_name, department, subject, educator) VALUES (1, 'Introduction to Communications', 1, 3, 1), (2, 'Introduction to Mathematics', 2, 2, 3), (3, 'Introduction to Business', 3, 3, 2);
-- TECH ENGINEER
INSERT INTO techEngineer (idtechEngineer, employee_type, employee_name, employee) VALUES (1, 'TECH ENGINEER', 'Sam Smith', 2), (2, 'TECH ENGINEER', 'Joe Jonas', 2), (3, 'TECH ENGINEER', 'Taylor Lautner', 2);
-- USER
INSERT INTO user (user_name, password, university) VALUES ('karinaabad', 'helloworld', 1), ('joeycedo', 'taylorswift', 1), ('miguelabad', 'photography', 1);
-- TECH SUPPORT
INSERT INTO techSupport (idtechSupport, email, techEngineer) VALUES (1, 'ksupport@mail.com', 1), (2, 'jopsupport@mail.com', 2), (3, 'support@mail.com', 3);
-- ARCHIVE
INSERT INTO archive (idarchive, type) VALUES (1, 'CLASS'), (2, 'SEMESTER'), (3, 'LIBRARY'), (4, 'TECHNOLOGY SUPPORT'), (5, 'UNIVERSITY');
-- ACCOUNT
INSERT INTO account (account_name, user) VALUES ('Karina Abad', 'karinaabad'), ('Joey Cedo', 'joeycedo'), ('Miguel Abad', 'miguelabad');
-- GRADE 
INSERT INTO grade (idgrade, grade_letter, educator, student) VALUES (1, 'A', 1, 1), (2, 'B', 1, 2), (3, 'B+', 1, 3);
-- RESOURCE (EH)
INSERT INTO resource (URL, class, semester, archive, library, techSupport, website) VALUES ('www.sfsu.edu/LIBRARY', 1, 1, 3, 1, 1, 'www.sfsu.edu'), ('www.sfsu.edu/SEMESTERS', 1, 1, 2, 1, 1, 'www.sfsu.edu'), ('www.sfsu.edu/TECHNOLOGY SUPPORT', 1, 1, 4, 1, 1, 'www.sfsu.edu');
-- HOMEWORK 
INSERT INTO homework (idhomework, topic, educator) VALUES (1, 'Business Ethics Practice Problems', 1), (2, 'Algebraic Equations Review', 2), (3, 'Medieval Arts', 3);
-- LECTURE
INSERT INTO lecture (idlecture, topic, educator) VALUES (1, 'Business Ethics', 1), (2, 'Algebra, Whole Numbers and Sums', 2), (3, 'Arts', 3);
-- POST
INSERT INTO post (idpost, post_type, educator) VALUES (1, 'ASSIGNMENTS', 1), (2, 'ANNOUNCEMENTS', 1), (3, 'GRADING REVIEWS', 1);
-- TEST
INSERT INTO test (idtest, topic, educator) VALUES (1, 'BUSINESS ETHICS TEST', 1), (2, 'VECTOR FIELDS TEST1', 2), (3, 'ART HISTORY AND DATES TEST 3', 3);
-- QUIZ
INSERT INTO quiz (idquiz, topic, educator) VALUES (1, 'quiz 1, business ethics', 1), (2, 'graphs and grids quiz 1', 2), (3, 'art types and authors quiz 1', 3);