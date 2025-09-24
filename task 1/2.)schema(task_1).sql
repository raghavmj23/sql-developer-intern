create database  intern_project;
use intern_project;
-- Publishers
CREATE TABLE publishers (
  publisher_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150) NOT NULL,
  address VARCHAR(255),
  phone VARCHAR(20)
) ENGINE=InnoDB;

-- Authors
CREATE TABLE authors (
  author_id INT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(150) NOT NULL
) ENGINE=InnoDB;

-- Books
CREATE TABLE books (
  book_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  isbn VARCHAR(20) UNIQUE,
  publisher_id INT,
  published_year YEAR,
  pages INT,
  CONSTRAINT fk_books_publisher FOREIGN KEY (publisher_id)
    REFERENCES publishers(publisher_id)
    ON DELETE SET NULL
) ENGINE=InnoDB;

-- Many-to-many: Books & Authors
CREATE TABLE book_authors (
  book_id INT NOT NULL,
  author_id INT NOT NULL,
  PRIMARY KEY (book_id, author_id),
  CONSTRAINT fk_ba_book FOREIGN KEY (book_id)
    REFERENCES books(book_id)
    ON DELETE CASCADE,
  CONSTRAINT fk_ba_author FOREIGN KEY (author_id)
    REFERENCES authors(author_id)
    ON DELETE CASCADE
) ENGINE=InnoDB;

-- Members (DATE, no default)
CREATE TABLE members (
  member_id INT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(150) NOT NULL,
  email VARCHAR(150) UNIQUE,
  phone VARCHAR(20),
  join_date DATE
) ENGINE=InnoDB;

-- Loans (DATE, no default)
CREATE TABLE loans (
  loan_id INT AUTO_INCREMENT PRIMARY KEY,
  book_id INT NOT NULL,
  member_id INT NOT NULL,
  loan_date DATE NOT NULL,
  due_date DATE NOT NULL,
  return_date DATE,
  CONSTRAINT fk_loans_book FOREIGN KEY (book_id)
    REFERENCES books(book_id),
  CONSTRAINT fk_loans_member FOREIGN KEY (member_id)
    REFERENCES members(member_id)
) ENGINE=InnoDB;



