
-- 03_select_queries.sql
-- Example SELECT queries for evaluation

-- 1) List users and their number of workouts (LEFT JOIN + GROUP BY)
SELECT u.id, u.name, u.email, COUNT(w.id) AS workouts_count
FROM users u
LEFT JOIN workouts w ON w.user_id = u.id
GROUP BY u.id
ORDER BY workouts_count DESC;

-- 2) Recent workouts with exercises (JOINs)
SELECT w.id AS workout_id, u.name AS user_name, w.workout_date, e.name AS exercise_name, we.sets, we.reps
FROM workouts w
JOIN users u ON u.id = w.user_id
JOIN workout_exercises we ON we.workout_id = w.id
JOIN exercises e ON e.id = we.exercise_id
WHERE w.workout_date >= '2025-11-01'
ORDER BY w.workout_date DESC
LIMIT 10;

-- 3) Users with active goals (WHERE + ORDER BY)
SELECT u.name, g.description, g.target_date
FROM goals g
JOIN users u ON u.id = g.user_id
WHERE g.target_date > CURRENT_DATE
ORDER BY g.target_date ASC
LIMIT 20;

-- 4) Exercises usage ranking (aggregation + ORDER BY)
SELECT e.name, e.muscle_group, COUNT(*) AS used_in_workouts
FROM exercises e
JOIN workout_exercises we ON we.exercise_id = e.id
GROUP BY e.id
ORDER BY used_in_workouts DESC;
