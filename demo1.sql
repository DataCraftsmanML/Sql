-- Constraints

CREATE TABLE temp5(
  id INT PRIMARY KEY,
  city VARCHAR(50),
  age INT,
  CONSTRAINT age_check CHECK (age>=18 AND city="mumbai") -- CHECK it can limit the values allowed in a colum 
);

INSERT INTO temp5
(id, city, age) 
VALUES 
(1, 'delhi', 25),
(2, 'delhi', 30);

SELECT * FROM temp5;

CREATE TABLE temp5 (
  id INT PRIMARY KEY AUTO_INCREMENT,
  age INT Check (age>=18)
);

INSERT INTO temp5
(age) 
VALUES 
(22),
(32);

SELECT * FROM temp5;