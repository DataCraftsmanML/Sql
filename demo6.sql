CREATE TABLE student5(
  rollno INT PRIMARY KEY,
  name VARCHAR(50),
  marks INT NOT NULL,
  grade VARCHAR(1),
  city VARCHAR(20)
  );
  
INSERT INTO student5
(rollno, name, marks, grade, city)
VALUES
(101, "anjli", "78", "C", "pune"),
(102, "bhumika", "93", "A", "mumbai"),
(103, "chetan", "85", "B", "mumbai"),
(104, "dhruv", "96", "A", "delhi"),
(105, "emanuel", "12", "F", "delhi"),
(106, "farah", "82", "B", "delhi");

-- sql sub queries

SELECT AVG(marks)
FROM student5;

SELECT name, marks
FROM student5
WHERE marks > 74.3333; 

SELECT name, marks
FROM student5
WHERE marks > (
SELECT AVG(marks) FROM student5); 

-- Get names of all students who scored more than class average.
-- Step 1. Find the avg of class
-- Step 2. Find the names of students with marks > avg

SELECT rollno
FROM student5
WHERE rollno % 2 = 0;

SELECT name, rollno
FROM student5
WHERE rollno IN(
     SELECT rollno
     FROM student5
	 WHERE rollno % 2 = 0);

-- Find the names of all students with even roll numbers.
-- Step 1. Find the even roll numbers
-- Step 2. Find the names of students with even roll no

SELECT MAX(marks)
FROM (SELECT * FROM student5 WHERE CITY = "delhi") AS temp;

-- using with select

SELECT (SELECT MAX(marks) FROM student5), name
FROM  student5;

SELECT MAX(marks)
FROM student5
WHERE city = "mumbai";

-- MySql Views

CREATE VIEW view1 AS
SELECT rollno, name, marks FROM student5;

DROP VIEW view1;

SELECT * FROM view1
WHERE marks>90;

