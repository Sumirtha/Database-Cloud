#question2
CREATE DATABASE library;
SHOW DATABASES;
USE library;

#question3
CREATE TABLE Books (
book_id INT PRIMARY KEY,
book_name VARCHAR(255) NOT NULL,
publisher VARCHAR(255) NOT NULL,
year INT NOT NULL,
ISBN INT NOT NULL
);

Desc Books;

#question4
ALTER TABLE Books DROP COLUMN ISBN;
Desc Books;

#question5
CREATE TABLE Students (
student_id VARCHAR(50) PRIMARY KEY,
student_name VARCHAR(50) NOT NULL,
department VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL,
DOB VARCHAR(20) NOT NULL
);

Desc Students;

#question6
CREATE TABLE Book_issues (
    issue_no INT PRIMARY KEY,
    book_id INT,                   
    student_id VARCHAR(50),        
    date_of_issue DATE NOT NULL,
    date_of_return DATE NOT NULL,
    returned_book BOOLEAN NOT NULL,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);

Desc Book_issues;

#question7
INSERT INTO Books (book_id, book_name, publisher, year) VALUES
(201, 'Data Structures', 'Pearson', 2019),
(202, 'Machine Learning', 'OReilly', 2020),
(203, 'Python Programming', 'Packt', 2021),
(204, 'Database Systems', 'McGraw Hill', 2018),
(205, 'Bioinformatics Basics', 'Springer', 2022),
(206, 'Big Data Analytics', 'Wiley', 2020),
(207, 'Cloud Computing', 'Elsevier', 2019),
(208, 'Artificial Intelligence', 'MIT Press', 2021),
(209, 'Operating Systems', 'Pearson', 2017),
(210, 'Computer Networks', 'McGraw Hill', 2018);

INSERT INTO Students 
(student_id, student_name, department, email, dob) VALUES
('S001', 'Ananya', 'Computer Science', 'ananya@gmail.com', '2002-03-15'),
('S002', 'Rahul', 'Data Science', 'rahul@gmail.com', '2001-07-22'),
('S003', 'Priya', 'Bioinformatics', 'priya@gmail.com', '2002-11-05'),
('S004', 'Karthik', 'Computer Science', 'karthik@gmail.com', '2000-01-18'),
('S005', 'Neha', 'Biotechnology', 'neha@gmail.com', '2001-09-09'),
('S006', 'Arjun', 'Data Science', 'arjun@gmail.com', '2002-05-30'),
('S007', 'Sneha', 'Computer Applications', 'sneha@gmail.com', '2003-02-14'),
('S008', 'Mohit', 'AI & ML', 'mohit@gmail.com', '2001-12-01'),
('S009', 'Kavya', 'Information Technology', 'kavya@gmail.com', '2002-08-27'),
('S010', 'Rohit', 'Computer Science', 'rohit@gmail.com', '2000-06-10');

INSERT INTO Book_issues
(issue_no, book_id, student_id, date_of_issue, date_of_return, returned_book) VALUES
(1, 201, 'S001', '2024-01-05', '2024-01-20', 1),
(2, 202, 'S002', '2024-01-07', '2024-01-22', 1),
(3, 203, 'S003', '2024-01-10', '2024-01-25', 1),
(4, 204, 'S004', '2024-01-12', '2024-02-01', 0),
(5, 205, 'S005', '2024-01-15', '2024-01-30', 1),
(6, 206, 'S006', '2024-01-18', '2024-02-05', 0),
(7, 207, 'S007', '2024-01-20', '2024-02-05', 1),
(8, 208, 'S008', '2024-01-22', '2024-02-10', 0),
(9, 209, 'S009', '2024-01-25', '2024-02-08', 1),
(10, 210, 'S010', '2024-01-28', '2024-02-15', 0);

#question8
select * from Books;
select * from Student;
select * from Book_issues;