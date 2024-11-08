CREATE DATABASE bdBrasileira;

USE bdBrasileira;


CREATE TABLE tbl_autor (
 
id_autor INT   NOT NULL,
 
nome VARCHAR(100) NOT NULL,

 PRIMARY KEY (id_autor)

);



INSERT INTO tbl_autor

(id_autor,nome) VALUES

(1, 'Carlos D.de Andrade'),

(2, 'Vinícius de Moraes'),

(3, 'Cecília Meirelles'),

(4, 'Manuel Bandeira'),

(5, 'Machado de Assis'),

(6, 'Cora Coralina'),

(7, 'Clarice Lispector');



UPDATE tbl_autor 

SET nome= 'Carlos Drummond de Andrade'
WHERE nome= 'Carlos D.de Andrade';



SELECT *FROM tbl_autor;



CREATE TABLE tbl_editora (
  
id_editora  INT  NOT NULL,
  
nome   VARCHAR(100) NOT NULL,
  
PRIMARY KEY (id_editora)

);



INSERT INTO tbl_editora

(id_editora, nome) VALUES

(1, 'Ática'),

(2, 'Cia das Letras'),

(3, 'Saraiva');



SELECT *FROM tbl_editora;



CREATE TABLE tbl_livros (
  
isbnLivro INT  NOT NULL,
  
nomeLivro VARCHAR(100) NOT NULL,
  
autor     VARCHAR(100) NOT NULL,
  
editora   VARCHAR(100) NOT NULL,
  
genero    VARCHAR(50)  NOT NULL,
  
numero_paginas INT  NOT NULL,
  
PRIMARY KEY (isbnLivro),
  
FOREIGN KEY (editora) REFERENCES tbl_editora(nome),
  
FOREIGN KEY (autor) REFERENCES  tbl_autor(nome)

);



INSERT INTO tbl_livros

(nomeLivro, isbnLivro, autor, editora, genero, numero_paginas) VALUES

('Estórias da casa velha da ponte', 12438739, 'Cora Coralina', 'Ática', 'Romance', 298),

('O tesouro da Casa velha', 63762892, 'Cora Coralina', 'Cia das letras', 'Romance', 172),

('A hora da Estrela', 73682920, 'Clarice Lispector', 'Cia das letras', 'Poesia', 92),

('Meu livro de cordel', 72879012, 'Cora Coralina', 'Saraiva', 'Poesia', 123),

('A descoberta do mundo', 98920212, 'Clarice Lispector', 'Saraiva', 'Romance', 321),

('Ou isto ou aquilo', 73928923, 'Cecília Meirelles', 'Ática', 'Poesia', 122);



SELECT *FROM tbl_livros;



SELECT nomeLivro FROM tbl_livros;



SELECT nomeLivro FROM tbl_livros
WHERE autor LIKE 'Cora Coralina';



SELECT nomeLivro
FROM tbl_livros 

WHERE numero_paginas > 200 AND numero_paginas < 300;



SELECT nomeLivro FROM tbl_livros
WHERE nomeLivro LIKE 'O%';



SELECT nomeLivro FROM tbl_livros 
WHERE genero LIKE 'Romance';