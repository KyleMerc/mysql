CREATE TABLE persons (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(45),
  last_name VARCHAR(45),
  age INT(2),
  gender ENUM('M','F'),
  address VARCHAR(45)
);
