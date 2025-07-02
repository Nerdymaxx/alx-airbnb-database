CREATE TABLE User(
   user_id UUID PRIMARY KEY,
   first_name VARCHAR(50) NOT NULL,
   last_name VARCHAR(50) NOT NULL,
   email VARCHAR(100) UNIQUE NOT NULL,
   password_hash VARCHAR(225) NOT NULL,
   role VARCHAR(10)NOT NULL CHECK (role IN ('guest', 'host', 'admin')),
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Properties(
    property_id UUID PRIMARY KEY,
    host_id UUID NOT NULL,
    name TEXT NOT NULL,
    location VARCHAR(100) NOT  NULL,
    description TEXT NOT NULL,
    price_per_night DECIMAL NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

)
CREATE TABLE Bookings(
    booking_id UUID PRIMARY KEY
    property_id  UUID NOT NULL FOREIGN KEY(properties_id) REFERENCES  Properties(property_id)
    user_id Foreign Key, references User(user_id)
    start_date DATE, NOT NULL
    end_date DATE, NOT NULL
    total_price DECIMAL, NOT NULL
    status ENUM (pending, confirmed, canceled), NOT NULL
    created_at TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
)
CREATE TABLE Payment(
     payment_id UUID PRIMARY KEY
     booking_id  UUID NOT NULL FOREIGN KEY(booking_id) REFERENCES 
     amount DECIMAL, NOT NULL
     payment_date TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
     payment_method ENUM (credit_card, paypal, stripe), NOT NULL
);
CREATE TABLE Review(
     review_id UUID PRIMARY KEY
     property_id FOREIGN KEY(property_id), referennces Property(property_id)
     user_id FOREIGN KEY(user_id), references User(user_id)
     rating INTEGER, CHECK: rating >= 1 AND rating <= 5, NOT NULL
     comment TEXT, NOT NULL
     created_at TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE Message(
   message_id UUID PRIMARY KEY
   sender_id FOREIGN KEY(user_id), references User(user_id)
   recipient_id FOREIGN KEY(user_id), references User(user_id)
   message_body TEXT NOT NULL
   sent_at TIMESTAMP, DEFAULT CURRENT_TIMESTAMP   
