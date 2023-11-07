CREATE DATABASE CLIENTES;
USE CLIENTES;

CREATE TABLE vendedores (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
    vendedor_id INT,
    FOREIGN KEY (vendedor_id) REFERENCES vendedores(id)
);

INSERT INTO vendedores (id, nome, email) VALUES
(1, 'Nome do Vendedor 1', 'vendedor1@example.com'),
(2, 'Nome do Vendedor 2', 'vendedor2@example.com');

INSERT INTO clientes (id, nome, email, vendedor_id) VALUES
(1, 'Nome do Cliente 1', 'cliente1@example.com', 1),
(2, 'Nome do Cliente 2', 'cliente2@example.com', 2);

CREATE VIEW vw_relacionamento_cliente_vendedor AS
SELECT
    c.nome AS nome_cliente,
    c.email AS email_cliente,
    v.nome AS nome_vendedor,
    v.email AS email_vendedor
FROM
    clientes c
JOIN
    vendedores v ON c.vendedor_id = v.id;
    
    SELECT * FROM vw_relacionamento_cliente_vendedor;


