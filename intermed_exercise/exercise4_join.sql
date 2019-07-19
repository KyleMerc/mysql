SELECT DISTINCT employeeNumber, CONCAT(firstName, ' ', lastName) AS employeeName, COUNT(c.customerNumber) AS customerCount
FROM employees e
LEFT JOIN customers c ON c.salesRepEmployeeNumber = e.employeeNumber 
WHERE jobTitle = 'Sales Rep'
GROUP BY employeeNumber
ORDER BY customerCount DESC;
