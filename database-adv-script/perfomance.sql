SELECT *
FROM bookings b
JOIN Users u ON b.user_id = u.user_id

JOIN properties p ON b.property_id = property_id;