Table Guests {
    NationalID INT [pk]
    FirstName VARCHAR(50) [not null]
    LastName VARCHAR(50) [not null]
    Email VARCHAR(100) [unique, not null]
    PhoneNumber VARCHAR(15)
    CheckInDate DATE [not null]
}

Table HotelReviews {
    ReviewID INT [pk, increment]
    NationalID INT [ref: > Guests.NationalID]
    ReviewDate DATE [not null]
    Rating INT
    Comments TEXT
}

Table Suites {
    Suite_ID INT [pk, increment]
    Name VARCHAR(255) [not null]
    Description TEXT
    RoomSize DECIMAL(10, 2)
    NumberOfRooms INT
    Capacity INT
    PricePerNight DECIMAL(10, 2) [not null]
    AvailabilityStatus VARCHAR(50) [default: "Available"]
    ViewType VARCHAR(100)
}

Table Restaurants {
    Restaurant_ID INT [pk, increment]
    Name VARCHAR(255) [not null]
    CuisineType VARCHAR(100) [not null]
    OpeningHours VARCHAR(50) [not null]
    SeatingCapacity INT [not null]
    Menu TEXT
    Specialties TEXT
    ReservationRequired BOOLEAN [default: false]
    ContactNumber VARCHAR(15)
    AveragePricePerPerson DECIMAL(10, 2)
    IndoorOutdoorSeating VARCHAR(50)
    Status VARCHAR(50) [default: "Open"]
    Services TEXT
}

Table Reception {
    ReceptionID INT [pk]
    FirstName NVARCHAR(50) [not null]
    LastName NVARCHAR(50) [not null]
    Email NVARCHAR(100) [not null]
    Phone VARCHAR(15) [not null]
    Rate INT
}

Table RShifts {
    RShiftID INT [pk]
    ReceptionID INT [ref: > Reception.ReceptionID]
    ShiftDate DATE [not null]
    ShiftType NVARCHAR(50) [not null]
}

Table RTasks {
    RTaskID INT [pk, increment]
    ReceptionID INT [ref: > Reception.ReceptionID]
    TaskDescription NVARCHAR(300) [not null]
    TaskDate DATE [not null]
    CompletionStatus NVARCHAR(20) [default: "Pending"]
}

Table Cleaning {
    CID INT [pk]
    FirstName NVARCHAR(50) [not null]
    LastName NVARCHAR(50) [not null]
    Email NVARCHAR(100) [not null]
    Phone VARCHAR(15) [not null]
}

