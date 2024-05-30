-- Write your PostgreSQL query statement below
SELECT E.name FROM Employee AS E WHERE E.id in (SELECT E.managerId FROM Employee AS E GROUP BY E.managerId HAVING count(*) >= 5)