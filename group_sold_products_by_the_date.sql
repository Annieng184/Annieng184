#Write an SQL query to find for each date the number of different products sold and their names.

#Input: 
#Activities table:
+------------+------------+
| sell_date  | product     |
+------------+------------+
| 2020-05-30 | Headphone  |
| 2020-06-01 | Pencil     |
| 2020-06-02 | Mask       |
| 2020-05-30 | Basketball |
| 2020-06-01 | Bible      |
| 2020-06-02 | Mask       |
| 2020-05-30 | T-Shirt    |
+------------+------------+
#Output: 
+------------+----------+------------------------------+
| sell_date  | num_sold | products                     |
+------------+----------+------------------------------+
| 2020-05-30 | 3        | Basketball,Headphone,T-shirt |
| 2020-06-01 | 2        | Bible,Pencil                 |
| 2020-06-02 | 1        | Mask                         |
+------------+----------+------------------------------+
-------------------------------------------------------------
# Write your MySQL query statement below
SELECT sell_date, count(distinct product) as num_sold, group_concat(distinct product ORDER BY product) as 'products'
FROM activities
GROUP BY sell_date
ORDER BY sell_date
