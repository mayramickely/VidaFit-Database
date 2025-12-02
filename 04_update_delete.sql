
-- 04_update_delete.sql
-- Examples of UPDATE and DELETE commands (run only after verifying data)

BEGIN;

-- UPDATES (at least 3 examples)
-- 1) Update user email (simulate correction)
UPDATE users SET email = 'ana.s.new@example.com' WHERE name = 'Ana Silva';

-- 2) Increase duration of workouts in November 2025 by 5 minutes
UPDATE workouts SET duration_minutes = duration_minutes + 5
WHERE workout_date BETWEEN '2025-11-01' AND '2025-11-30';

-- 3) Mark a goal description edit
UPDATE goals SET description = description || ' (revisado)' WHERE user_id = 3;

-- DELETES (at least 3 examples)
-- 1) Remove workout_exercises entries for a removed workout id (cleanup example)
DELETE FROM workout_exercises WHERE workout_id = 9999; -- no-op safe example

-- 2) Delete goals that are past a very old date
DELETE FROM goals WHERE target_date < '2020-01-01';

-- 3) Delete a user by email (this will cascade to workouts/goals)
DELETE FROM users WHERE email = 'carlos.pereira@example.com';

COMMIT;
