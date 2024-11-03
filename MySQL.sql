/*Some of The Most Important SQL Commands
SELECT - extracts data from a database
UPDATE - updates data in a database
DELETE - deletes data from a database
INSERT INTO - inserts new data into a database
CREATE DATABASE - creates a new database
ALTER DATABASE - modifies a database
CREATE TABLE - creates a new table
ALTER TABLE - modifies a table
DROP TABLE - deletes a table
CREATE INDEX - creates an index (search key)
DROP INDEX - deletes an index
*/
-- SQL is used to insert, search, update, and delete database records.
-- RDBMS stands for Relational Database Management System
 -- SELECT * from customer;
-- SELECT DISTINCT Country from customer;
-- SELECT COUNT(DISTINCT Country) FROM customer;
/*SELECT * FROM customer
WHERE Country = 'USA';*/
-- SELECT * FROM Customer
-- WHERE CustomerID = 2;

-- SELECT * FROM track
-- WHERE TrackId >= 30 and TrackId <=50;

-- SELECT * FROM track
-- WHERE TrackId <> 30 and TrackId <>50;

-- SELECT * FROM track
-- where TrackID BETWEEN 50 AND 60;

-- SELECT * FROM customer
-- WHERE City LIKE 's%';

-- SELECT * FROM Customer
-- WHERE City IN ('Paris','London');

-- SELECT * FROM Customer
-- WHERE Country = 'Germany' AND City = 'Berlin';

-- SELECT * FROM Customer  
-- WHERE City = 'Berlin' OR City = 'Stuttgart';

-- SELECT * FROM Customer
-- WHERE Country = 'Germany' OR Country = 'Spain';

-- SELECT * FROM Customer
-- WHERE NOT Country = 'Germany';

-- SELECT * FROM Customer
-- WHERE Country = 'Germany' AND (City = 'Berlin' OR City = 'Stuttgart');

-- SELECT * FROM Customer
-- WHERE NOT Country = 'Germany' AND NOT Country = 'USA';

-- SELECT * FROM Customer;
-- ORDER BY FirstName;


-- INSERT INTO customer (FirstName)
-- VALUES ('Roberto');

-- SELECT FirstName,Company FROM Customer
-- WHERE Company IS NULL;

-- SELECT FirstName,Company FROM Customer
-- WHERE Company IS NOT NULL;

-- UPDATE customer
-- SET FirstName = 'Alfred Schmidt', City = 'Frankfurt'
-- WHERE CustomerID = 1;

-- UPDATE customer
-- SET PostalCode = '000000'
-- WHERE Country = 'India' AND CustomerID IS NOT NULL;  -- Replace with actual key condition

-- SET SQL_SAFE_UPDATES = 0;

-- select * from customer
-- where Country='India';

-- DELETE FROM Customer WHERE FirstName='Manoj'; 
-- SET SQL_SAFE_UPDATES = 0;

-- DELETE FROM invoice
-- WHERE CustomerId = (SELECT CustomerId FROM customer WHERE FirstName = 'Manoj');

-- delete from artist;

-- SELECT * FROM Customer
-- LIMIT 3;

-- SELECT * FROM Customer LIMIT 4 OFFSET 3;

-- SELECT * FROM Customer
-- WHERE Country='Germany'
-- LIMIT 3;

-- select min(PostalCode) from customer;

-- select max(PostalCode) from customer;

-- SELECT COUNT(Milliseconds)
-- FROM track;

-- SELECT AVG(Milliseconds)
-- FROM track;

-- SELECT SUM(Milliseconds)
-- FROM track;

-- SELECT*FROM track,playlist,playlisttrack,mediatype,invoice,invoiceline,genre,employee,customer,album,artist;

-- SELECT * FROM customer
-- WHERE FirstName LIKE 'a%'
-- limit 4;

-- SELECT * FROM customer
-- WHERE FirstName LIKE '%a';

-- SELECT * FROM customer
-- WHERE FirstName LIKE '%da%';
/*position*/
-- SELECT * FROM customer
-- WHERE FirstName LIKE '_a%';

-- SELECT * FROM customer
-- WHERE FirstName LIKE 'a%d';

-- SELECT * FROM customer
-- WHERE FirstName NOT LIKE 'a%';

-- SELECT * FROM customer
-- WHERE Country IN ('Germany', 'France', 'UK');

-- SELECT * FROM Customer
-- WHERE Country NOT IN ('Germany', 'France', 'UK');


-- SELECT * FROM customer
-- WHERE Country IN (SELECT Country FROM employee);

-- SELECT * FROM customer
-- WHERE CustomerID BETWEEN 10 AND 20;

-- SELECT * FROM customer
-- WHERE CustomerID BETWEEN 10 AND 20;

-- SELECT * FROM customer
-- WHERE CustomerID BETWEEN 10 AND 20 AND Country in ('USA');

-- SELECT * FROM customer
-- WHERE CustomerID BETWEEN 10 AND 20  ORDER BY FirstName;

-- SELECT CustomerID as ID FROM customer AS CUS;

-- SELECT * From customer 
-- INNER JOIN employee ON customer.CustomerId = employee.EmployeeId;

-- SELECT * From customer 
-- LEFT JOIN employee ON customer.CustomerId = employee.EmployeeId;

-- SELECT * From customer 
-- RIGHT JOIN employee ON customer.CustomerId = employee.EmployeeId;

SELECT * From customer 
CROSS JOIN employee ON customer.CustomerId = employee.EmployeeId;