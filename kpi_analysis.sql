SELECT COUNT(*) AS total_customers
FROM telecom_data;
--- total_rows
------------
       7043
(1 row)----



SELECT COUNT(*) AS churned_customers
FROM telecom_data
WHERE "Churn Value" = '1';

-----customerid | count |    country    |   state    |    city     | Zip Code |        Lat Long        | latitude  |  longitude  | gender | Senior Citizen | partner | dependents | Tenure Months | Phone Service | Multiple Lines | Internet Service | Online Security | Online Backup | Device Protection | Tech Support | Streaming TV | Streaming Movies |    contract    | Paperless Billing |      Payment Method       | Monthly Charges | Total Charges | Churn Label | Churn Value | Churn Score | cltv |         Churn Reason
------------+-------+---------------+------------+-------------+----------+------------------------+-----------+-------------+--------+----------------+---------+------------+---------------+---------------+----------------+------------------+-----------------+---------------+-------------------+--------------+--------------+------------------+----------------+-------------------+---------------------------+-----------------+---------------+-------------+-------------+-------------+------+-------------------------------
 3668-QPYBK | 1     | United States | California | Los Angeles | 90003    | 33.964131, -118.272783 | 33.964131 | -118.272783 | Male   | No             | No      | No         | 2             | Yes           | No             | DSL              | Yes             | Yes           | No                | No           | No           | No               | Month-to-month | Yes               | Mailed check              | 53.85           | 108.15        | Yes         | 1           | 86          | 3239 | Competitor made better offer
 9237-HQITU | 1     | United States | California | Los Angeles | 90005    | 34.059281, -118.30742  | 34.059281 | -118.30742  | Female | No             | No      | Yes        | 2             | Yes           | No             | Fiber optic      | No              | No            | No                | No           | No           | No               | Month-to-month | Yes               | Electronic check          | 70.7            | 151.65        | Yes         | 1           | 67          | 2701 | Moved
 9305-CDSKC | 1     | United States | California | Los Angeles | 90006    | 34.048013, -118.293953 | 34.048013 | -118.293953 | Female | No             | No      | Yes        | 8             | Yes           | Yes            | Fiber optic      | No              | No            | Yes               | No           | Yes          | Yes              | Month-to-month | Yes               | Electronic check          | 99.65           | 820.5         | Yes         | 1           | 86          | 5372 | Moved
 7892-POOKP | 1     | United States | California | Los Angeles | 90010    | 34.062125, -118.315709 | 34.062125 | -118.315709 | Female | No             | Yes     | Yes        | 28            | Yes           | Yes            | Fiber optic      | No              | No            | Yes               | Yes          | Yes          | Yes              | Month-to-month | Yes               | Electronic check          | 104.8           | 3046.05       | Yes         | 1           | 84          | 5003 | Moved
 0280-XJGEX | 1     | United States | California | Los Angeles | 90015    | 34.039224, -118.266293 | 34.039224 | -118.266293 | Male   | No             | No      | Yes        | 49            | Yes           | Yes            | Fiber optic      | No              | Yes           | Yes               | No           | Yes          | Yes              | Month-to-month | Yes               | Bank transfer (automatic) | 103.7           | 5036.3        | Yes         | 1           | 89          | 5340 | Competitor had better devices
(5 rows)------


SELECT DISTINCT "Churn Label"
FROM telecom_data;
 Churn Label
-------------
 No
 Yes
(2 rows)

 SELECT DISTINCT Contract FROM telecom_data;
    contract
----------------
 One year
 Month-to-month
 Two year
(3 rows)


SELECT "Total Charges"
FROM telecom_data
LIMIT 10;
Total Charges
---------------
 108.15
 151.65
 820.5
 3046.05
 5036.3
 528.35
 39.65
 20.15
 4749.15
 30.2
(10 rows)


SELECT COUNT(*) AS churned_customers
FROM telecom_data
WHERE "Churn Value" = '1';
 churned_customers
-------------------
              1869
(1 row)





SELECT 
    ROUND(COUNT(CASE WHEN "Churn Value" = '1' THEN 1 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM telecom_data;

 churn_rate
------------
      26.54
(1 row)


SELECT 
    ROUND(COUNT(CASE WHEN "Churn Value" = '0' THEN 1 END) * 100.0 / COUNT(*), 2) AS retention_rate
FROM telecom_data;

 retention_rate
----------------
          73.46
(1 row)




SELECT 
    ROUND(SUM(CAST("Monthly Charges" AS NUMERIC)), 2) AS monthly_revenue_loss
FROM telecom_data
WHERE "Churn Value" = '1';

 monthly_revenue_loss
----------------------
            139130.85
(1 row)


