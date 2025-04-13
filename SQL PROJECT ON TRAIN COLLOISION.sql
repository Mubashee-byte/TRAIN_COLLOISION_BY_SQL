USE SCHOOL;
SELECT * FROM TRAIN;

-- 1. TOTAL NUMBER OF TRAIN COLLISIONS ?
SELECT COUNT(*) AS TOTAL_COLLISIONS FROM TRAIN;
-- COUNTS ALL ROWS IN THE DATASET, REPRESENTING TOTAL COLLISIONS.
----------------------------------------------------------------------------------------------------------------------------------------

-- 2. NUMBER OF COLLISIONS PER YEAR ?
SELECT [YEAR], [MONTH], COUNT(*) AS COLLISIONS
FROM TRAIN
GROUP BY [YEAR], [MONTH]
ORDER BY [YEAR], [MONTH];
-- GROUPS COLLISIONS BY YEAR AND SHOWS HOW MANY HAPPENED EACH YEAR.
------------------------------------------------------------------------------------------------------------------------------------------

-- 3. WHAT IS CAUSE WISE CASUALTIES ?
SELECT [CAUSE], SUM([CASUALTIES]) AS TOTAL_CASUALTIES
FROM TRAIN
GROUP BY [CAUSE]
ORDER BY TOTAL_CASUALTIES DESC;
-- SUMMARIZES TOTAL CASUALTIES FOR EACH CAUSE.
-----------------------------------------------------------------------------------------------------------------------------------------------

-- 4. TOP 5 MOST DANGEROUS LOCATIONS ?
SELECT TOP 5 [LOCATION], COUNT(*) AS COLLISIONS
FROM TRAIN
GROUP BY [LOCATION]
ORDER BY COLLISIONS DESC;
-- SHOWS TOP 5 LOCATIONS WITH HIGHEST NUMBER OF COLLISIONS.
-------------------------------------------------------------------------------------------------------------------------------------------------

-- 5. COLLISIONS BY WEATHER CONDITION ?
SELECT [WEATHER], COUNT(*) AS COLLISION_COUNT
FROM TRAIN
GROUP BY [WEATHER]
ORDER BY COLLISION_COUNT DESC;
-- COUNTS HOW MANY COLLISIONS HAPPENED IN EACH TYPE OF WEATHER.
-------------------------------------------------------------------------------------------------------------------------------------------------

-- 6. HIGHEST SPEED RECORDED IN ACCIDENTS ?
SELECT MAX([TRAIN_SPEED]) AS MAX_SPEED FROM TRAIN;
-- FINDS THE HIGHEST TRAIN SPEED DURING ANY COLLISION.
---------------------------------------------------------------------------------------------------------------------------------------------------

-- 7. MONTH WITH THE MOST COLLISIONS ?
SELECT 
    YEAR([YEAR]) AS [YEAR], 
    COUNT(*) AS [COLLISIONS]
FROM 
    TRAIN
GROUP BY 
    YEAR([YEAR])
ORDER BY 
    [YEAR];
-- DISPLAYS WHICH MONTH HAD THE HIGHEST NUMBER OF ACCIDENTS.
----------------------------------------------------------------------------------------------------------------------------------------------------

-- 8. AVERAGE CASUALTIES PER COLLISION ?
SELECT AVG([CASUALTIES]) AS AVG_CASUALTIES FROM TRAIN;
-- CALCULATES AVERAGE NUMBER OF CASUALTIES IN ALL ACCIDENTS.
-----------------------------------------------------------------------------------------------------------------------------------------------------

-- 9. NUMBER OF COLLISIONS WITH SPEED OVER 80 ?
SELECT COUNT(*) AS HIGH_SPEED_COLLISIONS
FROM TRAIN
WHERE ([TRAIN_SPEED]) > 80;
-- FINDS HOW MANY COLLISIONS OCCURRED WHEN SPEED WAS OVER 80. 
-----------------------------------------------------------------------------------------------------------------------------------------------------

-- 10. COLLISIONS CAUSED BY HUMAN ERROR ?
SELECT COUNT(*) AS HUMAN_ERROR_COLLISIONS
FROM TRAIN
WHERE [CAUSE] = 'HUMAN ERROR';
-- COUNTS COLLISIONS CAUSED DUE TO HUMAN ERROR.
--------------------------------------------------------------------------------------------------------------------------------------------------------

-- 11. MOST FREQUENT MAINTENANCE STATUS
SELECT ([MAINTENANCE_STATUS]), COUNT(*) AS COUNT
FROM TRAIN
GROUP BY ([MAINTENANCE_STATUS])
ORDER BY COUNT DESC;
-- SHOWS HOW MANY TIMES EACH MAINTENANCE STATUS APPEARS.
-------------------------------------------------------------------------------------------------------------------------------------------------------

-- 12. TOTAL NUMBER OF TRAIN COLLISIONS BY CAUSE ?
SELECT 
    [CAUSE], 
    COUNT(*) AS TOTAL_COLLISIONS
FROM 
    TRAIN
GROUP BY 
    [CAUSE]
ORDER BY 
    TOTAL_COLLISIONS DESC;
------------------------------------------------------------------------------------------------------------------------------------------------------

-- 13. MINIMUM CASUALTIES RECORDED IN A COLLISION ?
SELECT MIN([CASUALTIES]) AS MIN_CASUALTIES FROM TRAIN;
-- FINDS THE LEAST CASUALTIES IN ANY COLLISION.
-------------------------------------------------------------------------------------------------------------------------------------------------------

-- 14. TOTAL COLLISIONS BY LOCATION CODE ?
SELECT [LOCATION], COUNT(*) AS COLLISIONS
FROM TRAIN
GROUP BY [LOCATION]
ORDER BY COLLISIONS DESC;
-- LISTS TOTAL NUMBER OF COLLISIONS FOR EACH LOCATION CODE.
-----------------------------------------------------------------------------------------------------------------------------------------------------

-- 15. TOP 5 LOCATIONS WITH HIGHEST NUMBER OF TRAIN COLLISIONS ?
SELECT TOP 5 [LOCATION], COUNT(*) AS TOTAL_COLLISIONS
FROM TRAIN
GROUP BY [LOCATION]
ORDER BY TOTAL_COLLISIONS DESC;
----------------------------------------------------------------------------------------------------------------------------------------------------------

-- CHECK THE TOTAL DATA SET
SELECT * FROM TRAIN;
-- =============================================== THE END =============================================================================================