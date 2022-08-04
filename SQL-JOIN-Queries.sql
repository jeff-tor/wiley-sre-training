-- Select all columns from ExerciseCategory and Exercise.
-- The tables should be joined on ExerciseCategoryId.
-- This query returns all Exercises and their associated ExerciseCategory.
-- 64 rows
--------------------
SELECT *
FROM ExerciseCategory
LEFT JOIN Exercise
ON ExerciseCategory.SmthID = Cateogry.SmthID;


-- Select ExerciseCategory.Name and Exercise.Name
-- where the ExerciseCategory does not have a ParentCategoryId (it is null).
-- Again, join the tables on their shared key (ExerciseCategoryId).
-- 9 rows
--------------------
SELECT ExerciseCategory.Name,
Exercise.Name
FROM Exercise
LEFT JOIN ExerciseCategory
ON ExerciseCategory.ParentCategoryId = Exercise.ParentCategoryId;


-- The query above is a little confusing. At first glance, it's hard to tell
-- which Name belongs to ExerciseCategory and which belongs to Exercise.
-- Rewrite the query using an aliases. 
-- Alias ExerciseCategory.Name as 'CategoryName'.
-- Alias Exercise.Name as 'ExerciseName'.
-- 9 rows
--------------------

SELECT ExerciseCategory.Name as CategoryName,
Exercise.Name as ExerciseName
FROM Exercise
LEFT JOIN ExerciseCategory
ON ExerciseCategory.ParentCategoryId = Exercise.ParentCategoryId;


-- Select FirstName, LastName, and BirthDate from Client
-- and EmailAddress from Login 
-- where Client.BirthDate is in the 1990s.
-- Join the tables by their key relationship. 
-- What is the primary-foreign key relationship?
-- 35 rows
--------------------

SELECT FirstName,
LastName,
BirthDate
FROM Client
WHERE Client.BirthDate BETWEEN '1990-01-01' AND '2000-01-01'


-- Select Workout.Name, Client.FirstName, and Client.LastName
-- for Clients with LastNames starting with 'C'?
-- How are Clients and Workouts related?
-- 25 rows
--------------------

SELECT Workout.Name,
Client.FirstName,
Client.LastName
FROM Clients
LEFT JOIN Workout
ON Client.ClientId = Workout.ClientId
WHERE Client.LastName LIKE 'C%';


-- Select Names from Workouts and their Goals.
-- This is a many-to-many relationship with a bridge table.
-- Use aliases appropriately to avoid ambiguous columns in the result.
--------------------

SELECT wko.Name as ClientName,
gl.Name as GoalName,
FROM Workout wko
LEFT JOIN ClientGoal cltg
ON wko.CLientId = cltg.ClientId
LEFT JOIN Goal gl
ON cltg.GoalId = gl.GoalId;

-- Select FirstName and LastName from Client.
-- Select ClientId and EmailAddress from Login.
-- Join the tables, but make Login optional.
-- 500 rows
--------------------

SELECT Client.FirstName,
Client.LastName,
Login.CliendId,
Login.EmailAddress
FROM Client
LEFT JOIN Login
ON Client.ClientId = Login.ClientId

-- Using the query above as a foundation, select Clients
-- who do _not_ have a Login.
-- 200 rows
--------------------

SELECT Client.FirstName,
Client.LastName,
Login.CliendId,
Login.EmailAddress
FROM Client
LEFT JOIN Login
ON Client.ClientId = Login.ClientId
WHERE EmailAddress IS NULL;

-- Does the Client, Romeo Seaward, have a Login?
-- Decide using a single query.
-- nope :(
--------------------

SELECT count(*)
FROM Client
WHERE FirstName LIKE 'Romeo'
AND LastName LIKE 'Seaward'



-- Select ExerciseCategory.Name and its parent ExerciseCategory's Name.
-- This requires a self-join.
-- 12 rows
--------------------

SELECT parent.ExerciseCategory.ParentCategoryId,
child.ExerciseCategory.Name
FROM parent.ExerciseCategory, child.ExerciseCategory

    
-- Rewrite the query above so that every ExerciseCategory.Name is
-- included, even if it doesn't have a parent.
-- 16 rows
--------------------

SELECT parent.ExerciseCategory.ParentCategoryId,
child.ExerciseCategory.Name
FROM parent.ExerciseCategory, child.ExerciseCategory    


-- Are there Clients who are not signed up for a Workout?
-- 50 rows
--------------------

SELECT Client. Count(*)
FROM Client
LEFT JOIN ClientWorkout
ON Client.ClientId = ClientWorkout.ClientId
WHERE ClientWorkout.WorkoutId IS NULL;



-- Which Beginner-Level Workouts satisfy at least one of Shell Creane's Goals?
-- Goals are associated to Clients through ClientGoal.
-- Goals are associated to Workouts through WorkoutGoal.
-- 6 rows, 4 unique rows
--------------------

SELECT a.clientId as ClientID,
c.Name as ClientGoalName,
e.Name as ClientWorkoutName,

FROM Client a
LEFT JOIN ClientGoal b
on a.ClientId = b.CLientId
LEFT JOIN Goal c
on b.GoalId = c.GoalId
LEFT JOIN WorkoutGoal d
on c.GoalId = d.GoalId
LEFT JOIN Workout e
on d.WorkoutId = e.WorkoutId 

WHERE a.FirstName IN 'Shell'
AND a.LastName IN 'Creane'


-- Select all Workouts. 
-- Join to the Goal, 'Core Strength', but make it optional.
-- You may have to look up the GoalId before writing the main query.
-- If you filter on Goal.Name in a WHERE clause, Workouts will be excluded.
-- Why?
-- 26 Workouts, 3 Goals
--------------------

(Why? Because there is no common join key betw Workout and Goal table)
so we must join workoutID to a table called WorkoutGoal to find the WorkoutID that is associated with GoalID of Core Strength.
 
SELECT a.Name
FROM Workout a
LEFT JOIN WorkoutGoal b
ON a.WorkoutId = b.WorkoutId
LEFT JOIN Goal c
ON b.GoalId = c.GoalId

WHERE c.Name = 'Core Strength'

-- The relationship between Workouts and Exercises is... complicated.
-- Workout links to WorkoutDay (one day in a Workout routine)
-- which links to WorkoutDayExerciseInstance 
-- (Exercises can be repeated in a day so a bridge table is required) 
-- which links to ExerciseInstance 
-- (Exercises can be done with different weights, repetions,
-- laps, etc...) 
-- which finally links to Exercise.
-- Select Workout.Name and Exercise.Name for related Workouts and Exercises.
--------------------

SELECT a.Name as WorkoutName,
e.Name as ExerciseName

FROM workout a
LEFT JOIN WorkoutDay b
ON a.WorkoutId = b.WorkoutId
LEFT JOIN WorkoutDayExerciseInstance c
ON b.WorkoutDayId = c.WorkoutDayId
LEFT JOIN ExerciseInstance d
ON c.ExerciseInstanceId = d.ExerciseInstanceId
LEFT JOIN Exercise e
ON d.ExerciseId = e.ExerciseId
   

-- An ExerciseInstance is configured with ExerciseInstanceUnitValue.
-- It contains a Value and UnitId that links to Unit.
-- Example Unit/Value combos include 10 laps, 15 minutes, 200 pounds.
-- Select Exercise.Name, ExerciseInstanceUnitValue.Value, and Unit.Name
-- for the 'Plank' exercise. 
-- How many Planks are configured, which Units apply, and what 
-- are the configured Values?
-- 4 rows, 1 Unit, and 4 distinct Values

SELECT b.Name as ExerciseName,
c.Value as ExerciseValue,
d.Name as UnitName

FROM ExerciseInstance a
LEFT JOIN Exercise b
ON a.ExerciseId = b.ExerciseId
LEFT JOIN ExerciseInstanceUnitValue c
ON a.ExerciseInstanceId = c.ExerciseInstanceID
LEFT JOIN Unit d
ON c.UnitId = d.UnitId

WHERE b.Name = 'Plank'


