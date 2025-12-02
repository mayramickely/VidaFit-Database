
-- 01_create_tables.sql
-- Schema for VidaFit demo project (PostgreSQL)

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(150) UNIQUE NOT NULL,
  birth_date DATE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE goals (
  id SERIAL PRIMARY KEY,
  user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  description TEXT NOT NULL,
  target_date DATE
);

CREATE TABLE workouts (
  id SERIAL PRIMARY KEY,
  user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  workout_date DATE NOT NULL,
  duration_minutes INTEGER,
  notes TEXT
);

CREATE TABLE exercises (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  muscle_group VARCHAR(50)
);

CREATE TABLE workout_exercises (
  workout_id INTEGER REFERENCES workouts(id) ON DELETE CASCADE,
  exercise_id INTEGER REFERENCES exercises(id) ON DELETE CASCADE,
  sets INTEGER,
  reps INTEGER,
  weight_kg NUMERIC(5,2),
  PRIMARY KEY (workout_id, exercise_id)
);

-- Indexes for performance
CREATE INDEX idx_workouts_user_date ON workouts(user_id, workout_date);
