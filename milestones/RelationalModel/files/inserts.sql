
-- Script name: inserts.sql
-- Author:      Karina Abad
-- Purpose:     insert sample data to test database

USE iLearnDB; 

INSERT INTO university (iduniversity, university_name) VALUES (1,'SAN FRANCISCO STATE UNIVERSITY');
INSERT INTO university (iduniversity, university_name) VALUES (2,'SAN FRANCISCO CITY COLLEGE');
INSERT INTO university (iduniversity, university_name) VALUES (3,'UNIVERSITY OF SAN FRANCISCO');
INSERT INTO website (URL, university) VALUES ('www.sfsu.edu', 1), ('www.sfcc.edu', 2), ('www.usf.edu', 3);
INSERT INTO region (idregion, region_zipcode, university) VALUES (1, 94355, 1), (2, 43522, 2), (3, 23455, 3); 
INSERT INTO library (idlibrary, library_name, address, region) VALUES (1, 'SFSU LIBRARY', '100 ELM ST. SF 94320', 1), (2, 'SFCC LIBRARY', '100 PAK ST. SF 94220', 2), (3, 'USF LIBRARY', '100 TOWN ST. SF 95555', 3);
INSERT INTO book (ISBN, book_name, library) VALUES (9123, 'hello world', 1), (9122, 'bye world', 1), (1234, 'computer networks', 1);
INSERT INTO multimedia (idmultimedia, type, library) VALUES (1, 'ebook', 1), (2, 'video', 1), (3, 'audio', 1);
INSERT INTO ebook (idebook, ebook_genre, multimedia) VALUES (1, 'fiction', 1), (2, 'nonfiction', 1), (3, 'biography', 1);
INSERT INTO author (idauthor, author_name, book) VALUES (1, 'kelly smith', 9123), (2, 'miguel paso', 9122), (3, 'ripa ann', 1234);
INSERT INTO audio (idaudio, genre, multimedia) VALUES (1, 'rock', 3), (2, 'soft jazz', 3), (3, 'classical', 3);
INSERT INTO video (idvideo, video_name, multimedia) VALUES (1, 'kiss me', 2), (2, 'marley and me', 2), (3, 'killing me softly', 2);
INSERT INTO semester (idsemester, semester_season, university) VALUES (1, 'FALL', 1), (2, 'SPRING', 1), (3, 'SUMMER', 1);
INSERT INTO student (idstudent, student_email, student_name, semester) VALUES (1, 'kabad1@mail.sfsu.edu', 'karina abad', 1), (2, 'JOEY@mail.sfsu.edu', 'JOEY CEDO', 1), (3, 'MIGUEL@mail.sfsu.edu', 'MIGUEL CRUZ', 1);
INSERT INTO employee (idemployee, employee_type, university) VALUES (1, 'PROFESSOR', 1), (2, 'PROFESSOR', 1), (3, 'TECH ENGINEER', 1), (4, 'TECH ENGINEER', 1);
INSERT INTO employee (idemployee, employee_type, university) VALUES (5, 'PROFESSOR', 1);
INSERT INTO employee (idemployee, employee_type, university) VALUES (6, 'TECH ENGINEER', 1);
INSERT INTO educator (ideducator, educator_email, employee) VALUES (1, 'j@mail.sfsu', 1), (2, 'k@mail.sfsu', 2), (3, 'jk@sfsu.edu', 3);
INSERT INTO electronic (idelectronic, library) VALUES (1, 1), (2, 1), (3, 1), (4, 1);
INSERT INTO college (idcollege, college_name, university) VALUES (1, 'BUSINESS', 1), (2, 'ENGINEERING', 1), (3, 'SCIENCES', 1);
INSERT INTO department (iddepartment, department_name, college) VALUES (1, 'COMMUNICATIONS', 1), (2, 'COMPUTER SCIENCE', 2), (3, 'BIOLOGY', 3);
INSERT INTO subject (idsubject) VALUES (1);
INSERT INTO subject (idsubject) VALUES (2);
INSERT INTO subject (idsubject) VALUES (3);
INSERT INTO class (idclass, class_name, department, subject, student_idstudent, educator) VALUES (1, 'intro to biology', 3, 1, 1, 1), (2, 'intro to mathematics', 2, 2, 2, 3), (3, 'intro to business', 1, 3, 3, 2);
INSERT INTO techEngineer (idtechEngineer, employee) VALUES (1, 3), (2, 4), (3, 6);
INSERT INTO user (iduser, user_name, website, student, educator, techEngineer) VALUES (1, 'kprof', 'www.sfsu.edu', 1, 1, 1), (2, 'love2learn', 'www.sfsu.edu', 2, 2, 2), (3, 'byemath', 'www.sfsu.edu', 3, 3, 3);
INSERT INTO techSupport (idtechSupport, email, techEngineer) VALUES (1, 'ksupport@mail.com', 1), (2, 'jopsupport@mail.com', 2), (3, 'support@mail.com', 3);
INSERT INTO archive (idarchive, type) VALUES (1, 'CLASS'), (2, 'SEMESTER'), (3, 'LIBRARY'), (4, 'TECHNOLOGY SUPPORT'), (5, 'UNIVERSITY');
INSERT INTO account (idaccount, user) VALUES (1, 1), (2, 2), (3, 3);
INSERT INTO grade (idgrade, educator, student) VALUES (1, 1, 1), (2, 1, 2), (3, 1, 3);
INSERT INTO resource (URL, class, semester, archive, library, techSupport, website) VALUES ('www.sfsu.edu/LIBRARY', 1, 1, 3, 1, 1, 'www.sfsu.edu'), ('www.sfsu.edu/SEMESTERS', 1, 1, 2, 1, 1, 'www.sfsu.edu'), ('www.sfsu.edu/TECHNOLOGY SUPPORT', 1, 1, 4, 1, 1, 'www.sfsu.edu');
-- INSERT INTO homework (idhomework, homework_date, educator, student) VALUES (1, 
-- INSERT INTO lecture (idlecture, lecture_date, educator)
-- INSERT INTO post (idpost, post_date, post_type, educator)
-- INSERT INTO test (idtest, test_date, test_time, educator, student)
-- INSERT INTO quiz (idquiz, quiz_date, quiz_time, educator, student)