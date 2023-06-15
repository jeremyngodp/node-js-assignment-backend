CREATE TABLE IF NOT EXISTS teachers (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS students (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS subjects (
  id INT NOT NULL AUTO_INCREMENT,
  subjectCode VARCHAR(100) NOT NULL,
  subjectName VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS classes (
  id INT NOT NULL AUTO_INCREMENT,
  classCode VARCHAR(100) NOT NULL,
  className VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS teacher_subject_class (
  teacher_id int NOT NULL,
  class_id int NOT NULL,
  subject_id int NOT NULL,
  FOREIGN KEY (teacher_id) REFERENCES teachers(id),
  FOREIGN KEY (class_id) REFERENCES classes(id),
  FOREIGN KEY (subject_id) REFERENCES subjects(id)
);

CREATE TABLE IF NOT EXISTS student_class (
  class_id int NOT NULL,
  student_id int NOT NULL,
  FOREIGN KEY (class_id) REFERENCES classes(id),
  FOREIGN KEY (student_id) REFERENCES students(id)
);
