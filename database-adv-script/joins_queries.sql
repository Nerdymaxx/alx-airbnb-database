SELECT *
FROM Bookings
INNER JOIN Users
ON Bookings.user_id = Users.user_id;

SELECT *
FROM Properties
LEFT JOIN Reviews
ON Properties.id= Reviews.property_id

SELECT *
FROM Users
LEFT JOIN Bookings ON Users.user_id = Bookings.user_id

UNION

SELECT *
FROM Users
RIGHT JOIN Bookings ON Users.user_id = Bookings.user_id;
