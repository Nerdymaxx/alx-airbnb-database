SELECT * FROM Properties WHERE average_rating > 4

SELECT * FROM Users
WHERE id IN (
    SELECT user_id
    FROM Bookings
    GROUP BY user_id
    HAVING COUNT (*) > 3
)