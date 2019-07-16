SELECT CONCAT(firstName, ' ', lastName) AS EmployeeName, jobTitle, CONCAT_WS(', ', offices.addressLine1, offices.addressLine2, state, country, postalCode) AS OfficeAddress
FROM employees
INNER JOIN offices ON employees.officeCode = offices.officeCode;
