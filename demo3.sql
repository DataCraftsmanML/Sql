-- Cascading for FK

CREATE TABLE student1(
  rollno INT PRIMARY KEY,
  name VARCHAR(50),
  marks INT NOT NULL,
  grade VARCHAR(1),
  city VARCHAR(20)
  );

CREATE TABLE dept(
  id INT PRIMARY KEY,
  name VARCHAR(50)
);

INSERT INTO dept
VALUES
(101, "english"),
(102, "IT");

SELECT * FROM dept;

UPDATE dept
SET ID = 111
WHERE id = 101;

CREATE TABLE teacher(
  id INT PRIMARY KEY,
  name VARCHAR(50),
  dept_id INT,
  FOREIGN KEY (dept_id) REFERENCES dept(id) 
  ON UPDATE CASCADE
  ON DELETE CASCADE
);

INSERT INTO teacher
VALUES
(101, "Adam", 101),
(102, "Eve", 102);  

SELECT * FROM teacher;