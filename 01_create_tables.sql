CREATE TABLE Plano (
    PlanoID INT PRIMARY KEY,
    Tipo VARCHAR(50),
    DuracaoMeses INT,
    Valor DECIMAL(10,2)
);
CREATE TABLE Instrutor (
    InstrutorID INT PRIMARY KEY,
    Nome VARCHAR(150),
    Especialidade VARCHAR(100),
    Telefone VARCHAR(30),
    Email VARCHAR(100)
);
CREATE TABLE Aluno (
    AlunoID INT PRIMARY KEY,
    Nome VARCHAR(150),
    CPF VARCHAR(14),
    DataNascimento DATE,
    Telefone VARCHAR(30),
    Email VARCHAR(100),
    Endereco VARCHAR(250),
    PlanoID INT,
    FOREIGN KEY (PlanoID) REFERENCES Plano(PlanoID)
);
CREATE TABLE Aula (
    AulaID INT PRIMARY KEY,
    Modalidade VARCHAR(100),
    Horario VARCHAR(50),
    InstrutorID INT,
    Capacidade INT,
    FOREIGN KEY (InstrutorID) REFERENCES Instrutor(InstrutorID)
);
CREATE TABLE InscricaoAula (
    InscricaoID INT PRIMARY KEY,
    AulaID INT,
    AlunoID INT,
    DataInscricao DATE,
    FOREIGN KEY (AulaID) REFERENCES Aula(AulaID),
    FOREIGN KEY (AlunoID) REFERENCES Aluno(AlunoID)
);
CREATE TABLE Checkin (
    CheckinID INT PRIMARY KEY,
    AlunoID INT,
    DataHora TIMESTAMP,
    FOREIGN KEY (AlunoID) REFERENCES Aluno(AlunoID)
);
CREATE TABLE Pagamento (
    PagamentoID INT PRIMARY KEY,
    AlunoID INT,
    PlanoID INT,
    DataPagamento DATE,
    Valor DECIMAL(10,2),
    Status VARCHAR(20),
    FOREIGN KEY (AlunoID) REFERENCES Aluno(AlunoID),
    FOREIGN KEY (PlanoID) REFERENCES Plano(PlanoID)
);