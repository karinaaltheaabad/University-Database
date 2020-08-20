-- Script name: tests.sql
-- Author:      Karina Abad
-- Purpose:     insert sample data to test database

USE iLearnDB; 

-- DELETE FROM university WHERE university_name = "UNIVERSITY OF SAN FRANCISCO"; 
UPDATE university SET university_name = "STANFORD UNIVERSITY" WHERE university_name = "UNIVERSITY OF SAN FRANCISCO";
DELETE FROM website WHERE URL = "www.sfcc.edu"; 
UPDATE website SET URL = "www.stanford.edu" WHERE URL = "www.usf.edu";
-- DELETE FROM region WHERE region_zipcode = 43522; 
UPDATE region SET region_zipcode = 42312 WHERE region_zipcode = 94355;
DELETE FROM library WHERE library_name = "USF LIBRARY"; 
UPDATE library SET library_name = "STANFORD LIBRARY" WHERE library_name = "SFCC LIBRARY";
DELETE FROM book WHERE book_name = "hello world"; 
UPDATE book SET book_name = "giant pandas" WHERE book_name = "bye world";
DELETE FROM multimedia WHERE type = "ebook"; 
UPDATE multimedia SET type = "film" WHERE type = "video";
DELETE FROM ebook WHERE ebook_genre = "nonfiction"; 
UPDATE ebook SET ebook_genre = "arts" WHERE ebook_genre = "fiction";
DELETE FROM author WHERE author_name = "kelly smith"; 
UPDATE author SET author_name = "miguel abad" WHERE author_name = "miguel paso";
DELETE FROM audio WHERE genre = "rock"; 
UPDATE audio SET genre = "pop" WHERE genre = "soft jazz";
DELETE FROM video WHERE video_name = "kiss me"; 
UPDATE video SET video_name = "walking life" WHERE video_name = "killing me softly";
-- DELETE FROM semester WHERE semester_season = "FALL"; 
UPDATE semester SET semester_season = "WINTER" WHERE semester_season = "SPRING";
-- DELETE FROM student WHERE student_name = "karina abad"; 
UPDATE student SET student_name = "KELLY TAN" WHERE student_name = "JOEY CEDO";
-- DELETE FROM employee WHERE idemployee = 1; 
UPDATE employee SET employee_type = "PROFESSOR" WHERE employee_type = "PROFESSOR";
-- DELETE FROM educator WHERE educator_email = "j@mail.sfsu"; 
UPDATE educator SET educator_email = "karina@sfsu.edu" WHERE educator_email = "k@mail.sfsu";
DELETE FROM electronic WHERE idelectronic = 2; 
UPDATE electronic SET idelectronic = 7 WHERE idelectronic = 3;
DELETE FROM college WHERE college_name = 'PHYSICS'; 
UPDATE college SET college_name = "SCIENCE" WHERE college_name = "SCIENCES";
-- DELETE FROM department WHERE department_name = "COMMUNICATIONS"; 
UPDATE department SET department_name = "HEALTH SCIENCES" WHERE department_name = "BIOLOGY";
-- DELETE FROM subject WHERE idsubject = 1; 
UPDATE subject SET idsubject = 4 WHERE idsubject = 3;
-- DELETE FROM class WHERE class_name = "intro to biology"; 
UPDATE class SET class_name = "MATH 101" WHERE class_name = "intro to mathematics";
-- DELETE FROM techEngineer WHERE idtechEngineer = 1; 
-- UPDATE techEngineer SET idtechEngineer = 6 WHERE idtechEngineer = 2;
DELETE FROM user WHERE user_name = 'kprof'; 
UPDATE user SET user_name = 'greatstu' WHERE user_name = 'love2learn';
-- DELETE FROM techSupport WHERE email = 'ksupport@mail.com'; 
UPDATE techSupport SET email = 'tech@support.edu' WHERE email = 'jopsupport@mail.com';
DELETE FROM archive WHERE type = 'CLASS'; 
UPDATE archive SET type = 'CLASS' WHERE type = 'UNIVERSITY';
DELETE FROM account WHERE idaccount = 1; 
UPDATE account SET idaccount = 4 WHERE idaccount = 2;
DELETE FROM grade WHERE idgrade = 1; 
UPDATE grade SET idgrade = 4 WHERE idgrade = 2;
DELETE FROM resource WHERE archive = 3; 
UPDATE resource SET class = 2 WHERE class = 1;




