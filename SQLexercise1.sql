#Activity 1

SELECT *
FROM Exercises;

#Activity 2

SELECT *
FROM Client;

#Activity 3

SELECT *
FROM Client
WHERE City = 'Metairie';

#Activity 4 (Answer : No)

SELECT *
FROM Client
WHERE ClientId = '818u7faf-7b4b-48a2-bf12-7a26c92de20c';

#Activity 5

SELECT COUNT(*)
FROM Goal;

#Activity 6

SELECT Name,
LevelId
FROM Workout;

#Activity 7

SELECT Name,
LevelId,
Notes
FROM Workout
WHERE LevelId = 2;

#Activity 8

SELECT FirstName,
LastName,
City
FROM Client
WHERE City in ('Metairie','Kenner','Gretna');

#Activity 9

SELECT FirstName,
LastName,
BirthDate
FROM Client
WHERE BirthDate >= '1980-01-01'
AND BirthDate <='1990-01-01'
ORDER BY BirthDate DESC;

#Activity 10

SELECT FirstName,
LastName,
BirthDate,
FROM Client
WHERE BirthDate BETWEEN '1980-01-01' AND '1990-01-01'
ORDER BY BirthDate DESC;

#Activity 11

SELECT count(*)
FROM Login
WHERE EmailAddress LIKE '%.gov';

#Activity 12

SELECT Count(*)
FROM Login
WHERE EmailAddress NOT LIKE '%.com';

#Activity 13

SELECT FirstName,
LastName
FROM Clients
WHERE Birthdate IS NOT NULL;

#Activity 14

SELECT Name
FROM ExerciseCategory
WHERE ParentCategoryId IS NOT NULL;

#Activity 15

SELECT Name,
Notes
FROM Workout
WHERE LevelId = 3
AND notes LIKE '%you%';

#Activity 16

SELECT FirstName,
LastName,
City
FROM Client
WHERE LastName LIKE 'L%'
OR LastName LIKE 'N%'
OR LastName LIKE 'M%'
AND LastCity = 'LaPlace'
ORDER BY City DESC

#Activity 17

WITH TABLE_1 AS (SELECT InvoiceID,
Description,
Price,
Quantity,
ServiceDate,
Price * Quantity AS line_item_total
FROM InvoiceLineItem)
SELECT *
FROM TABLE_1
WHERE line_item_total BETWEEN '15' AND '25';

#Activity 18

SELECT Login.EmailAddress
FROM Client
LEFT JOIN Login
ON Client.ClientId = Login.ClientId
WHERE Client.FirstName LIKE 'Estrella'
OR Client.LastName LIKE 'Bazely';

#Activity 19

SELECT Workout.Name,
tab1.GoalId,
tab2.Name
FROM Workout
LEFT JOIN WorkoutGoal tab1
ON Workout.WorkoutId = tab1.WorkoutId
LEFT JOIN Goal tab2
ON tab1.GoalId = tab2.GoalId
WHERE Workout.Name = 'This Is Parkour';
