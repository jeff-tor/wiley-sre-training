DROP DATABASE IF EXISTS HotelSoftwareGuild;
CREATE DATABASE IF NOT EXISTS HotelSoftwareGuild;

Use HotelSoftwareGuild;

Create Table `Guests` (
`GuestID` INT NOT NULL AUTO_INCREMENT,
`Name` VARCHAR(50) NOT NULL,
`Address` VARCHAR(155) NOT NULL,
`City` VARCHAR(50) NOT NULL,
`State` VARCHAR(5) NOT NULL,
`Zipcode` VARCHAR(10) NOT NULL,
`Phone` VARCHAR(20) NOT NULL,
PRIMARY KEY (`GuestID`)
);

Create Table `Rooms` (
`RoomID` INT NOT NULL AUTO_INCREMENT,
`RoomNumber` VARCHAR(25) NOT NULL,
`Type` VARCHAR(5) NOT NULL,
`Amenities` VARCHAR(50) NOT NULL,
`ADAaccessibility` BOOLEAN NOT NULL,
`StdOccupancy` INT NOT NULL,
`MaxOccupancy` INT NOT NULL,
`BasePrice` DECIMAL (5,2) NOT NULL,
`ExtraPaxPrice` INT NOT NULL,
PRIMARY KEY (`RoomID`)
);

Create Table `Reservations` (
`GuestReservationID` INT NOT NULL AUTO_INCREMENT,
`RoomID` INT NOT NULL,
`GuestID` INT NOT NULL,
`RoomNumber` VARCHAR(25) NOT NULL,
`Name` VARCHAR(50) NOT NULL,
`Adults` INT NOT NULL,
`Children` INT NOT NULL,
`StartDate` DATE NOT NULL,
`EndDate` DATE NOT NULL,
`TotalRoomCost` DECIMAL (5,2) NOT NULL,
PRIMARY KEY (`GuestReservationID`)
);

ALTER TABLE `Reservations`
ADD CONSTRAINT `fk_RoomID`
FOREIGN KEY (`RoomID`)
REFERENCES `Rooms`
(`RoomID`) ON DELETE NO ACTION;

ALTER TABLE `Reservations`
ADD CONSTRAINT `fk_GuestID`
FOREIGN KEY (`GuestID`)
REFERENCES `Guests`
(`GuestID`) ON DELETE NO ACTION;



