select count(*)/4 AS ACCIDENT_COUNT,TO_CHAR(START_TIME, 'MM') AS MONTH from 
    SIYUCHEN.ACCIDENT 
WHERE TO_CHAR(START_TIME, 'YY-MM')<'20-03'
GROUP BY TO_CHAR(START_TIME, 'MM')
ORDER BY TO_CHAR(START_TIME, 'MM');

select count(*) AS ACCIDENT_COUNT,TO_CHAR(START_TIME, 'MM') AS MONTH from 
    SIYUCHEN.ACCIDENT 
WHERE TO_CHAR(START_TIME, 'YY-MM')>='20-03'
GROUP BY TO_CHAR(START_TIME, 'MM')
ORDER BY TO_CHAR(START_TIME, 'MM')

SELECT AVG((sysdate + (end_time - start_time)*24*60- sysdate)) AS AVG_DURATION, 
        TO_CHAR(START_TIME, 'MM') AS H FROM  
                (   
                SELECT *  FROM SIYUCHEN.ACCIDENT 
                WHERE TO_CHAR(START_TIME, 'YY-MM')<'20-03' 
                
                ) 
    GROUP BY TO_CHAR(START_TIME, 'MM')
    ORDER BY TO_CHAR(START_TIME, 'MM')
    
    
SELECT AVG((sysdate + (end_time - start_time)*24*60- sysdate)) AS AVG_DURATION, 
        TO_CHAR(START_TIME, 'MM') AS H FROM  
                (   
                SELECT *  FROM SIYUCHEN.ACCIDENT 
                WHERE TO_CHAR(START_TIME, 'YY-MM')>='20-03' 
                
                ) 
    GROUP BY TO_CHAR(START_TIME, 'MM')
    ORDER BY TO_CHAR(START_TIME, 'MM')