CREATE TABLE room_types (
    type_name VARCHAR(50) PRIMARY KEY,
    base_price DECIMAL(10, 2) NOT NULL,
    description TEXT
);

INSERT INTO room_types (type_name, base_price, description)
VALUES
('Single', 500.00, 'Single rooms are ideal for solo travelers, offering comfort and privacy.'),
('Double', 800.00, 'Double rooms are spacious and great for couples or families.');

CREATE TABLE rooms (
    room_id INT AUTO_INCREMENT PRIMARY KEY,
    room_number VARCHAR(10) UNIQUE NOT NULL,
    room_type VARCHAR(50) NOT NULL,
    capacity INT NOT NULL,
    price_per_night DECIMAL(10, 2) NOT NULL,
    availability_status ENUM('available', 'occupied', 'maintenance') NOT NULL,
    description TEXT,
    FOREIGN KEY (room_type) REFERENCES room_types(type_name)
);

INSERT INTO rooms (room_number, room_type, capacity, price_per_night, availability_status, description)
VALUES
('101', 'Single', 1, 500.00, 'available', 'Cozy single room with a single bed and private bathroom.'),
('102', 'Double', 2, 800.00, 'occupied', 'Spacious double room with a queen-size bed, ideal for couples.'),
('103', 'Single', 1, 550.00, 'maintenance', 'Modern single room with a comfortable single bed and a desk.'),
('104', 'Double', 2, 850.00, 'available', 'Elegant double room with two twin beds and a balcony.');

CREATE TABLE bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    room_id INT NOT NULL,
    customer_id INT NOT NULL,
    check_in_date DATE NOT NULL,
    check_out_date DATE NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    booking_status ENUM('confirmed', 'checked-in', 'cancelled') NOT NULL,
    FOREIGN KEY (room_id) REFERENCES rooms(room_id)
);

INSERT INTO bookings (room_id, customer_id, check_in_date, check_out_date, total_price, booking_status)
VALUES
(1, 1, '2024-12-25', '2024-12-27', 1000.00, 'confirmed'),
(2, 2, '2024-12-20', '2024-12-22', 1600.00, 'checked-in'),
(4, 3, '2024-12-28', '2024-12-30', 1700.00, 'confirmed');




















