CREATE DATABASE ESTOQUE;
USE ESTOQUE;


CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_do_produto VARCHAR(255) NOT NULL,
    quantidade_em_estoque INT NOT NULL
);


INSERT INTO produtos (nome_do_produto, quantidade_em_estoque)
VALUES ('Produto A', 3),
       ('Produto B', 7),
       ('Produto C', 2),
       ('Produto D', 8),
       ('Produto E', 1);



CREATE VIEW vw_estoque_insuficiente
AS
SELECT * FROM produtos
WHERE quantidade_em_estoque < 5;


SELECT * FROM vw_estoque_insuficiente;

