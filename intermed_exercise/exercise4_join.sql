SELECT DISTINCT employeeNumber, CONCAT(firstName, ' ', lastName) AS employeeName, COUNT(c.customerNumber) AS customerCount
FROM employees e, customers c
WHERE jobTitle = 'Sales Rep' AND c.salesRepEmployeeNumber = e.employeeNumber
GROUP BY employeeNumber
ORDER BY customerCount DESC;
