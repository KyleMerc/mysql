SELECT CONCAT(city, ' office') AS Name, CONCAT_WS(', ', addressline1, addressline2, city, state, postalCode, country) AS Address
FROM offices 
UNION
SELECT customerName, CONCAT_WS(', ', addressLine1, addressLine2, city, state, postalCode, country) AS Address
FROM customers;
