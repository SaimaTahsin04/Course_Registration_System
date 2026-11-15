Course Registration System

file:///C:/Users/DELL/Downloads/index%20(3).html

Project Overview

The Course Registration System is a DBMS lab project designed to manage student course registrations efficiently using a relational database. It provides a structured way to store, view, search, update, and delete student course registration records. The project demonstrates the practical application of Database Management System concepts, SQL queries, relational database design, and JavaScript integration.

Objectives

- Store and manage student information.
- Maintain course information and details.
- Register students for available courses.
- View all course registration records.
- Search registrations using student ID, name, email, course, or term.
- Update existing registration information.
- Delete registration records with confirmation.
- Prevent duplicate course registrations for the same student in the same term.
- Generate summary statistics such as total students, total courses, total registrations, currently enrolled students, average course credits, and maximum course credits.
- Display registration statistics for each course.

Technologies Used

Database: MySQL
Frontend: HTML
Version Control: Git and GitHub

Database Design

The project uses three relational tables:

1. Students Table

| Field | Description |
|---|---|
| student_id | Unique student ID (Primary Key) |
| full_name | Student's full name |
| email | Student's email address (Unique) |
| department | Student's department |
| semester | Current semester (1–8) |

2. Courses Table

| Field | Description |
|---|---|
| course_id | Unique course code (Primary Key) |
| title | Course title |
| credits | Course credit hours |
| instructor | Course instructor's name |

3. Registrations Table

| Field | Description |
|---|---|
| reg_id | Unique registration ID (Primary Key) |
| student_id | Student ID (Foreign Key) |
| course_id | Course ID (Foreign Key) |
| term | Academic term |
| status | Registration status (Enrolled, Completed, Dropped) |

The registrations table connects students and courses through foreign key relationships. A unique constraint prevents the same student from registering for the same course more than once in a particular term.

Main Features

1. Add and manage student records.
2. Add and manage course information.
3. Register students for courses.
4. Display all course registrations.
5. Search registrations by student ID, name, email, course, or term.
6. Update existing registration records.
7. Delete registration records with confirmation.
8. Track registration status (Enrolled, Completed, Dropped).
9. Prevent duplicate registrations within the same academic term.
10. View total students, courses, and registrations.
11. Display registration statistics for individual courses.

Project Structure

course-registration-system/
│
├── index.html
├── README.md
└── screenshots/


How to Run

1.Browser 
Download or clone this repository and open `index.html` in any modern web browser. An internet connection is required to load the SQL.js WebAssembly engine from the CDN.
2.SQL Server
Import database.sql into MySQL, MariaDB, or SQLite to inspect the schema and run queries directly.

Sample Data

The database includes fictional student records, course information, and registration records for testing the system.

Learning Outcomes Through this project, we aim to demonstrate:

Database creation and table design.
SQL operations (INSERT, SELECT, UPDATE, DELETE).
Aggregate functions (COUNT, AVG, MAX, MIN).
MySQL integration.
Practical database management skills.

Project Information
Project Name: Course Registration System
Course: Database Systems Lab
Project Type: Academic DBMS Project


Author

Developed as part of a Database Management System Lab project.

