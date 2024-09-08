CREATE TABLE student2(
  rollno INT PRIMARY KEY,
  name VARCHAR(50),
  marks INT NOT NULL,
  grade VARCHAR(1),
  city VARCHAR(20)
  );

INSERT INTO student2
(rollno, name, marks, grade, city)
VALUES
(101, "anjli", "78", "C", "pune"),
(102, "bhumika", "93", "A", "mumbai"),
(103, "chetan", "85", "B", "mumbai"),
(104, "dhruv", "96", "A", "delhi"),
(105, "emanuel", "12", "F", "delhi"),
(106, "farah", "82", "B", "delhi");

SELECT * FROM student2;

-- ADD COLUMN

ALTER TABLE student2
ADD COLUMN age INT NOT NULL DEFAULT 29;

UPDATE student2 SET age = 20 WHERE rollno = 101;
UPDATE student2 SET age = 21 WHERE rollno = 104;

ALTER TABLE student2
DROP COLUMN age;

-- MODIFY COLUMN

ALTER TABLE student2
MODIFY COLUMN age VARCHAR(2);

-- CHANGE (RENAME)

ALTER TABLE student2
CHANGE age age_stu INT;

INSERT INTO student2
(rollno, name, marks, age_stu)
VALUES
(107, "GARGI", 68, 100);

-- DROP TABLE

ALTER TABLE student2
DROP COLUMN age_stu;

-- RENAME TABLE

ALTER TABLE stu
RENAME TO student2; 

TRUNCATE TABLE student2;
