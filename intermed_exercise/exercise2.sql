SELECT lastName, firstName
FROM employees
INNER JOIN offices ON employees.officeCode = offices.officeCode
WHERE offices.country = 'Japan' OR offices.country = 'UK';
