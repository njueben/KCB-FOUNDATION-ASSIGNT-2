# 1. Shirasala Sumbati Lindah: sumbatilinda@gmail.com
# 2. Dan Njuguna: njorogedan020@gmail.com
# 3. Sharon Cherop: sh.cherop@gmail.com
# 4. Benedict Njue: njuebenedict@gmail.com
# 5. Dabraham Immorah: stevandabraham@gmail.com
# Creating a datbase named edu_institute.
CREATE DATABASE IF NOT EXISTS edu_institute;
# Using the database to create a table named students
USE edu_institute;
# Create table students
CREATE TABLE IF NOT EXISTS students (
student_id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
gender CHAR(1),
enrollment_date DATE,
program VARCHAR(50)
);
# Altering the table to add data into the columns
INSERT INTO students VALUES
(1, "Linda Sumbati", 25, "F", "2022-03-04", "Computer Science"),
(2, "Sharon Cherop", 26, "F", "2022-03-04", "Data Science"),
(3, "Benedict Njue", 24, "M", "2022-03-04", "Data Science"),
(4, "Dabraham Immorah", 23, "M", "2022-03-04", "Software
Engineering"),
(5, "Dan Njuguna", 22, "M", "2022-03-04", "Cloud Security");
# UPDATE students SET program = "Data Science" WHERE student_id = 3;
-- a query to select all columns for all students in the "Data Science" program.
SELECT * FROM students WHERE program = "Data Science";
-- a query to find the total number of students and display it as Total Students.
SELECT COUNT(*) AS "Total Students" FROM students;
-- Function Usage
# Function to display todays date in a column named Today's Date
SELECT CURRENT_DATE() AS "Today's Date";
-- a query to select the student names and their enrolment dates, but display the name column in uppercase
SELECT UPPER(name) AS name, enrollment_date FROM students;
-- a query to count the number of students in each program and display the results in descending order of count. Name the count column as Number
of Students
SELECT program, COUNT(*) AS "Number of Students"
FROM students
GROUP BY program
ORDER BY COUNT(*) DESC;
-- a query to find the youngest student's name and age.
SELECT name, age
FROM students
ORDER BY age ASC
LIMIT 1;