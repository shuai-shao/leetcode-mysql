# Write your MySQL query statement below solution1
SELECT IFNULL((SELECT DISTINCT Salary FROM Employee ORDER BY Salary DESC LIMIT 1,1),NULL)

# Write your MySQL query statement below solution2
SELECT IFNULL((SELECT MAX(Salary) FROM Employee WHERE Salary < (SELECT MAX(Salary) FROM Employee)),NULL)
