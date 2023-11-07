CREATE DATABASE CARGO;
USE CARGO;

-- Criação da tabela funcionarios
CREATE TABLE funcionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    cargo VARCHAR(255),
    departamento VARCHAR(255)
);

-- Inserção de dados na tabela funcionarios
INSERT INTO funcionarios (id, nome, cargo, departamento) VALUES
(1, 'Nome Funcionario 1', 'Cargo 1', 'Administrativo'),
(2, 'Nome Funcionario 2', 'Cargo 2', 'Vendas'),
(3, 'Nome Funcionario 3', 'Cargo 3', 'Administrativo'),
(4, 'Nome Funcionario 4', 'Cargo 4', 'RH'),
(5, 'Nome Funcionario 5', 'Cargo 5', 'Administrativo');


-- Criação da tabela departamentos
CREATE TABLE departamentos (
    id INT PRIMARY KEY,
    nome_departamento VARCHAR(255)
);

-- Inserção de dados na tabela departamentos
INSERT INTO departamentos (id, nome_departamento) VALUES
(1, 'Administrativo'),
(2, 'Vendas'),
(3, 'RH');

CREATE VIEW vw_funcionarios_departamento AS
SELECT
    nome,
    cargo
FROM
    funcionarios
WHERE
    departamento = 'Administrativo';
    
    SELECT * FROM vw_funcionarios_departamento;

