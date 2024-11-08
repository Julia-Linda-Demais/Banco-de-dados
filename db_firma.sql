CREATE DATABASE db_firma;
USE db_firma;
CREATE TABLE tbl_cliente(
  id_cliente          int           NOT NULL,
  primeiro_nome       varchar(100)  NOT NULL,
  ultimo_nome         varchar(50)   NOT NULL,
  cpf                 varchar(15)   NOT NULL,
  rg                  varchar(12)   NOT NULL,
  primary key(id_cliente)
);

INSERT INTO tbl_cliente 
(id_cliente,primeiro_nome,ultimo_nome,cpf,rg)VALUES
(3987, 'Mateus', 'Silva', '345.678.907-22',  '12.345.678-9'),
(1222, 'Agatha', 'Gomes', '564.876.908-77',  '12.233.457-5'),
(8740, 'Isabella', 'Oliveira', '409.234.678-55', '66.890.456-3'),
(5768, 'Carla', 'Pereira', '452.456.754-23', '45.789.123-7'),
(6741, 'Bernardo', 'Moreira', '774.234.755-88', '15.235.765-9'),
(5673, 'Cabral', 'Castro', '789.098.021-90',  '45.906.253-5'),
(1234, 'Sandra', 'Marçal', '567.456.908-65', '56.345.987-3'),
(8776, 'Vanderlei', 'Lourenço', '598.234.095-34', '23.455.531-5'),
(4524, 'Golias', 'Amorim', '346.098.343-95', '65.345.090-3'),
(3255, 'Julio', 'Santos', '765.345.533-87', '40.028.922-1');


SELECT *FROM tbl_cliente;

CREATE TABLE tbl_produto(
    id_produto int         NOT NULL,
	preco      varchar(8)  NOT NULL,
	quantidade  varchar(50) NOT NULL,
	nome       varchar(100) NOT NULL,
	primary key(id_produto)
);
     INSERT INTO tbl_produto
(id_produto,preco,quantidade,nome)VALUES
(2346, 'R$20,00', '5 litros', 'cloro'),
(3789, 'R$05,00', '1 unidade', 'detergente'),
(5798, 'R$18,00', '5 unidades', 'esponja'),
(5983, 'R$17,50', '200 ml', 'limpa pisos'),
(1290, 'R$20,00', '1 litro', 'amaciante'),
(2875, 'R$24,99', '2 litros', 'água sanitária'),
(7902, 'R$19,90', '1,5 kg', 'sabão em pó'),
(7855, 'R$37,99', '2 litros', 'sabão líquido'),
(6902, 'R$02,99', '1 unidade', 'palha de aço');

SELECT *FROM tbl_produto

CREATE TABLE tbl_pedido (
    numero INT NOT NULL,
    id_cliente INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade VARCHAR(50) NOT NULL,
    PRIMARY KEY (numero),
    FOREIGN KEY (id_produto) REFERENCES tbl_produto(id_produto),
    FOREIGN KEY (id_cliente) REFERENCES tbl_cliente(id_cliente)
);


 INSERT INTO tbl_pedido
 (numero, id_cliente, id_produto, quantidade)VALUES
 (4789, 3987, 2346, '3 unid'),
 (8765, 1222, 3789, '4 unid'),
 (6533, 8740, 5798, '9 unid'),
 (8875, 5768, 5983, '6 unid'),
 (5313, 6741, 1290, '10 unid'),
 (1236,5673, 2875, '7 unid'),
 (3467,1234, 7902, '6 unid'),
 (6789,8776, 7855, '9 unid'),
 (4316, 4524, 6902, '8 unid'),
 (4567, 3255, 3789, '2 unid'),
 (1346, 1222, 5983, '5 unid');

 SELECT *FROM tbl_pedido

 CREATE TABLE tbl_endereco (
    id_endereco INT NOT NULL,
	cep  INT NOT NULL,
	nome varchar(100) NOT NULL,
	numero INT NOT NULL,
	complemento varchar(50) NOT NULL,
	PRIMARY KEY (id_endereco)
 );

 INSERT INTO tbl_endereco
 (id_endereco, cep, nome, numero, complemento)VALUES
 (12345, 08139-025, 'Rua Igarapé Água azul', 510, '22b'),
 (32891, 12345-098, 'Rua Milgare dos Peixes', 765, '78d'),
 (47280, 12398-654, 'Rua das Laranjeiras doces', 9670, '14b'),
 (09876, 32145-907, 'Rua Nascer do Sol', 0987, '12a'),
 (23157, 35264-945, 'Rua Te amo mãe', 0946, '34d');

 SELECT *FROM tbl_endereco

CREATE TABLE tbl_telefone (
 id_telefone INT  NOT NULL,
 país     INT  NOT NULL,
 ddd     INT  NOT NULL,
 número      INT  NOT NULL,
 PRIMARY KEY (id_telefone)
);

INSERT INTO tbl_telefone
(id_telefone, país, ddd, número)VALUES
(1234, 55, 11, 123456789),
(5678, 55, 12, 098765432),
(6789, 123, 13, 432567805),
(1524, 55, 11, 362728280),
(1532, 55, 13, 94625246);

SELECT *FROM tbl_telefone