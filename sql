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
