CREATE DATABASE college;
USE college;

CREATE TABLE student(
  rollno INT PRIMARY KEY,
  name VARCHAR(50),
  marks INT NOT NULL,
  grade VARCHAR(1),
  city VARCHAR(20)
  );
  
INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anjli", "78", "C", "pune"),
(102, "bhumika", "93", "A", "mumbai"),
(103, "chetan", "85", "B", "mumbai"),
(104, "dhruv", "96", "A", "delhi"),
(105, "emanuel", "12", "F", "delhi"),
(106, "farah", "82", "B", "delhi");

INSERT INTO student VALUES (107, "NEHA", "78", "C", "SURAT");

DELETE FROM student WHERE rollno = 107;

SELECT * FROM student;
SELECT DISTINCT * FROM student;

-- Operators using where

SELECT * FROM student WHERE marks>80 AND city = "mumbai";
SELECT * FROM student WHERE marks+10>100;
SELECT * FROM student WHERE marks>80 OR city = "kolkata";
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student WHERE city IN ("delhi");
SELECT * FROM student WHERE city NOT IN ("delhi");

-- LIMIT clause
SELECT * FROM student WHERE marks<80 LIMIT 3;

-- ORDER BY
SELECT * FROM student ORDER BY marks ASC;
SELECT * FROM student ORDER BY rollno DESC;

-- AGGREGATE FUNCTION
SELECT count(rollno) FROM student;
SELECT max(rollno) FROM student;
SELECT min(rollno) FROM student;
SELECT avg(marks) FROM student;
SELECT sum(marks) FROM student;

-- Group By Clause
SELECT city, count(rollno) FROM student GROUP BY city;
SELECT city, avg(rollno) FROM student GROUP BY city;

SELECT city, avg(marks) FROM student GROUP BY city ORDER BY city ASC;

-- Having Clause
SELECT city, count(rollno) FROM student GROUP BY city HAVING max(marks) > 90; 

SELECT city FROM student WHERE grade = "A" GROUP BY city HAVING MAX(marks) >= 93 ORDER BY city ASC;

-- Table related Queries
-- Update (to update existing rows)

SET SQL_SAFE_UPDATES = 0;

UPDATE student SET grade =  "O" WHERE grade  = "A"; 
UPDATE student SET grade =  "B" WHERE marks BETWEEN 80 AND 90; 
UPDATE student SET marks =  marks+1; 

-- Table related Queries
-- Delete (to delete existing rows)

DELETE FROM student WHERE marks < 33;
SELECT * FROM student;

