SELECT employeeNumber AS ID, CONCAT(firstName, ' ', lastName) AS Name,

IF( (SELECT COUNT(*)
    FROM customers c
    WHERE c.salesRepEmployeeNumber = e.employeeNumber) > 0,
      IF( (SELECT COUNT(*)
           FROM customers c
           WHERE c.salesRepEmployeeNumber = e.employeeNumber) > 6, 
        e.salary * .30, 
        e.salary * .10),
    0
) AS Bonus

FROM employees e
WHERE jobTitle = 'Sales Rep'
ORDER BY Bonus DESC;
