SELECT employeeNumber AS ID, CONCAT(firstName, ' ', lastName) AS Name,

CASE
  WHEN COUNT(customerNumber) = 0 THEN 0
  WHEN COUNT(customerNumber) < 6 AND COUNT(customerNumber) > 0 THEN salary * .10
  ELSE salary * .30
END AS Bonus

FROM employees e
LEFT JOIN customers c ON c.salesRepEmployeeNumber = e.employeeNumber
WHERE jobTitle = 'Sales Rep'
GROUP BY employeeNumber
ORDER BY Bonus DESC;
