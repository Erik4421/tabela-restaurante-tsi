CREATE DATABASE IF NOT EXISTS Restaurante;
USE Restaurante;

-- Tabela Gerente
CREATE TABLE Gerente (
    IdGerente INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(200) NOT NULL,
    Salario DECIMAL(5,2) NOT NULL
);

-- Tabela Funcionario
CREATE TABLE Funcionario (
    IdFuncionario INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(200) NOT NULL,
    Turno ENUM('Manhã', 'Tarde', 'Noite') NOT NULL,
    Salario DECIMAL(4,2) NOT NULL,
    IdGerente INT NOT NULL,
    FOREIGN KEY (IdGerente) REFERENCES Gerente(IdGerente) ON DELETE CASCADE
);

-- Tabela Categorias
CREATE TABLE Categorias (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL
);

-- Tabela Produto_Categoria
CREATE TABLE ProdutoCategoria (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Descricao TEXT,
    Preco DECIMAL(4,2) NOT NULL,
    CategoriaId INT NOT NULL,
    FOREIGN KEY (CategoriaId) REFERENCES Categorias(Id) ON DELETE CASCADE
);

-- Tabela Cliente
CREATE TABLE Cliente (
    Cpf VARCHAR(14) PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL
);

-- Tabela Mesa
CREATE TABLE Mesa (
    Numero INT PRIMARY KEY,
    QtdCadeiras INT NOT NULL
);

-- Tabela Pedido
CREATE TABLE Pedido (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Mesa INT NOT NULL,
    Quantidade INT NOT NULL,
    ProdutoId INT NOT NULL,
    ClienteCpf VARCHAR(14) NOT NULL,
    FuncionarioId INT NOT NULL,
    FOREIGN KEY (Mesa) REFERENCES Mesa(Numero) ON DELETE CASCADE,
    FOREIGN KEY (ProdutoId) REFERENCES ProdutoCategoria(Id) ON DELETE CASCADE,
    FOREIGN KEY (ClienteCpf) REFERENCES Cliente(Cpf) ON DELETE CASCADE,
    FOREIGN KEY (FuncionarioId) REFERENCES Funcionario(IdFuncionario) ON DELETE CASCADE
);
