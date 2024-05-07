SELECT * from ORDER_DATA

--Create a new time category as Morning, After_noon, Evening and Night And Find total orders fall into this category
--Morning < 12 O clock
--After noon between 12 and 5
--Evening 5 and 8
--Night > 8 




SELECT EXTRACT(HOUR FROM ORDER_TIME) AS HOUR,
       CASE  
           WHEN EXTRACT(HOUR FROM ORDER_TIME) BETWEEN 0 AND 12 THEN 'Morning'
           WHEN EXTRACT(HOUR FROM ORDER_TIME) BETWEEN 12 AND 17 THEN 'Afternoon'
           WHEN EXTRACT(HOUR FROM ORDER_TIME) BETWEEN 17 AND 20 THEN 'Evening'
           ELSE 'Night'
       END AS Time_Category,
       COUNT(*) AS TOTAL_ORDERS
FROM ORDER_DATA
GROUP BY HOUR
ORDER BY HOUR;
