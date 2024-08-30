# SELECT :- To extraxt data from database---------------------------------------------------------------------------
SELECT CustomerName, City FROM Customers;

#* :- To return all columns-----------------------------------------------------------------------------------------
SELECT * FROM Customers;

# SELECT DISTINCT :- to return only distinct (different) values-----------------------------------------------------
SELECT DISTINCT Country FROM Customers;          # No duplicate values
SELECT Country FROM Customers:                   # Include duplicate values
SELECT COUNT(DISTINCT Country) FROM Customers;   # Return number of different countries

# WHERE :- To filter records that fulfill specified condition-------------------------------------------------------
SELECT * FROM Customers
WHERE Country = 'Mexico';

# ORDER BY :- Sort the result set in ascending or descending order--------------------------------------------------
SELECT * FROM Products
ORDER BY Price;                                  # Ascending by default

SELECT * FROM Products
ORDER BY Price DESC;

SELECT * FROM Customers
ORDER BY Country, CustomerName;                 # First order by country; if same Country then it orders by CustomerName

SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;

# AND :- to filter the records based on more than one condition-------------------------------------------------------
# All the conditions must be true
SELECT * FROM Customers
WHERE Country = 'Spain' AND CustomerName LIKE 'G%';

# OR :- ANY of the condition must be true -----------------------------------------------------------------------------
SELECT * FROM Customers
WHERE Country = 'Spain' OR Country = 'Germany';

SELECT * FROM Customers
WHERE Country = 'Spain' AND CustomerName LIKE 'G%' OR CustomerName LIKE 'R%';

# NOT :- combined with other operators to give opposite results--------------------------------------------------------
SELECT * FROM Customers
WHERE NOT Country = 'Spain';

SELECT * FROM Customers
WHERE CustomerID NOT BETWEEN 10 AND 60;

SELECT * FROM Customers
WHERE City NOT IN ('Paris', 'London');

# INSERT INTO :- insert new records in a table------------------------------------------------------------------------

# OR :- 
