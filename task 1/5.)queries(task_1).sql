use intern_project;
SELECT b.book_id,
       b.title,
       GROUP_CONCAT(a.full_name SEPARATOR ', ') AS authors
FROM books b
JOIN book_authors ba ON b.book_id = ba.book_id
JOIN authors a ON ba.author_id = a.author_id
GROUP BY b.book_id;

SELECT * FROM members;
SELECT * FROM loans;

