CREATE DATABASE hotel_management;
USE hotel_management;
CREATE TABLE Guests (
    NationalID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    PhoneNumber VARCHAR(15),
    CheckInDate DATE NOT NULL
);

CREATE TABLE HotelReviews (
    ReviewID INT PRIMARY KEY AUTO_INCREMENT,
    NationalID INT NOT NULL,
    ReviewDate DATE NOT NULL,
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    Comments TEXT,
    FOREIGN KEY (NationalID) REFERENCES Guests(NationalID) ON DELETE CASCADE
);

