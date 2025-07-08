# 🛠️ Performance Monitoring Report

## 🎯 Objective
The goal of this task is to continuously monitor and refine the database’s performance by analyzing query execution plans and applying necessary improvements like indexing or schema adjustments.

---

## 🔍 Queries Analyzed

### 1. Get all bookings with user and property info

```sql
SELECT *
FROM Users u
JOIN Bookings b ON u.user_id = b.user_id
JOIN Properties p ON b.property_id = p.property_id;
