CREATE DATABASE hospitalinfantil;

--TABELA CRIANÇA
CREATE TABLE crianca(
id INT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
peso FLOAT NOT NULL,
altura FLOAT NOT NULL,
datanasc DATE NOT NULL
);

--TABELA MÃE
CREATE TABLE mae(
id INT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
datanasc DATE NOT NULL,
endereco VARCHAR(100) NOT NULL,
telefone VARCHAR(15) NOT NULL
);

--TABELA NASCIMENTO
CREATE TABLE nascimento(
id INT PRIMARY KEY,
medico VARCHAR(100),
idcrianca INT NOT NULL,
idmae INT NOT NULL
);

--TABELA MÉDICO
CREATE TABLE medico(
id INT PRIMARY KEY,
nome VARCHAR(100),
especialidade VARCHAR(50),
crm VARCHAR(15)
);

--INSERINDO DADOS
INSERT INTO medico(id,nome,especialidade,crm)
VALUES(11245, "Juliana Alves Albuquerque", "Obstetrícia", "SP123584"),
(11246,"Pedro da Silva Santos", "Nutrologia Pediátrica","SP658985"),
(11546,"Vinicius Lima de Oliveira", "Neonatologia", "SP458755"),
(11468,"Bruna Paes Chavez", "Obstetrícia", "SP246585");

--APAGANDO ESPECIALIDADE DE NEONATOLOGIA
DELETE FROM medico WHERE especialidade = "Neonatologia";

--APAGANDO TODOS OS DADOS
DELETE FROM medico;

--APAGANDO DE UMA EM UMA AS TABELAS
DROP TABLE crianca;
DROP TABLE mae;
DROP TABLE nascimento;
DROP TABLE medico;

--APAGANDO O BANCO DE DADOS
DROP DATABASE hospitalinfantil;