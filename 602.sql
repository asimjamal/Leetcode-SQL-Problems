602. Friend Requests II: Who Has the Most Friends
Table: RequestAccepted

+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| requester_id   | int     |
| accepter_id    | int     |
| accept_date    | date    |
+----------------+---------+
(requester_id, accepter_id) is the primary key (combination of columns with unique values) for this table.
This table contains the ID of the user who sent the request, the ID of the user who received the request, and the date when the request was accepted.
 

Write a solution to find the people who have the most friends and the most friends number.

The test cases are generated so that only one person has the most friends.
Solution:
# Write your MySQL query statement below
SELECT id, COUNT(*) AS num
FROM
(SELECT requester_id as id
FROM RequestAccepted 

UNION ALL

SELECT accepter_id as id
FROM RequestAccepted ) AS totalfriend
GROUP BY id
ORDER BY num DESC
LIMIT 1