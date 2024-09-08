CREATE TABLE student(
  name VARCHAR(50), 
  id INT NOT NULL -- NOT NULL columns cannot have a null value
);

INSERT INTO student
(name, id)
VALUES
('adam', 1),
('bob', 2);

SELECT * FROM student;

CREATE TABLE temp1(
 col1 INT UNIQUE -- UNIQUE all values in column are different
);

INSERT INTO temp1 VALUES (101);
INSERT INTO temp1 VALUES (101);

SELECT * FROM temp1;

CREATE TABLE temp2(
  id int,
  name VARCHAR(50),
  PRIMARY KEY(id, name) -- PRIMARY KEY makes a column unique & not null but used only for one
);


INSERT INTO temp2
(id, name)
VALUES
('1', "jia"),
('4', "jia"),
('2', "janvi"),
('2', "shresha"),
('2', "mahi");

SELECT * FROM temp2;

CREATE TABLE temp3(
  id INT,
  salary INT DEFAULT 23000); -- DEFAULT sets the default value of a column
  
INSERT INTO temp3
(id)
VALUES
(101),
(102);

SELECT * FROM temp3;