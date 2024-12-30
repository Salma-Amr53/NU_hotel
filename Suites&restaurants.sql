CREATE TABLE suites (
    Suite_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Description TEXT,
    RoomSize DECIMAL(10, 2),
    NumberOfRooms INT,
    Capacity INT,
    PricePerNight DECIMAL(10, 2) NOT NULL,
    AvailabilityStatus VARCHAR(50) DEFAULT 'Available',
    ViewType VARCHAR(100)
);

CREATE TABLE Restaurants (
    Restaurant_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    CuisineType VARCHAR(100) NOT NULL,
    OpeningHours VARCHAR(50) NOT NULL,
    SeatingCapacity INT NOT NULL,
    Menu TEXT,
    Specialties TEXT,
    ReservationRequired BOOLEAN DEFAULT FALSE,
    ContactNumber VARCHAR(15),
    AveragePricePerPerson DECIMAL(10, 2),
    IndoorOutdoorSeating VARCHAR(50),
    Status VARCHAR(50) DEFAULT 'Open',
    Services TEXT
);
