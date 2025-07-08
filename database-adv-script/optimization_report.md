# 🛠 Optimization Report

##  Objective

To improve the performance of complex queries by analyzing inefficiencies and applying indexing or refactoring techniques.

---

##  Initial Query

The initial query joins the `Bookings` table with `Users`, `Properties`, and `Payments` to retrieve comprehensive booking details:

```sql
SELECT
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    p.property_id,
    p.name AS property_name,
    p.location,
    pay.payment_id,
    pay.amount,
    pay.payment_method,
    pay.payment_date
FROM Bookings b
JOIN Users u ON b.user_id = u.user_id
JOIN Properties p ON b.property_id = p.property_id

