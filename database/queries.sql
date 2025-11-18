-- DROP TABLE Students;
-- DROP TABLE Marks;

-- CREATE TABLE Students(id INTEGER PRIMARY KEY AUTOINCREMENT,
--                     firstname TEXT NOT NULL,
--                     lastname TEXT NOT NULL,
--                     dob TEXT NOT NULL);

-- CREATE TABLE Marks(id INTEGER PRIMARY KEY AUTOINCREMENT,
--                     student_id INTEGER,
--                     subject TEXT NOT NULL,
--                     mark INTEGER);

-- INSERT INTO Students(firstname, lastname, dob) VALUES
--                     ('Lachlan', 'Snake', '26/09/2007'),
--                     ('Bobby', 'Bob', '3/01/2008'),
--                     ('Bjorn', 'Johnson', '28/02/2007'),
--                     ('Tabitha', 'Michael', '23/10/2007'),
--                     ('Bart', 'Simpson', '25/11/2007'),
--                     ('Jennifer', 'Rose', '14/09/2007'),
--                     ('Lequisha', 'Dequavious', '11/10/2007'),
--                     ('Jill', 'Bloodborne', '28/03/2007');

-- INSERT INTO Marks(student_id, subject, mark) VALUES
--                     ('1', 'English', '50'),
--                     ('1', 'Maths', '100'),
--                     ('2', 'English', '67'),
--                     ('2', 'Science', '80'),
--                     ('3', 'English', '24'),
--                     ('4', 'English', '97'),
--                     ('5', 'Maths', '82'),
--                     ('5', 'Science', '5');


-- SELECT * FROM Students;
                    
-- SELECT firstname, lastname FROM Students;

-- SELECT * FROM Students LIMIT 5;

-- SELECT firstname, dob from Students
--     WHERE firstname LIKE 'B%';

-- SELECT lastname, dob from Students;

-- SELECT firstname, lastname from Students
--     ORDER BY lastname ASC;

-- SELECT firstname, lastname, dob from Students
--     WHERE dob LIKE '%2007';

-- SELECT * FROM Marks;

-- SELECT * FROM Marks
--     WHERE subject = 'English';

-- SELECT subject, mark FROM Marks
--     WHERE mark < '50';

-- SELECT subject, mark FROM Marks
--     WHERE mark >= '50';

-- UPDATE Students
--     SET firstname = 'Nick'
--     WHERE id = 2;

-- UPDATE Marks
--     SET subject = 'Maths Advanced'
--     WHERE subject = 'Maths';

-- SELECT * FROM Marks;

-- UPDATE Students
--     Set lastname = 'Simpson'
--     WHERE id = 8;

-- UPDATE Marks
--     Set subject = 'English Advanced'
--     Where subject = 'English';

-- Update Marks
--     Set mark = 150
--     where subject = 'Science';

-- select * from students;

-- Select * from marks;

-- DELETE FROM Students
--     WHERE id = 2;

-- INSERT INTO Students(firstname, lastname, dob)
--                 VALUES ('Bobby', 'Bob', '3/1/2008');

-- DELETE FROM Marks
--     WHERE mark < 25;

-- select * from marks;

-- DELETE FROM Students
--     WHERE lastname = 'Simpson';

-- DELETE FROM Marks
--     WHERE mark > 100;

-- SELECT COUNT(id), firstname
--         FROM Students
--         GROUP BY firstname;

-- SELECT SUM(mark), subject
--         from Marks
--         GROUP BY subject;

-- SELECT AVG(mark), subject
--         FROM Marks
--         GROUP BY subject;

-- SELECT COUNT(id), firstname, lastname
--         FROM Students
--         GROUP by lastname;

-- SELECT AVG(mark), mark
--         from Marks
--         GROUP BY subject;
--
-- SELECT SUM(id), subject
--         from Marks
--         GROUP BY subject;

-- SELECT Students.firstname, Students.lastname,
--                 Marks.subject, Marks.mark
-- FROM Students JOIN Marks
-- ON Students.id=Marks.student_id;

-- SELECT Students.firstname, Students.lastname, students.dob,
--                 Marks.student_id, Marks.subject, Marks.mark
-- FROM Students JOIN Marks
-- On Students.id=Marks.student_id;

-- SELECT Students.firstname, Students.lastname, students.dob,
--                 Marks.student_id, Marks.subject, Marks.mark
-- FROM Students JOIN Marks
-- On Students.id=Marks.student_id
-- WHERE mark >= 50;

-- SELECT Students.firstname, Students.lastname,
--                 Marks.subject, Marks.mark
-- FROM Students JOIN Marks
-- On Students.id=Marks.student_id
-- WHERE subject = 'English Advanced';

-- CREATE TABLE Issues(JobID INTEGER,
--                     Issue STRING,
--                     Response STRING,
--                     FixTime INTEGER,
--                     Category STRING,
--                     Status STRING);

-- INSERT INTO Issues(JobID, Issue, Response, FixTime, Category, Status) VALUES
--                     (0001, 'Cannot connect to the Internet', 'Clear Cache', 22, 'Software', 'Pending'),
--                     (0002, 'Installation Failure', 'Reinstall printer drivers', 76, 'Hardware', 'Pending'),
--                     (0004, 'Forgot Password', 'Reset Password', 97, 'Software', 'Resolved'),
--                     (0005, 'Installation Failure', 'Follow the installation Guide', 110, 'Hardware', 'Escalated'),
--                     (0009, 'Blue screen error', 'Run a sys diagnostic', 120, 'Software', 'Pending'),
--                     (0011, 'Installation Failure', 'Verify email settings', 45, 'Software', 'Escalated');


SELECT COUNT(*), Category, Status
    FROM Issues
    WHERE Status = 'Pending' OR Status = 'Escalated'
    GROUP BY Category, Status

ORDER BY COUNT(*) DESC;
