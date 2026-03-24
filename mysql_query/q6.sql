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