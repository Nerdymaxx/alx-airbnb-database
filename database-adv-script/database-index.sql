-- user table indexes
-- 🔹 User table indexes
CREATE INDEX idx_user_id ON Users(user_id);
CREATE INDEX idx_user_email ON Users(email);
CREATE INDEX idx_user_created_at ON Users(created_at);

-- 🔹 Bookings table indexes
CREATE INDEX idx_booking_user_id ON Bookings(user_id);
CREATE INDEX idx_booking_property_id ON Bookings(property_id);
CREATE INDEX idx_booking_status ON Bookings(status);
CREATE INDEX idx_booking_start_date ON Bookings(start_date);

-- 🔹 Properties table indexes
CREATE INDEX idx_property_id ON Properties(property_id);
CREATE INDEX idx_property_location ON Properties(location);
-- CREATE INDEX idx_property_rating ON Properties(average_rating);  -- If it exists
