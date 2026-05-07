Churn by Contract
 SELECT
     Contract,
     COUNT(*) AS total_customers,
     SUM(CAST("Churn Value" AS INT)) AS churned_customers,
     ROUND(SUM(CAST("Churn Value" AS INT)) * 100.0 / COUNT(*), 2) AS churn_rate
 FROM telecom_data
 GROUP BY Contract
 ORDER BY churn_rate DESC;
    contract    | total_customers | churned_customers | churn_rate
----------------+-----------------+-------------------+------------
 Month-to-month |            3875 |              1655 |      42.71
 One year       |            1473 |               166 |      11.27
 Two year       |            1695 |                48 |       2.83


Churn by Gender
 SELECT
     Gender,
     COUNT(*) AS total_customers,
     SUM(CAST("Churn Value" AS INT)) AS churned_customers,
     ROUND(SUM(CAST("Churn Value" AS INT)) * 100.0 / COUNT(*), 2) AS churn_rate
 FROM telecom_data
 GROUP BY Gender
 ORDER BY churn_rate DESC;
 gender | total_customers | churned_customers | churn_rate
--------+-----------------+-------------------+------------
 Female |            3488 |               939 |      26.92
 Male   |            3555 |               930 |      26.16
(2 rows)

Churn by Senior Citizen
 SELECT
     "Senior Citizen",
     COUNT(*) AS total_customers,
     SUM(CAST("Churn Value" AS INT)) AS churned_customers,
     ROUND(SUM(CAST("Churn Value" AS INT)) * 100.0 / COUNT(*), 2) AS churn_rate
 FROM telecom_data
 GROUP BY "Senior Citizen"
 ORDER BY churn_rate DESC;
 Senior Citizen | total_customers | churned_customers | churn_rate
----------------+-----------------+-------------------+------------
 Yes            |            1142 |               476 |      41.68
 No             |            5901 |              1393 |      23.61
(2 rows)

Churn by Payment Method
 SELECT
     "Payment Method",
     COUNT(*) AS total_customers,
     SUM(CAST("Churn Value" AS INT)) AS churned_customers,
     ROUND(SUM(CAST("Churn Value" AS INT)) * 100.0 / COUNT(*), 2) AS churn_rate FROM telecom_data
 GROUP BY "Payment Method"
 ORDER BY churn_rate DESC;
      Payment Method       | total_customers | churned_customers | churn_rate
---------------------------+-----------------+-------------------+------------
 Electronic check          |            2365 |              1071 |      45.29
 Mailed check              |            1612 |               308 |      19.11
 Bank transfer (automatic) |            1544 |               258 |      16.71
 Credit card (automatic)   |            1522 |               232 |      15.24
(4 rows)


Churn by Internet Service
 SELECT
     "Internet Service",
     COUNT(*) AS total_customers,
     SUM(CAST("Churn Value" AS INT)) AS churned_customers,
     ROUND(SUM(CAST("Churn Value" AS INT)) * 100.0 / COUNT(*), 2) AS churn_rate
 FROM telecom_data
 GROUP BY "Internet Service"
 ORDER BY churn_rate DESC;
 Internet Service | total_customers | churned_customers | churn_rate
------------------+-----------------+-------------------+------------
 Fiber optic      |            3096 |              1297 |      41.89
 DSL              |            2421 |               459 |      18.96
 No               |            1526 |               113 |       7.40
(3 rows)

Churn by State
 SELECT
     State,
     COUNT(*) AS total_customers,
     SUM(CAST("Churn Value" AS INT)) AS churned_customers
     ROUND(SUM(CAST("Churn Value" AS INT)) * 100.0 / COUNT(*), 2) AS churn_rate
 FROM telecom_data
 GROUP BY State
 ORDER BY churn_rate DESC;
   state    | total_customers | churned_customers | churn_rate
------------+-----------------+-------------------+------------
 California |            7043 |              1869 |      26.54
(1 row)


Top Churn Reasons:
 SELECT
     "Churn Reason",
    COUNT(*) AS customers
 FROM telecom_data
 WHERE "Churn Value" = '1'
GROUP BY "Churn Reason"
 ORDER BY customers DESC;
               Churn Reason                | customers
-------------------------------------------+-----------
 Attitude of support person                |       192
 Competitor offered higher download speeds |       189
 Competitor offered more data              |       162
 Don't know                                |       154
 Competitor made better offer              |       140
 Attitude of service provider              |       135
 Competitor had better devices             |       130
 Network reliability                       |       103
 Product dissatisfaction                   |       102
 Price too high                            |        98
 Service dissatisfaction                   |        89
 Lack of self-service on Website           |        88
 Extra data charges                        |        57
 Moved                                     |        53
 Long distance charges                     |        44
 Limited range of services                 |        44
 Lack of affordable download/upload speed  |        44
 Poor expertise of phone support           |        20
 Poor expertise of online support          |        19
 Deceased                                  |         6
(20 rows)


