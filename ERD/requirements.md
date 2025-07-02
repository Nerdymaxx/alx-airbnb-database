# 📦 Entities and Attributes

## 🧑 User
- `user_id`: **Primary Key**, UUID, Indexed  
- `first_name`: `VARCHAR`, NOT NULL  
- `last_name`: `VARCHAR`, NOT NULL  
- `email`: `VARCHAR`, **UNIQUE**, NOT NULL  
- `password_hash`: `VARCHAR`, NOT NULL  
- `phone_number`: `VARCHAR`, NULL  
- `role`: `ENUM (guest, host, admin)`, NOT NULL  
- `created_at`: `TIMESTAMP`, DEFAULT CURRENT_TIMESTAMP  

---

## 🏠 Property
- `property_id`: **Primary Key**, UUID, Indexed  
- `host_id`: **Foreign Key**, references `User(user_id)`  
- `name`: `VARCHAR`, NOT NULL  
- `description`: `TEXT`, NOT NULL  
- `location`: `VARCHAR`, NOT NULL  
- `price_per_night`: `DECIMAL`, NOT NULL  
- `created_at`: `TIMESTAMP`, DEFAULT CURRENT_TIMESTAMP  
- `updated_at`: `TIMESTAMP`, ON UPDATE CURRENT_TIMESTAMP  

---

## 📅 Booking
- `booking_id`: **Primary Key**, UUID, Indexed  
- `property_id`: **Foreign Key**, references `Property(property_id)`  
- `user_id`: **Foreign Key**, references `User(user_id)`  
- `start_date`: `DATE`, NOT NULL  
- `end_date`: `DATE`, NOT NULL  
- `total_price`: `DECIMAL`, N_

# 🔗 Entity Relationships

## 1. User ↔ Property
- **Type**: One-to-Many
- **Description**: A User (as a host) can own multiple Properties.
- **Foreign Key**: `Property.host_id` → `User.user_id`

---

## 2. User ↔ Booking
- **Type**: One-to-Many
- **Description**: A User (as a guest) can make many Bookings.
- **Foreign Key**: `Booking.user_id` → `User.user_id`

---

## 3. Property ↔ Booking
- **Type**: One-to-Many
- **Description**: A Property can be booked many times.
- **Foreign Key**: `Booking.property_id` → `Property.property_id`

---

## 4. Booking ↔ Payment
- **Type**: One-to-One
- **Description**: Each Booking has one Payment.
- **Foreign Key**: `Payment.booking_id` → `Booking.booking_id`

---

## 5. User ↔ Review
- **Type**: One-to-Many
- **Description**: A User can write multiple Reviews.
- **Foreign Key**: `Review.user_id` → `User.user_id`

---

## 6. Property ↔ Review
- **Type**: One-to-Many
- **Description**: A Property can have many Reviews.
- **Foreign Key**: `Review.property_id` → `Property.property_id`

---

## 7. User ↔ Message (Sender/Recipient)
- **Type**: One-to-Many (both directions)
- **Description**:
  - A User can send many Messages.
  - A User can receive many Messages.
- **Foreign Keys**:
  - `Message.sender_id` → `User.user_id`
  - `Message.recipient_id` → `User.user_id`

---

## 📋 Summary Table

| From Entity | To Entity | Relationship Type | Foreign Key |
|-------------|-----------|-------------------|-------------|
| User        | Property  | 1 → Many          | `host_id`   |
| User        | Booking   | 1 → Many          | `user_id`   |
| Property    | Booking   | 1 → Many          | `property_id` |
| Booking     | Payment   | 1 → 1             | `booking_id` |
| User        | Review    | 1 → Many          | `user_id`   |
| Property    | Review    | 1 → Many          | `property_id` |
| User        | Message   | 1 → Many          | `sender_id`, `recipient_id` |

