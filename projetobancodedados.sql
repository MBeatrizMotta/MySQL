CREATE DATABASE pizzariatexxe;

USE db_pizzariatexxe;

CREATE TABLE categoria(
	id BIGINT AUTO_INCREMENT,
	nome_categoria VARCHAR(255),
	tamanho CHAR,
	quantidade INT,


	PRIMARY KEY(id)
);
CREATE TABLE tb_pizza(
	id BIGINT AUTO_INCREMENT,
	sabor VARCHAR(255),
	valor INT,
	acompanhamento VARCHAR(255),
	borda_recheada boolean,
	categoria_id BIGINT,
    
	PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
    
    );
    
INSERT INTO tb_categoria(nome_categoria,tamanho)
VALUES("Salgada","B");

INSERT INTO tb_categoria(nome_categoria,tamanho)
VALUES("Salgada","M");

INSERT INTO tb_categoria(nome_categoria,tamanho)
VALUES("Salgada","G");

INSERT INTO tb_categoria(nome_categoria,tamanho)
VALUES("Doce","B");

INSERT INTO tb_categoria(nome_categoria,tamanho)
VALUES("Doce","M");

INSERT INTO tb_categoria(nome_categoria,tamanho)
VALUES("Doce","G");

INSERT INTO tb_categoria(nome_categoria,tamanho)
VALUES("Vegetariana","B");

INSERT INTO tb_categoria(nome_categoria,tamanho)
VALUES("Vegetariana","M");

INSERT INTO tb_categoria(nome_categoria,tamanho)
VALUES("Vegetariana","G");

SELECT * FROM tb_categoria;

INSERT INTO tb_pizza(sabor, valor, acompanhamento, borda_recheada, categoria_id)
VALUES("Mussarela",70,"Refrigerante de Guaraná",false,1);

INSERT INTO tb_pizza(sabor, valor, acompanhamento, borda_recheada, categoria_id)
VALUES("Calabresa",50,"Suco",true,2);

INSERT INTO tb_pizza(sabor, valor, acompanhamento, borda_recheada, categoria_id)
VALUES("Toscana",45,"Vinho",true,3);

INSERT INTO tb_pizza(sabor, valor, acompanhamento, borda_recheada, categoria_id)
VALUES("Gorgonzola",85,"Agua com Gás",false,3);

INSERT INTO tb_pizza(sabor, valor, acompanhamento, borda_recheada, categoria_id)
VALUES("MM's",50,"Refrigerante de Soda",true,4);

INSERT INTO tb_pizza(sabor, valor, acompanhamento, borda_recheada, categoria_id)
VALUES("Prestígio",70,"Coca Cola 500",true,5);

INSERT INTO tb_pizza(sabor, valor, acompanhamento, borda_recheada, categoria_id)
VALUES("Romeu e Julieta",75,"Coca Cola 2L",true,6);

INSERT INTO tb_pizza(sabor, valor, acompanhamento, borda_recheada, categoria_id)
VALUES("Abobrinha",50,"Suco",true,7);

INSERT INTO tb_pizza(sabor, valor, acompanhamento, borda_recheada, categoria_id)
VALUES("Brócolis com Queijo",80,"Fanta Uva",true,8);

INSERT INTO tb_pizza(sabor, valor, acompanhamento, borda_recheada, categoria_id)
VALUES("Escarola",80,"Vinho",true,9);

SELECT * FROM tb_pizza;

SELECT * FROM tb_pizza WHERE valor > 45;

SELECT * FROM tb_pizza WHERE valor > 50 AND valor < 100;

SELECT * FROM tb_pizza
WHERE sabor LIKE "%M%";


SELECT * FROM tb_pizza
INNER JOIN tb_categoria
ON tb_categoria.id = tb_pizza.categoria_id
WHERE tb_categoria.id= 3;




