SELECT employeeNumber AS ID, CONCAT(firstName, ' ', lastName) AS Name,

CASE
  WHEN ( SELECT COUNT(*) FROM customers WHERE customers.salesRepEmployeeNumber = e.employeeNumber ) > 0 THEN
    CASE
      WHEN ( SELECT COUNT(*) FROM customers WHERE customers.salesRepEmployeeNumber = e.employeeNumber ) < 6 THEN e.salary * .10
      ELSE e.salary * .30
    END
  ELSE 0
END AS Bonus

FROM employees e
WHERE jobTitle = 'Sales Rep'
ORDER BY Bonus DESC;

