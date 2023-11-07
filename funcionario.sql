CREATE DATABASE FUNCIONARIO;
USE FUNCIONARIO;

CREATE TABLE tb_funcionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    cargo VARCHAR(255)
);

CREATE TABLE tb_funcionarios_demitidos (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    cargo VARCHAR(255),
    data_demissao TIMESTAMP
);
INSERT INTO tb_funcionarios (id, nome, cargo)
VALUES (1, 'Nome do Funcionário', 'Cargo do Funcionário');
INSERT INTO tb_funcionarios (id, nome, cargo)
VALUES (2, 'Nome do Funcionário', 'Cargo do Funcionário');

DELIMITER //
CREATE TRIGGER after_delete_funcionario
AFTER DELETE ON tb_funcionarios
FOR EACH ROW
BEGIN
    INSERT INTO tb_funcionarios_demitidos (id, nome, cargo, data_demissao)
    VALUES (OLD.id, OLD.nome, OLD.cargo, NOW());
END;
//
DELIMITER ;

SELECT * FROM tb_funcionarios_demitidos;
