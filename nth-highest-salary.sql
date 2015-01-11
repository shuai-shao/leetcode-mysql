CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
DECLARE M INT;
SET M = N-1;
  RETURN (
      # Write your MySQL query statement below.
      SELECT IFNULL((SELECT DISTINCT Salary FROM Employee ORDER BY Salary DESC LIMIT M ,1), NULL)
      
  );
END

# LIMIT i,j retrieves rows i+1 to i+j, so LIMIT N-1, 1 retrives N the row
# Can't use LIMIT N-1, 1 here, which will cause error, set M = N-1 and use LIMIT M,1
# sql rows starting from 1
