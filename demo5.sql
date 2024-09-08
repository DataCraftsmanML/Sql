CREATE TABLE student3(  
  rollno INT PRIMARY KEY,
  name VARCHAR(50)
);

INSERT INTO student3
(rollno, name)
VALUES
(101, "anjli"),
(102, "bhumika"),
(103, "chetan");

CREATE TABLE student4(  
  rollno INT PRIMARY KEY,
  city VARCHAR(50)
);

INSERT INTO student4
(rollno, city)
VALUES
(102, "mumbai"),
(105, "pune"),
(103, "kolkata"),
(107, "surat");


-- INNER JOIN

SELECT *
FROM student3
INNER JOIN student4
ON student3.rollno = student4.rollno; 

-- LEFT JOIN

SELECT *
FROM student3
LEFT JOIN student4
ON student3.rollno = student4.rollno;

-- RIGHT JION

SELECT *
FROM student3
RIGHT JOIN student4
ON student3.rollno = student4.rollno;

-- Full Join

SELECT *
FROM student3
LEFT JOIN student4
ON student3.rollno = student4.rollno
UNION
SELECT *
FROM student3
RIGHT JOIN student4
ON student3.rollno = student4.rollno;

-- THINK & ANS
-- Left Exclusive Join

SELECT *
FROM student3
LEFT JOIN student4
ON student3.rollno = student4.rollno
WHERE student4.rollno IS NULL;

-- Right Exclusive Join

SELECT *
FROM student3
RIGHT JOIN student4
ON student3.rollno = student4.rollno
WHERE student3.rollno IS NULL;


-- UNION and UNION ALL

SELECT rollno FROM student3
UNION 
SELECT rollno FROM student4;

SELECT rollno FROM student3
UNION ALL
SELECT rollno FROM student4;
