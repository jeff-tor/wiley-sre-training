USE HotelSoftwareGuild;

--Query to extract list of reservations that end in July 2023

SELECT Name,
RoomNumber,
StartDate,
EndDate
FROM Reservations
WHERE EndDate = '2022-07-31'

--Query to extract list of reservations for rooms with a Jacuzzi

SELECT a.Name,
a.RoomNumber,
a.StartDate,
a.EndDate
FROM Reservations a
LEFT JOIN Rooms b
on a.RoomID = b.roomID
WHERE b.type LIKE '%Jacuzzi%'

--Query to return all rooms reserved for specific guest

SELECT a.Name,
a.RoomNumber
a.StartDate
(a.Adults + a.Children) as totalPeople

FROM Reservations a

LEFT JOIN Rooms b
ON a.RoomID = b.RoomID
LEFT JOIN Guests c
ON b.GuestID = c.GuestID

WHERE a.Name = 'Jeremiah Pendergrass'

--Query to return list of rooms, reservation ID, and per-room cost for each reservation. The results should include all rooms, whether or not there is a reservation associated with the room.

SELECT a.GuestReservationID,
bRoomNumber,
b.BasePrice,
FROM Reservations a.
LEFT JOIN Rooms b
ON a.RoomID = b.RoomID

--Query to return all the rooms accomodating at least three guests and that are reserved on any date in April 2023

SELECT a.RoomNumber,

FROM Rooms a
LEFT JOIN Reservations b

WHERE a.StartDate >= "2022-04-01"
AND a.StartDate <= "2022-05-01"
HAVING count(b.GuestReservationID) >= 3

--Query to return list of guest names and number of reservations per guest, sorted starting with the guest with the most reservation, then by the guests name.

SELECT count(b.GuestReservationID),
a.Name,
FROM Guests a
LEFT JOIN Reservations b
a.RoomID = b.RoomID
ORDER BY count(b.GuestReservationID) DESC

--Query to display the name, address, phone number baesd on their phone number

SELECT Name,
Address,
PhoneNumber
FROM Guests
WHERE PhoneNumber = '89416741'

