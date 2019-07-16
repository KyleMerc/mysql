SELECT employeeNumber AS ID, CONCAT(firstName, ' ', lastName) AS Name,

IF(
 (SELECT COUNT(*)
  FROM customers 
  WHERE customers.salesRepEmployeeNumber = employees.employeeNumber)  > 0,
   IF( (SELECT COUNT(*) 
        FROM customers
        WHERE customers.salesRepEmployeeNumber = employees.employeeNumber) < 6, 
        employees.salary * .30, 
        employees.salary * .10),
  0
) AS Bonus

FROM employees 
WHERE jobTitle = 'Sales Rep'
ORDER BY Bonus DESC;
