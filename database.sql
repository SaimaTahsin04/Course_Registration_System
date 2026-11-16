-- Course Registration System (DBMS Lab) - works in SQLite / MySQL (minor syntax changes)
PRAGMA foreign_keys = ON;

CREATE TABLE students (
  student_id  TEXT PRIMARY KEY,
  full_name   TEXT NOT NULL,
  email       TEXT NOT NULL UNIQUE,
  department  TEXT NOT NULL,
  semester    INTEGER NOT NULL CHECK (semester BETWEEN 1 AND 8)
);

CREATE TABLE courses (
  course_id   TEXT PRIMARY KEY,
  title       TEXT NOT NULL,
  credits     INTEGER NOT NULL CHECK (credits BETWEEN 1 AND 4),
  instructor  TEXT NOT NULL
);

CREATE TABLE registrations (
  reg_id      INTEGER PRIMARY KEY AUTOINCREMENT,
  student_id  TEXT NOT NULL,
  course_id   TEXT NOT NULL,
  Semester        TEXT NOT NULL,
  status      TEXT NOT NULL DEFAULT 'Enrolled' CHECK (status IN ('Enrolled','Completed','Dropped')),
  FOREIGN KEY (student_id) REFERENCES students(student_id),
  FOREIGN KEY (course_id)  REFERENCES courses(course_id),
  UNIQUE (student_id, course_id, Semester)
);

INSERT INTO students VALUES
('S101','Sumaiya','sumaiya@uni.edu','CSE',4),
('S102','Oishee','oishee@uni.edu','CSE',4),
('S103','Mariam','mariam@uni.edu','EEE',3),
('S104','Arin','arin@uni.edu','BBA',5),
('S105','Tahsin','tahsin@uni.edu','CSE',2),
('S106','Adel','adel@uni.edu','EEE',6);

INSERT INTO courses VALUES
('CSE201','Database Systems',3,'Dr. Shorob'),
('CSE105','Programming Fundamentals',3,'Ms. Faria'),
('CSE310','Operating Systems',3,'Dr. Salma'),
('EEE210','Digital Logic Design',3,'Mr. Rahim'),
('MAT101','Discrete Mathematics',2,'Dr. Nasrin'),
('BBA150','Principles of Management',2,'Ms. Samiha');

INSERT INTO registrations (student_id, course_id, Semester, status) VALUES
('S101','CSE201','Autumn 2026','Enrolled'),
('S101','CSE310','Autumn 2026','Enrolled'),
('S101','MAT101','Spring 2026','Completed'),
('S102','CSE201','Autumn 2026','Enrolled'),
('S102','CSE105','Spring 2026','Completed'),
('S103','EEE210','Autumn 2026','Enrolled'),
('S103','MAT101','Autumn 2026','Enrolled'),
('S104','BBA150','Autumn 2026','Enrolled'),
('S104','MAT101','Spring 2026','Dropped'),
('S105','CSE105','Autumn 2026','Enrolled'),
('S106','EEE210','Spring 2026','Completed'),
('S106','CSE201','Autumn 2026','Enrolled');

-- Sample queries used by the app
-- JOIN:      SELECT r.reg_id, s.full_name, c.title, r.Semester, r.status FROM registrations r JOIN students s ON s.student_id=r.student_id JOIN courses c ON c.course_id=r.course_id;
-- AGGREGATE: SELECT c.title, COUNT(*) FROM registrations r JOIN courses c ON c.course_id=r.course_id GROUP BY c.course_id;
