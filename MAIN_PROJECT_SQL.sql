CREATE DATABASE LIBRARY;

USE LIBRARY;

CREATE TABLE BRANCH (Branch_no INT PRIMARY KEY,
Manager_Id INT,
Branch_address VARCHAR(200),
Contact_no VARCHAR(200));

INSERT INTO BRANCH 
VALUES(1, 101, 'Chennai,TamilNadu','9996578431'),
(2, 102, 'Madgoa,Goa','9546783421'),
(3, 103, 'Koramangala,Karnataka','9546857434'),
(4, 104, 'Cochin,Kerala','9747653428'),
(5, 105, 'Hyderabad, Telangana', '+91 6789012345'),
(6, 106, 'Pune, Maharashtra', '+91 7890123456'),
(7, 107, 'Jaipur, Rajasthan', '+91 8901234567'),
(8, 108, 'Ahmedabad, Gujarat', '+91 9012345678'),
(9, 109, 'Lucknow, Uttar Pradesh', '+91 9876543210'),
(10, 110, 'Kolkata, West Bengal', '+91 4567890123');

CREATE TABLE EMPLOYEE (Emp_Id INT PRIMARY KEY,
Branch_no INT,
Emp_name VARCHAR(200),
Position VARCHAR(200),
Salary FLOAT,
FOREIGN KEY(Branch_no) REFERENCES BRANCH(Branch_no) ON DELETE CASCADE);

INSERT INTO EMPLOYEE (Emp_Id, Branch_no, Emp_name, Position, Salary) 
VALUES(1001, 1, 'Malathi Nath', 'Manager', 50000.00),
    (1002, 1, 'Sreenivasan', 'Assistant Manager', 40000.00),
    (1003, 2, 'David Johnson', 'Accountant', 35000.00),
    (1004, 2, 'Emily Antony', 'Sales Executive', 30000.00),
    (1005, 3, 'Michael Shinto', 'HR Manager', 45000.00),
    (1006, 3, 'Sarah Abraham', 'Marketing Executive', 32000.00),
    (1007, 4, 'Pearle Martin', 'IT Specialist', 38000.00),
    (1008, 4, 'Jennifer Ronaldo', 'Customer Service Representative', 28000.00),
    (1009, 5, 'Williams Gonszalez', 'Operations Manager', 48000.00),
    (1010, 5, 'Linda Naren', 'Data Analyst', 37000.00),
    (1011, 6, 'Rahul Sharma', 'Manager', 52000.00),
    (1012, 6, 'Priya Patel', 'Assistant Manager', 41000.00),
    (1013, 7, 'Amit Singh', 'Accountant', 36000.00),
    (1014, 7, 'Sneha Gupta', 'Sales Executive', 31000.00),
    (1015, 8, 'Manoj Kumar', 'HR Manager', 47000.00),
    (1016, 8, 'Anjali Mishra', 'Marketing Executive', 33000.00),
    (1017, 9, 'Rajesh Tiwari', 'IT Specialist', 39000.00),
    (1018, 9, 'Pooja Verma', 'Customer Service Representative', 29000.00),
    (1019, 10, 'Vikas Yadav', 'Operations Manager', 49000.00),
    (1020, 10, 'Neha Reddy', 'Data Analyst', 38000.00);

CREATE TABLE CUSTOMER (Customer_Id INT PRIMARY KEY,
Customer_name VARCHAR(200),
Customer_address VARCHAR(200),
Reg_date DATETIME);

INSERT INTO CUSTOMER (Customer_Id, Customer_name, Customer_address, Reg_date)
VALUES
    (2001, 'Amita Sharma', 'Shivaji Nagar, Mumbai, Maharashtra', '2023-10-15 08:30:00'),
    (2002, 'Rajesh Verma', 'Gandhi Nagar, Delhi, Delhi', '2022-07-20 11:45:00'),
    (2003, 'Divya Singh', 'Jayanagar, Bangalore, Karnataka', '2021-05-25 14:20:00'),
    (2004, 'Suresh Patel', 'Manicktala, Kolkata, West Bengal', '2020-03-30 17:10:00'),
    (2005, 'Kavita Mishra', 'Anna Nagar, Chennai, Tamil Nadu', '2019-01-05 09:00:00'),
    (2006, 'Rakesh Kumar', 'Ameerpet, Hyderabad, Telangana', '2018-11-12 10:30:00'),
    (2007, 'Meera Gupta', 'Kothrud, Pune, Maharashtra', '2017-09-18 13:15:00'),
    (2008, 'Sanjay Singh', 'Vaishali Nagar, Jaipur, Rajasthan', '2016-06-23 16:40:00'),
    (2009, 'Kiran Patel', 'Maninagar, Ahmedabad, Gujarat', '2015-04-28 18:20:00'),
    (2010, 'Nisha Verma', 'Gomti Nagar, Lucknow, Uttar Pradesh', '2014-02-03 20:00:00'),  
    (2011, 'Suresh Kumar', 'Shivaji Nagar, Mumbai, Maharashtra', '2023-10-15 08:30:00'),
    (2012, 'Lakshmi Sharma', 'Gandhi Nagar, Delhi, Delhi', '2022-07-20 11:45:00'),
    (2013, 'Rajesh Singh', 'Jayanagar, Bangalore, Karnataka', '2021-05-25 14:20:00'),
    (2014, 'Krishna Patel', 'Manicktala, Kolkata, West Bengal', '2020-03-30 17:10:00'),
    (2015, 'Divya Verma', 'Anna Nagar, Chennai, Tamil Nadu', '2019-01-05 09:00:00'),
    (2016, 'Gopal Kumar', 'Ameerpet, Hyderabad, Telangana', '2018-11-12 10:30:00'),
    (2017, 'Meenakshi Gupta', 'Kothrud, Pune, Maharashtra', '2017-09-18 13:15:00'),
    (2018, 'Sundar Singh', 'Vaishali Nagar, Jaipur, Rajasthan', '2016-06-23 16:40:00'),
    (2019, 'Shanti Patel', 'Maninagar, Ahmedabad, Gujarat', '2015-04-28 18:20:00'),
    (2020, 'Prakash Nair', 'Gomti Nagar, Lucknow, Uttar Pradesh', '2014-02-03 20:00:00');

CREATE TABLE BOOKS (ISBN INT PRIMARY KEY,
Book_title VARCHAR(200),
Rental_Price FLOAT,
Category VARCHAR(200),
Status BOOLEAN,
AUTHOR VARCHAR(200),
PUBLISHER VARCHAR(200));

INSERT INTO BOOKS (ISBN, Book_title, Rental_Price, Category, Status, AUTHOR, PUBLISHER)
 VALUES
    (1234, 'The Catcher in the Rye', 5.99, 'Fiction', TRUE, 'J.D. Salinger', 'Little, Brown and Company'),
    (2345, 'To Kill a Mockingbird', 6.99, 'Fiction', TRUE, 'Harper Lee', 'J. B. Lippincott & Co.'),
    (3456, '1984', 7.99, 'Science Fiction', TRUE, 'George Orwell', 'Secker & Warburg'),
    (4567, 'Pride and Prejudice', 4.99, 'Romance', TRUE, 'Jane Austen', 'T. Egerton, Whitehall'),
    (5678, 'The Great Gatsby', 6.49, 'Classic', TRUE, 'F. Scott Fitzgerald', 'Charles Scribner''s Sons'),
    (6789, 'The Hobbit', 8.99, 'Fantasy', TRUE, 'J.R.R. Tolkien', 'Allen & Unwin'),
    (7890, 'Harry Potter and the Philosopher\'s Stone', 9.99, 'Fantasy', TRUE, 'J.K. Rowling', 'Bloomsbury'),
    (8901, 'The Lord of the Rings', 11.99, 'Fantasy', TRUE, 'J.R.R. Tolkien', 'Allen & Unwin'),
    (9012, 'The Alchemist', 7.49, 'Philosophy', TRUE, 'Paulo Coelho', 'HarperCollins'),
    (9123, 'The Da Vinci Code', 8.49, 'Mystery', TRUE, 'Dan Brown', 'Doubleday'),
    (9234, 'A Brief History of Time', 10.49, 'History', TRUE, 'Stephen Hawking', 'Bantam Books'),
    (9345, 'The Republic', 6.99, 'Philosophy', TRUE, 'Plato', 'Various Publishers'),
    (9456, 'Randamoozham', 12.99, 'Malayalam Literature', TRUE, 'M.T. Vasudevan Nair', 'Current Books'),
    (9567, 'The Picture of Dorian Gray', 8.99, 'Classic', TRUE, 'Oscar Wilde', 'Ward, Lock & Co.'),
    (9678, 'Brave New World', 7.49, 'Science Fiction', TRUE, 'Aldous Huxley', 'Chatto & Windus'),
    (9789, 'The Stranger', 6.99, 'Fiction', TRUE, 'Albert Camus', 'Gallimard'),
    (9890, 'Crime and Punishment', 9.99, 'Classic', TRUE, 'Fyodor Dostoevsky', 'The Russian Messenger'),
    (9901, 'The Art of War', 5.49, 'Philosophy', TRUE, 'Sun Tzu', 'Various Publishers'),
    (9912, 'Sapiens: A Brief History of Humankind', 11.49, 'History', TRUE, 'Yuval Noah Harari', 'HarperCollins'),
    (9923, 'The God of Small Things', 8.99, 'Fiction', TRUE, 'Arundhati Roy', 'IndiaInk'),
    (9934, 'The Fountainhead', 10.99, 'Philosophy', TRUE, 'Ayn Rand', 'Bobbs-Merrill Company'),
    (9945, 'Naalukkettu', 13.99, 'Malayalam Literature', TRUE, 'M.T. Vasudevan Nair', 'D.C. Books'),
    (9956, 'The Prince', 6.49, 'Philosophy', TRUE, 'Niccolò Machiavelli', 'Various Publishers');
    
CREATE TABLE ISSUESTATUS (Issue_Id INT PRIMARY KEY,
Issued_cust INT,
Issued_book_name VARCHAR(200),
Issue_date DATETIME,
Isbn_book INT,
FOREIGN KEY(Issued_cust) REFERENCES CUSTOMER(Customer_Id) ON DELETE CASCADE,
FOREIGN KEY(Isbn_book) REFERENCES BOOKS(Isbn) ON DELETE CASCADE);

INSERT INTO ISSUESTATUS (Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book)
 VALUES
	(1, 2001, 'To Kill a Mockingbird', '2015-03-15 08:30:00', 2345),
    (2, 2002, '1984', '2016-04-20 11:45:00', 3456),
    (3, 2003, 'Pride and Prejudice', '2017-05-25 14:20:00', 4567),
    (4, 2003, 'The Great Gatsby', '2018-06-30 17:10:00', 5678),
    (5, 2005, 'The Hobbit', '2019-07-05 09:00:00', 6789),
    (6, 2006, 'Harry Potter and the Philosopher''s Stone', '2020-08-12 10:30:00', 7890),
    (7, 2007, 'The Lord of the Rings', '2021-09-18 13:15:00', 8901),
    (8, 2008, 'The Alchemist', '2022-10-23 16:40:00', 9012),
    (9, 2009, 'The Da Vinci Code', '2023-11-28 18:20:00', 9123),
    (10, 2010, 'A Brief History of Time', '2024-01-03 20:00:00', 9234),
    (11, 2011, 'To Kill a Mockingbird', '2015-01-15 08:30:00', 2345),
    (12, 2012, '1984', '2016-02-20 11:45:00', 3456),
    (13, 2013, 'Pride and Prejudice', '2017-03-25 14:20:00', 4567),
    (14, 2014, 'The Great Gatsby', '2018-04-30 17:10:00', 5678),
    (15, 2020, 'Naalukkettu', '2019-05-05 09:00:00', 9945),
    (16, 2019, 'The Art of War', '2020-06-12 10:30:00', 9901),
    (17, 2017, 'The Lord of the Rings', '2021-07-18 13:15:00', 8901),
    (18, 2018, 'The Alchemist', '2022-08-23 16:40:00', 9012),
    (19, 2019, 'The Prince', '2023-09-28 18:20:00', 9956),
    (20, 2020, 'A Brief History of Time', '2024-10-03 20:00:00', 9234);

CREATE TABLE ReturnStatus (Return_Id INT PRIMARY KEY,
Return_cust INT,
Return_book_name VARCHAR(200),
Return_date DATETIME,
Isbn_book2 INT,
FOREIGN KEY(Isbn_book2) REFERENCES BOOKS(Isbn) ON DELETE CASCADE);

INSERT INTO ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2) VALUES
    (1, 2001, 'To Kill a Mockingbird', '2024-06-15 08:30:00', 2345),
    (2, 2002, '1984', '2023-06-20 11:45:00', 3456),
    (3, 2020, 'Naalukkettu', '2020-06-25 14:20:00', 4567),
    (4, 2004, 'The Great Gatsby', '2024-06-30 17:10:00', 5678),
    (5, 2005, 'The Hobbit', '2022-07-05 09:00:00', 6789),
    (6, 2006, 'Harry Potter and the Philosopher''s Stone', '2023-07-12 10:30:00', 7890),
    (7, 2007, 'The Lord of the Rings', '2022-07-18 13:15:00', 8901),
    (8, 2008, 'The Alchemist', '2024-01-23 16:40:00', 9012),
    (9, 2009, 'The Da Vinci Code', '2024-05-14 18:20:00', 9123),
    (10, 2010, 'A Brief History of Time', '2024-05-03 20:00:00', 9234);

SELECT BOOK_TITLE,RENTAL_PRICE,CATEGORY FROM BOOKS WHERE STATUS IS TRUE;

SELECT EMP_NAME,SALARY FROM EMPLOYEE ORDER BY SALARY DESC;

SELECT i.ISSUED_BOOK_NAME , c.CUSTOMER_NAME,count(i.issued_book_name) 
over (partition by c.customer_name) as bookcount FROM 
ISSUESTATUS i INNER JOIN CUSTOMER c ON i.Issued_cust = c.Customer_Id;

SELECT  DISTINCT CATEGORY,COUNT(ISBN) OVER (PARTITION BY CATEGORY) AS COUNT FROM BOOKS;

SELECT EMP_NAME , POSITION,SALARY FROM EMPLOYEE WHERE SALARY >50000;

/*select distinct customer_Id,Reg_date from
(SELECT c.customer_Id,c.CUSTOMER_NAME, c.reg_date FROM 
CUSTOMER c where c.Reg_Date < CAST('2022-01-01' AS DATETIME))as cust 
inner join 
issuestatus i where cust.customer_id not in (select issued_cust from issuestatus);*/

select distinct customer_Id,Reg_date from
(SELECT distinct c.customer_Id,c.CUSTOMER_NAME, c.reg_date FROM 
CUSTOMER c where c.Reg_Date < CAST('2022-01-01' AS DATETIME))as cust 
left join 
issuestatus i on i.issued_cust = cust.customer_id where i.issued_cust is null;

SELECT DISTINCT BRANCH_NO,COUNT(EMP_ID) OVER (PARTITION BY BRANCH_NO) AS EMP_COUNT FROM EMPLOYEE;

SELECT C.CUSTOMER_NAME FROM CUSTOMER C 
INNER JOIN 
ISSUESTATUS I ON I.ISSUED_CUST = C.CUSTOMER_ID
 WHERE I.ISSUE_DATE <'2023-06-01' AND I.ISSUE_DATE >='2023-05-01';
 
 SELECT BOOK_TITLE,Category FROM BOOKS WHERE CATEGORY='History';
 
 SELECT BRANCH_NO FROM (SELECT BRANCH_NO,COUNT(EMP_ID) OVER (PARTITION BY BRANCH_NO) AS EMP_COUNT FROM EMPLOYEE)AS BRANCH WHERE EMP_COUNT >5; 