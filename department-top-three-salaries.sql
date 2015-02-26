# Write your MySQL query statement below
SELECT d.Name AS Deparment,
       e1.Name AS Employee,
       e1.Salary
FROM   Employee e1 
       JOIN Department d 
         ON e1.DepartmentId = d.Id
WHERE  3> (SELECT COUNT(DISTINCT e2.Salary) 
           FROM   Employee e2
           WHERE  e1.DepartmentId = e2.DepartmentId
           AND    e2.Salary > e1.Salary)
           
# Can we generalize the question to top N salaries?
SELECT d.Name AS Deparment,
       e1.Name AS Employee,
       e1.Salary
FROM   Employee e1 
       JOIN Department d 
         ON e1.DepartmentId = d.Id
WHERE  N> (SELECT COUNT(DISTINCT e2.Salary) 
           FROM   Employee e2
           WHERE  e1.DepartmentId = e2.DepartmentId
           AND    e2.Salary > e1.Salary)
  
