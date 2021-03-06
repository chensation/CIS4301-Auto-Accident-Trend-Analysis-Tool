SELECT COUNT(*) AS ACCIDENT_COUNT,

STATE_CODE,P AS POPULATION,(COUNT(*)/P)*1000 AS ACCIDENT_PER_THOUSAND_POP
FROM
SIYUCHEN.ACCIDENT NATURAL JOIN SIYUCHEN.LOCATION NATURAL JOIN 
    
    (SELECT POPULATION_COUNT AS P,STATE_CODE
     FROM SIYUCHEN.POPULATION
     WHERE YEAR = 0000
    )
WHERE TO_CHAR(START_TIME, 'YYYY')='0000'
GROUP BY STATE_CODE,P
ORDER BY STATE_CODE ASC

--counts per month
SELECT COUNT(*) AS ACCIDENT_COUNT,state_code
from (
SELECT * FROM
SIYUCHEN.ACCIDENT NATURAL JOIN SIYUCHEN.LOCATION
WHERE  START_TIME BETWEEN '1-NOV-20 01.00.00.000000000 AM' AND '1-DEC-20 01.00.00.000000000 AM'
)
GROUP BY STATE_CODE
ORDER BY COUNT(*) DESC