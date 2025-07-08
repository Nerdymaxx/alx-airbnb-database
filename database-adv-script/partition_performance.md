# 📊 Partitioning Performance Report

## ✅ Objective
The objective of this task was to optimize query performance on the `Bookings` table by implementing table partitioning based on the `start_date` column. This is useful when dealing with large datasets where queries become slower over time.

---

## 🧠 Why Partition?

The `Bookings` table contains time-based data, and most queries are based on date ranges (e.g., checking bookings between July and August). Without partit
