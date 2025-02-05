use lagosride;

CREATE TABLE Drivers (
    DriverID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Rating DECIMAL(3,2) DEFAULT 5.00,
    TotalRides INT DEFAULT 0,
    CHECK (Rating >= 1.00 AND Rating <= 5.00)
);

CREATE TABLE Riders (
    RiderID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    City VARCHAR(50) NOT NULL
);

CREATE TABLE Rides (
    RideID INT PRIMARY KEY AUTO_INCREMENT,
    DriverID INT NOT NULL,
    RiderID INT NOT NULL,
    Fare DECIMAL(10,2) NOT NULL,
    Rating DECIMAL(3,2) DEFAULT 5.00,
    DistanceKM DECIMAL(6,2) NOT NULL,
    FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID),
    FOREIGN KEY (RiderID) REFERENCES Riders(RiderID),
    CHECK (Rating >= 1.00 AND Rating <= 5.00),
    CHECK (Fare >= 0),
    CHECK (DistanceKM > 0)
);

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    RideID INT NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    PaymentMethod ENUM('CASH', 'CARD', 'WALLET') NOT NULL,
    FOREIGN KEY (RideID) REFERENCES Rides(RideID),
    CHECK (Amount > 0)
);