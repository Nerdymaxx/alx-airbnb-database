SELECT user_id, COUNT(*) AS booking_count
FROM Bookings
GROUP BY user_id;

SELECT
  property_id,
  total_bookings,
  RANK() OVER (ORDER BY total_bookings DESC) AS booking_rank
FROM (
  SELECT
    property_id,
    COUNT(*) AS total_bookings
  FROM Bookings
  GROUP BY property_id
) AS booking_counts;

