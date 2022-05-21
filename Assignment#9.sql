##ASSIGNMENT9##

use SQLAssignments

DECLARE @n AS INT
SET @n = 10
SELECT TOP (@n) * 
FROM Worker

DECLARE @m AS INT
SET @m = 5;

WITH t1 AS(
SELECT *, ROW_NUMBER() OVER (ORDER BY SALARY DESC) as rownumber FROM Worker
)
SELECT *
FROM t1
WHERE rownumber = @m