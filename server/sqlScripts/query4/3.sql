-- COVIDIVIDER: 00-00

SELECT AVG((sysdate + (end_time - start_time)*24*60- sysdate)) AS AVG_DURATION,
        TO_CHAR(START_TIME, 'MM') AS H FROM  
                (   
                SELECT *  FROM SIYUCHEN.ACCIDENT 
                WHERE TO_CHAR(START_TIME, 'YY-MM')<'00-00' 
                
                ) 
    GROUP BY TO_CHAR(START_TIME, 'MM')
    ORDER BY TO_CHAR(START_TIME, 'MM')