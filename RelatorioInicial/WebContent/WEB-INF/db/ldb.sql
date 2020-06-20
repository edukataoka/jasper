CREATE DATABASE lbd

use lbd

CREATE TABLE cliente(
codigo          INT  NOT NULL PRIMARY KEY,
nome            VARCHAR(100),
endereco        VARCHAR(150),
numero_porta,    INT,
telefone        VARCHAR(11),
data_nascimento DATE
)

CREATE TABLE fornecedores(
codigo    INT NOT NULL PRIMARY KEY,
nome      VARCHAR(100),
atividade VARCHAR(100),
telefone  VARCHAR(11)
)

CREATE TABLE produto(
codigo             INT NOT NULL PRIMARY KEY,
nome               VARCHAR(100),
valor_unitario     DECIMAL(7,2),
quantidade_estoque INT,
descricao          VARCHAR(150),
codigo_fornecedor  INT
FOREIGN KEY(codigo_fornecedor) REFERENCES fornecedores(codigo)
)

CREATE TABLE pedido(
cod_pedido INT,
cod_cliente INT,
cod_produto INT,
quantidade INT,
previsao_entrega DATE
PRIMARY KEY(cod_pedido,cod_cliente,cod_produto)
FOREIGN KEY(cod_cliente) REFERENCES cliente(codigo),
FOREIGN KEY(cod_produto) REFERENCES produto(codigo)
)

I



























 