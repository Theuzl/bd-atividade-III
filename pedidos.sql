CREATE DATABASE PEDIDOS;
USE PEDIDOS;


CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_nome VARCHAR(255) NOT NULL,
    status VARCHAR(50) NOT NULL,
    data_entrega DATE
);


INSERT INTO pedidos (cliente_nome, status, data_entrega)
VALUES ('Cliente B', 'Pendente', NULL),
       ('Cliente A', 'Entregue', '2023-05-13'),
       ('Cliente D', 'Pendente', NULL),
       ('Cliente C', 'Cancelado', NULL),
       ('Cliente E', 'Pendente', NULL);
       


CREATE VIEW vw_pedidos_pendentes AS
SELECT * FROM pedidos
WHERE status = 'Pendente' AND data_entrega IS NULL;


SELECT * FROM vw_pedidos_pendentes;


