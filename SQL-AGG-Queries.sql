use PersonalTrainer;

-- Use an aggregate to count the number of Clients.
-- 500 rows
--------------------

SELECT count(*)
FROM Client


-- Use an aggregate to count Client.BirthDate.
-- The number is different than total Clients. Why?
-- 463 rows
--------------------

SELECT count(Client.BirthDate)
FROM Client
##because some clients did not input birthdate


-- Group Clients by City and count them.
-- Order by the number of Clients desc.
-- 20 rows
--------------------

SELECT count(Client.FirstName),
City
FROM Client
GROUP BY City
ORDER BY count(Client.FirstName) DESC


-- Calculate a total per invoice using only the InvoiceLineItem table.
-- Group by InvoiceId.
-- You'll need an expression for the line item total: Price * Quantity.
-- Aggregate per group using SUM().
-- 1000 rows
--------------------

WITH table1 as
(
SELECT InvoiceId,
Price * Quantity as InvoiceLineItemTotal
FROM InvoiceLineItem)

SELECT InvoiceId,
sum(InvoiceLineItemTotal)
FROM table1
GROUP BY InvoiceId;


-- Calculate a total per invoice using only the InvoiceLineItem table.
-- (See above.)
-- Only include totals greater than $500.00.
-- Order from lowest total to highest.
-- 234 rows
--------------------

WITH table1 as
(
SELECT InvoiceId,
Price * Quantity as InvoiceLineItemTotal
FROM InvoiceLineItem)

SELECT InvoiceId,
sum(InvoiceLineItemTotal)
FROM table1
WHERE sum(InvoiceLineItemTotal) > 500
GROUP BY InvoiceId
ORDER BY sum(InvoiceLineItemTotal) DESC




-- Calculate the average line item total
-- grouped by InvoiceLineItem.Description.
-- 3 rows
--------------------

SELECT avg(Price * Quantity) as LineItemTotal
FROM InvoiceLineItem
GROUP BY Description



-- Select ClientId, FirstName, and LastName from Client
-- for clients who have *paid* over $1000 total.
-- Paid is Invoice.InvoiceStatus = 2.
-- Order by LastName, then FirstName.
-- 146 rows
--------------------

WITH table1 as
(
SELECT a.ClientId,
a.FirstName,
a.LastName,
sum(Quantity * Price) as LineItemTotal
FROM Client a
LEFT JOIN Invoice b
ON a.ClientId = b.ClientId
LEFT JOIN InvoiceLineItem c
ON b.InvoiceId = c.InvoiceId
WHERE b.InvoiceStatus = 2
GROUP BY a.ClientId)

SELECT *
FROM table1
WHERE LineItemTotal > 1000


-- Count exercises by category.
-- Group by ExerciseCategory.Name.
-- Order by exercise count descending.
-- 13 rows
--------------------

SELECT 
b.name, 
count(a.name)
FROM Exercise a
LEFT JOIN ExerciseCategory b
ON a.ExerciseCategoryId = b.ExerciseCategoryId
GROUP BY b.name
ORDER BY count(a.name) DESC



-- Select Exercise.Name along with the minimum, maximum,
-- and average ExerciseInstance.Sets.
-- Order by Exercise.Name.
-- 64 rows
--------------------

SELECT 
a.name,
min(b.sets),
max(b.sets),
avg(b.sets)
FROM Exercise a
LEFT JOIN ExerciseInstance b
ON a.ExerciseId = b.ExerciseId
GROUP BY a.name;


-- Find the minimum and maximum Client.BirthDate
-- per Workout.
-- 26 rows
-- Sample: 
-- WorkoutName, EarliestBirthDate, LatestBirthDate
-- '3, 2, 1... Yoga!', '1928-04-28', '1993-02-07'
--------------------


SELECT 
c.Name,
min(a.Birthdate),
max(a.Birthdate)
FROM Client a
LEFT JOIN ClientWorkout b
ON a.ClientId = b.ClientId
LEFT JOIN Workout c
ON b.WorkoutId = c.WorkoutId
GROUP BY c.Name


-- Count client goals.
-- Be careful not to exclude rows for clients without goals.
-- 500 rows total
-- 50 rows with no goals
--------------------

SELECT count(b.goalid)

FROM Client a
LEFT JOIN ClientGoal b
ON a.ClientId = b.ClientId
GROUP BY a.ClientId



-- Select Exercise.Name, Unit.Name, 
-- and minimum and maximum ExerciseInstanceUnitValue.Value
-- for all exercises with a configured ExerciseInstanceUnitValue.
-- Order by Exercise.Name, then Unit.Name.
-- 82 rows
--------------------

SELECT
a.Name,
d.Name,
min(c.value),
max(c.value)
FROM Exercise a
LEFT JOIN ExerciseInstance b
ON a.ExerciseId = b.ExerciseId
LEFT JOIN ExerciseInstanceUnitValue c
ON b.ExerciseInstanceId = c.ExerciseInstanceId
LEFT JOIN Unit d
ON c.UnitId = d.UnitId
WHERE c.value IS NOT NULL
GROUP BY a.Name, d.name
ORDER BY a.Name, d.Name



-- Modify the query above to include ExerciseCategory.Name.
-- Order by ExerciseCategory.Name, then Exercise.Name, then Unit.Name.
-- 82 rows
--------------------

SELECT
e.Name,
a.Name,
d.Name,
min(c.value),
max(c.value)
FROM Exercise a
LEFT JOIN ExerciseInstance b
ON a.ExerciseId = b.ExerciseId
LEFT JOIN ExerciseInstanceUnitValue c
ON b.ExerciseInstanceId = c.ExerciseInstanceId
LEFT JOIN Unit d
ON c.UnitId = d.UnitId
LEFT JOIN ExerciseCategory e
ON a.ExerciseCategoryId = e.ExerciseCategoryId
WHERE c.value IS NOT NULL
GROUP BY e.Name, a.name, d.Name
ORDER BY e.Name, a.Name, d.Name



-- Select the minimum and maximum age in years for
-- each Level.
-- To calculate age in years, use the MySQL function DATEDIFF.
-- 4 rows
--------------------

WITH table1 AS (
SELECT
d.Name,
min(a.BirthDate) mindate,
max(a.BirthDate) maxdate
FROM Client a
LEFT JOIN ClientWorkout b
ON a.ClientId = b.ClientId
LEFT JOIN Workout c
ON b.WorkoutId = c.WorkoutId
LEFT JOIN Level d
ON c.LevelId = d.LevelId
GROUP BY d.LevelId)

SELECT 
table1.Name,
datediff(maxdate,mindate) /365 AS YearsRange
FROM table1



-- Stretch Goal!
-- Count logins by email extension (.com, .net, .org, etc...).
-- Research SQL functions to isolate a very specific part of a string value.
-- 27 rows (27 unique email extensions)
--------------------

WITH table1 as(
SELECT
ClientId,
EmailAddress,
	CASE WHEN EmailAddress LIKE ('%.com')
	THEN 'email_com'
	WHEN EmailAddress LIKE ('%.net')
    THEN 'email_net'
	WHEN EmailAddress LIKE ('%.org')
    THEN 'email_org'
    ELSE 'others'
    END AS EmailType
FROM LOGIN)

SELECT
EmailType, 
count(EmailType)
FROM table1
GROUP BY EmailType

-- Stretch Goal!
-- Match client goals to workout goals.
-- Select Client FirstName and LastName and Workout.Name for
-- all workouts that match at least 2 of a client's goals.
-- Order by the client's last name, then first name.
-- 139 rows
--------------------
