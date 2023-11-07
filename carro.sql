CREATE DATABASE CARRO;
USE CARRO;


CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_do_produto VARCHAR(255) NOT NULL,
    quantidade_em_estoque INT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL
);


INSERT INTO produtos (nome_do_produto, quantidade_em_estoque, preco)
VALUES ('Produto B', 5, 110.00),
       ('Produto A', 10, 130.20),
       ('Produto D', 8, 96.25),
       ('Produto C', 2, 90.25),
       ('Produto E', 3, 140.00);
       
       

CREATE VIEW vw_produtos_caros AS
SELECT * FROM produtos
WHERE preco > 100;


SELECT * FROM vw_produtos_caros;

