
-- 02_insert_data.sql
-- Sample data for VidaFit

-- users
INSERT INTO users (name, email, birth_date) VALUES
('Ana Silva','ana.silva@example.com','1990-05-12'),
('Carlos Pereira','carlos.pereira@example.com','1985-11-02'),
('Mayra Mickely','mickelyp@gmail.com','1997-03-18');

-- exercises
INSERT INTO exercises (name,muscle_group) VALUES
('Agachamento','Pernas'),
('Supino Reto','Peito'),
('Remada Curvada','Costas'),
('Flexão de Braço','Peito'),
('Puxada na Barra','Costas');

-- workouts
INSERT INTO workouts (user_id, workout_date, duration_minutes, notes) VALUES
(1, '2025-11-20', 50, 'Treino de pernas e core'),
(2, '2025-11-21', 40, 'Peito e tríceps'),
(3, '2025-11-22', 60, 'Costas intensa');

-- workout_exercises
INSERT INTO workout_exercises (workout_id, exercise_id, sets, reps, weight_kg) VALUES
(1,1,4,8,60.00),
(1,3,3,10,NULL),
(2,2,4,6,70.00),
(2,4,3,12,NULL),
(3,5,4,6,0.00);

-- goals
INSERT INTO goals (user_id, description, target_date) VALUES
(1,'Correr 5km sem pausar','2026-03-01'),
(3,'Aumentar força no supino para 80kg','2026-06-01');
