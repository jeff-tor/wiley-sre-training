Use HotelSoftwareGuild;

INSERT INTO Guests (`Name`,`Address`,`City`,`State`,`Zipcode`,`Phone`)
VALUES 
('TorJiaFu','Nassim Road','Singapore','SG','12345','89416741'),
('Hiroshi','ToaPayoh','Singapore','SG','12345','91234511'),
('Jason','Sembawang','Singapore','SG','12345','91919191'),
('Jeremiah Pendergrass','Yishun','Singapore','SG','54321','01010101');


INSERT INTO Rooms (`RoomNumber`,`Type`,`Amenities`,`ADAaccessibility`,`StdOccupancy`,`MaxOccupancy`,`BasePrice`,`ExtraPaxPrice`)
VALUES
('201','Double','Microwave,Jacuzzi','No', 2, 4,199.99, 10),
('202','Double','Refrigerator','No', 2, 4, 174.99, 10),
('203','Single','Jacuzzi','Yes', 2, 2, 155.99, 10);

INSERT INTO Reservations (`RoomNumber`,`Name`,`Adults`,`Children`,`StartDate`,`EndDate`,`TotalRoomCost`)
VALUES
('201','Jeremiah Pendergrass', 2, 2, '2022-01-01','2022-01-07',699.99),
('202','Jason', 2, 0, '2022-01-01', '2022-01-04', 499.99);

DELETE FROM Guests WHERE Name = 'Jeremiah Pendergrass';



