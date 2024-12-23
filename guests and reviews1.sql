CREATE DATABASE hotel;
USE hotel;
CREATE TABLE Guests (
    GuestID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    PhoneNumber VARCHAR(15),
    Address TEXT,
    CheckInDate DATE NOT NULL,
    CheckOutDate DATE
);

CREATE TABLE HotelReviews (
    ReviewID INT PRIMARY KEY AUTO_INCREMENT,
    GuestID INT NOT NULL,
    ReviewDate DATE NOT NULL,
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    Comments TEXT,
    FOREIGN KEY (GuestID) REFERENCES Guests(GuestID) ON DELETE CASCADE
);

