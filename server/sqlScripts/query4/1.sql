-- COVIDIVIDER: 00-00

select count(*)/4 AS ACCIDENT_COUNT,TO_CHAR(START_TIME, 'MM') AS MONTH from 
    SIYUCHEN.ACCIDENT 
WHERE TO_CHAR(START_TIME, 'YY-MM')<'00-00'
GROUP BY TO_CHAR(START_TIME, 'MM')
ORDER BY TO_CHAR(START_TIME, 'MM')