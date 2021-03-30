--query 1


SELECT COUNT(*),STATE_CODE,P,(COUNT(*)/P)*1000 AS ACCIDENT_PER_THOUSAND_POP
from 
SIYUCHEN.ACCIDENT NATURAL JOIN SIYUCHEN.LOCATION NATURAL JOIN 
    
    (SELECT POPULATION_COUNT AS P,STATE_CODE
     FROM SIYUCHEN.POPULATION
     WHERE YEAR = 2010
    )
GROUP BY STATE_CODE,P
ORDER BY  ACCIDENT_PER_THOUSAND_POP DESC


--counts per month
SELECT COUNT(*),state_code

from (
SELECT * FROM
SIYUCHEN.ACCIDENT NATURAL JOIN SIYUCHEN.LOCATION
WHERE  START_TIME BETWEEN   '1-NOV-20 01.00.00.000000000 AM' AND '1-DEC-20 01.00.00.000000000 AM'
)
GROUP BY STATE_CODE
ORDER BY COUNT(*) DESC




