
-- 👤 USERS
INSERT INTO Users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
  ('11111111-1111-1111-1111-111111111111', 'Max', 'Nerdy', 'nerdymax84@gmail.com', 'hashedpass123', '08011112222', 'host', CURRENT_TIMESTAMP),
  ('22222222-2222-2222-2222-222222222222', 'Ada', 'Okeke', 'ada@example.com', 'passhash456', '08033334444', 'guest', CURRENT_TIMESTAMP),
  ('33333333-3333-3333-3333-333333333333', 'John', 'Doe', 'john@example.com', 'passhash789', NULL, 'guest', CURRENT_TIMESTAMP);

-- 🏠 PROPERTIES
INSERT INTO Properties (property_id, host_id, name, location, description, price_per_night, created_at, updated_at)
VALUES
  ('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 'Seaside Villa', 'Lagos Island', 'Ocean-view villa with pool', 500.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 'City Apartment', 'Abuja', '2-bedroom in city center', 200.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- 📅 BOOKINGS
INSERT INTO Bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
  ('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', '2025-07-01', '2025-07-05', 2000.00, 'confirmed', CURRENT_TIMESTAMP),
  ('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '33333333-3333-3333-3333-333333333333', '2025-08-10', '2025-08-12', 400.00, 'pending', CURRENT_TIMESTAMP);

-- 💳 PAYMENTS
INSERT INTO Payments (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
  ('ppppppp1-pppp-pppp-pppp-pppppppppppp', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 2000.00, CURRENT_TIMESTAMP, 'credit_card');

-- 🌟 REVIEWS
INSERT INTO Reviews (review_id, property_id, user_id, rating, comment, created_at)
VALUES
  ('rrrrrrr1-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 5, 'Amazing view and very clean!', CURRENT_TIMESTAMP),
  ('rrrrrrr2-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '33333333-3333-3333-3333-333333333333', 4, 'Comfortable stay, but noisy area.', CURRENT_TIMESTAMP);

-- 💬 MESSAGES
INSERT INTO Messages (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
  ('mmmmmmm1-mmmm-mmmm-mmmm-mmmmmmmmmmmm', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Hi Max, is the villa available in July?', CURRENT_TIMESTAMP),
  ('mmmmmmm2-mmmm-mmmm-mmmm-mmmmmmmmmmmm', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Yes, it’s available. Would you like to book it?', CURRENT_TIMESTAMP);
