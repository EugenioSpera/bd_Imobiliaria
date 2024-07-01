
CREATE DATABASE imobiliaria
USE imobiliaria;

CREATE TABLE  clientes (
  idCliente int AUTO_INCREMENT NOT NULL,
  nome VARCHAR(50) NOT NULL,
  email varchar(100) NOT NULL,
  telefone varchar(20) DEFAULT NULL,
  endereco varchar(255) DEFAULT NULL,
  CONSTRAINT PRIMARY KEY(idCliente)
); 


CREATE TABLE propriedades (
  idPropriedades int NOT NULL AUTO_INCREMENT,
  idCliente INT NOT NULL,
  endereco varchar(255) NOT NULL,
  tipo varchar(100) NOT NULL,
  preco decimal(10,2) NOT NULL,
  descricao text DEFAULT NULL,
  imagem varchar(255) DEFAULT NULL,
  CONSTRAINT PRIMARY KEY(idPropriedades),
  CONSTRAINT fk_propriedades_clientes FOREIGN KEY (idCliente)
REFERENCES clientes(idCliente)
); clientes

ALTER TABLE propriedades
ADD tipoImovel VARCHAR(30) NOT NULL;

select * from propriedades

select * from clientes