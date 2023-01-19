CREATE DATABASE produtos;

USE produtos;

CREATE TABLE produtos(
id BIGINT auto_increment,
nome VARCHAR(255),
preco DECIMAL(5,2),
quantidade INT,
marca VARCHAR(255),
PRIMARY KEY(id)
);
INSERT INTO produtos (nome,preco,quantidade,marca)
VALUES("Camiseta",19.90,5,"Lacoste");

INSERT INTO produtos (nome,preco,quantidade,marca)
VALUES("Calca",30.90,2,"Lacoste");

INSERT INTO produtos (nome,preco,quantidade,marca)
VALUES("Meia",15.90,3,"Lacoste");

INSERT INTO produtos (nome,preco,quantidade,marca)
VALUES("Tenis",550.90,6,"Lacoste");

INSERT INTO produtos (nome,preco,quantidade,marca)
VALUES("Bone",10.90,4,"Lacoste");

SELECT * FROM produtos;

SELECT * FROM produtos WHERE preco <500;

SELECT * FROM produtos WHERE preco >500;
