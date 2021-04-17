--YEAR: 0000

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