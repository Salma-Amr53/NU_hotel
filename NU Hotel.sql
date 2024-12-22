USE NUHOTEL;



CREATE TABLE Reception (
ReceptionID INT PRIMARY KEY IDENTITY (1,1),
FirstName NVARCHAR(50) NOT NULL,
LastName NVARCHAR(50) NOT NULL,
Email NVARCHAR(100) NOT NULL, 
Phone INT NOT NULL,
Rate INT,
);

CREATE TABLE RShifts (
RShiftID INT PRIMARY KEY IDENTITY(1,1),
ReceptionID INT NOT NULL,
ShiftDATE DATE NOT NULL,
ShifTYPE NVARCHAR(50) NOT NULL,
FOREIGN KEY (ReceptionID) REFERENCES Reception(ReceptionID),
);

CREATE TABLE RTasks (
    RTaskID INT PRIMARY KEY IDENTITY(1,1),
    ReceptionID INT NOT NULL,
    TaskDescription NVARCHAR(300) NOT NULL, 
    TaskDate DATE NOT NULL,
    CompletionStatus NVARCHAR(20) DEFAULT 'Pending',
    FOREIGN KEY (ReceptionID) REFERENCES Reception(ReceptionID)
);

INSERT INTO Reception (FirstName, LastName, Email, Phone, Rate)
VALUES 
('Mariam', 'Tammam', 'Mm707767831@gmail.com', '01110814551', '100'),
('Sara', 'Asaad', 'saraasaad665@gmail.com', '01050057663', '80'),
('Judy', 'Zaki', 'Jud12654@gmail.com', '01017980649', '90'),
('Yassen', 'Morad', 'yassahmed07@gmail.com', '01140324757', '100');

INSERT INTO RTasks (ReceptionID, TaskDescription, TaskDate)
VALUES
(1, 'Welcome the guests', '2023-12-20'),
(2, 'Carry bags', '2023-12-20'),
(3, 'Supervise the cleaning staff', '2023-12-20'),
(4, 'Take care of the paperwork', '2023-12-21');


INSERT INTO RShifts (ReceptionID, ShiftDATE, ShifTYPE) 
VALUES 
(1, '2023-12-20', 'Morning'),
(2, '2023-12-20', 'Evening'),
(3, '2023-12-20', 'Night'),
(4, '2023-12-21', 'Morning');


CREATE TABLE Cleaning (
CID INT PRIMARY KEY IDENTITY(167,7),
FirstName NVARCHAR(50) NOT NULL, 
LastName NVARCHAR(50) NOT NULL,
Email NVARCHAR(100) NOT NULL,
Phone INT NOT NULL);


INSERT INTO Cleaning (FirstName, LastName, Email, Phone)
VALUES 
('Youssef', 'Solyman', 'safsaf2008@gmail.com', '01551413101'),
('Mostaf', 'Emad', 'Mostafamahmoud07@gmail.com', '01120257170'),
('Salma', 'Islem', 'elmshatshata@gmail.com', '01007768429'),
('Ammar', 'El-Qady', 'AYE18273647@gmail.com', '01029079778');


CREATE TABLE CTasks (
CTaskID INT PRIMARY KEY IDENTITY(18,3),
CID INT NOT NULL,
TaskPosition NVARCHAR(100) NOT NULL, 
TaskDate DATE NOT NULL,
CompletionStatus NVARCHAR(50) NOT NULL DEFAULT'PENDING',
FOREIGN KEY (CID) REFERENCES Cleaning(CID)
);


INSERT INTO CTasks (TaskPosition, TaskDate, CID)
VALUES 
('Kitchen', '2023-12-03', '167'),
('Bathrooms', '2023-12-03', '174'),
('Reception', '2023-12-03', '181'),
('Lobby', '2023-12-03', '188');
