SELECT d.Name,
       e1.Name,
       e1.Salary
FROM   Department d 
       JOIN Employee e1 
         ON d.Id = e1.DepartmentId
WHERE e1.Salary = (SELECT MAX(Salary)
                   FROM   Employee e2
                   WHERE  e2.DepartmentId = e1.DepartmentId)
