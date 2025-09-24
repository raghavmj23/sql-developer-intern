use intern_project;

INSERT INTO publishers (name, address)
VALUES ('Oxford Univ Press', 'Oxford, UK'),
       ('Pearson', 'London, UK');

INSERT INTO authors (full_name)
VALUES ('Alice Kumar'), ('Rahul Singh');

INSERT INTO books (title, isbn, publisher_id, published_year, pages)
VALUES ('Intro to SQL', '978-1111111111', 1, 2020, 220),
       ('Data Basics', '978-2222222222', 2, 2021, 300);

INSERT INTO book_authors (book_id, author_id)
VALUES (1,1), (2,2);

INSERT INTO members (full_name, email, phone, join_date)
VALUES ('Raghu Sharma','raghu@example.com','9999999999', CURDATE());

INSERT INTO loans (book_id, member_id, loan_date, due_date)
VALUES (1,1, CURDATE(), DATE_ADD(CURDATE(), INTERVAL 14 DAY));
