INSERT INTO Plano VALUES
(1,'Mensal',1,89.90),
(2,'Trimestral',3,239.90),
(3,'Anual',12,699.90);
INSERT INTO Instrutor VALUES
(1,'Carlos Mendes','Musculação','11999999999','carlos@vidafit.com'),
(2,'Julia Rocha','Pilates','11988888888','julia@vidafit.com'),
(3,'Roberto Lima','Dança','11977777777','roberto@vidafit.com');
INSERT INTO Aluno VALUES
(1,'Ana Souza','123.456.789-00','1999-05-12','11944444444','ana@email.com','Rua A, 123',1),
(2,'Felipe Costa','987.654.321-00','1990-11-22','11933333333','felipe@email.com','Rua B, 14',2),
(3,'Mayra Mickely','555.222.111-00','1995-02-03','11955551234','mayra@email.com','Rua C, 78',3);
INSERT INTO Aula VALUES
(1,'Pilates','08:00',2,10),
(2,'Dança','19:00',3,25),
(3,'Musculação Funcional','15:00',1,20);
INSERT INTO InscricaoAula VALUES
(1,1,3,'2025-02-10'),
(2,2,1,'2025-02-11'),
(3,3,2,'2025-02-11');
INSERT INTO Checkin VALUES
(1,3,NOW()),
(2,1,NOW()),
(3,2,NOW());
INSERT INTO Pagamento VALUES
(1,3,3,'2025-01-05',699.90,'Pago'),
(2,1,1,'2025-02-01',89.90,'Pago'),
(3,2,2,'2025-01-20',239.90,'Pendente');