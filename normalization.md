# ✅ Nerdy Max's Airbnb Schema — Normalization to 3NF

## 🧠 Objective
As part of my backend development journey, I'm building a simplified version of an Airbnb-like platform. This markdown documents how I applied **normalization principles** to ensure my database schema adheres to **Third Normal Form (3NF)**.

---

## 🔍 What Is 3NF and Why Does It Matter?
3NF (Third Normal Form) helps reduce redundancy, avoid anomalies, and ensure data is logically organized. Achieving it means:
- ✅ Every column has atomic values (1NF)
- ✅ Non-key attributes fully depend on the primary key (2NF)
- ✅ No transitive dependencies — attributes depend **only** on the key (3NF)

---

## 🧱 Step-by-Step Normalization

### 1️⃣ First Normal Form (1NF)
All my tables use atomic data types: `VARCHAR`, `UUID`, `DECIMAL`, etc.  
➡️ ✅ Passed

---

### 2️⃣ Second Normal Form (2NF)
I used **single-column UUIDs** as primary keys, so there are no partial dependencies.  
➡️ ✅ Passed

---

### 3️⃣ Third Normal Form (3NF) – My Review

Here’s how each table holds up:

### 🧑 User
- All fields depend only on `user_id`
- No derived or computed attributes  
✅ **In 3NF**

---

### 🏠 Property
- `host_id` correctly links to `User`
- No duplication of host data like name or email
- Fields like `name`, `location`, and `price` all depend solely on `property_id`  
✅ **In 3NF**

---

### 📅 Booking
- Depends solely on `booking_id`
- `total_price` is stored once (which is fine since prices can change over time)
- No repeat of user or property data  
✅ **In 3NF**

---

### 💳 Payment
- Each payment references one booking via `booking_id`
- `amount`, `payment_method`, etc. are atomic and dependent on `payment_id`  
✅ **In 3NF**

---

### 🌟 Review
- Each review ties to a `property_id` and `user_id`, but doesn’t repeat any property or user info
- `rating` is numeric and constrained (1–5)  
✅ **In 3NF**

---

### 💬 Message
- Messages store only sender and recipient IDs (both from `User`)
- No repeated names or details  
✅ **In 3NF**

---

## 🧩 Final Thoughts

I’ve deliberately avoided common mistakes like:
- Storing user names in bookings or reviews
- Duplicating property info inside the booking table
- Including derived values like number of nights or dynamic price changes

By sticking to clear foreign keys and meaningful primary keys, my schema is lean, normalized, and ready to scale 🚀.

---

## ✅ Summary
> My Airbnb database design is **successfully in 3NF**. It’s clean, relational, and optimized for future queries and project expansion.

