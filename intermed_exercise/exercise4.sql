SELECT DISTINCT employeeNumber, CONCAT(firstName, ' ', lastName) AS employeeName,
       (
          SELECT COUNT(customerNumber)
          FROM customers c
          WHERE c.salesRepEmployeeNumber = e.employeeNumber
      ) AS customerCount
FROM employees e
WHERE jobTitle = 'Sales Rep'
ORDER BY customerCount DESC;
