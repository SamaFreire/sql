-- Criando o banco de dados
CREATE DATABASE anafit;

--Criando priemira tabela
CREATE TABLE cliente(
cpf BIGINT  PRIMARY KEY,
primeironome VARCHAR(50) NOT NULL,
sobrenome VARCHAR (50) NOT NULL,
datanasc DATE NOT NULL,
peso DECIMAL(5,2),
altura FLOAT,
whatsapp VARCHAR (15) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
rua VARCHAR(100)NOT NULL,
numero INT(6) NOT NULL,
complemento VARCHAR(100),
cep VARCHAR(8) NOT NULL
);

--INSERINDO DADOS NA TABELA DE CLIENTES
INSERT INTO cliente(cpf,primeironome,sobrenome,datanasc,peso,altura,whatsapp,email,rua,numero,complemento,cep)
VALUES(12345678910,"Ana Claudia","Cunha", "1989-09-17", 63.50,1.73,"+5511989898988","ana.cscunha1@senacsp.edu.br","Rua Dr Antônio Bento", 393, "","04750000");


--Crie a tabela treino
CREATE TABLE treino(
diasdasemana DATE NOT NULL,
horario TIME NOT NULL,
tipo VARCHAR(50) NOT NULL
);

--INSERINDO DOIS DADOS AO MESMO TEMPO NA TABELA DE TREINO
INSERT INTO treino(diasdasemana,horario,tipo)
VALUES("2025-03-12","08:00:00","Musculação"),
("2025.03.13", "18:00:00","Corrida");


--Alterar registros de uma linha
UPDATE treino 
SET diasdasemana = "2025-03-14"
WHERE tipo = "Musculação" AND diasdasemana = "2025-03-12";


-- Alterar registro em duas linhas ao mesmo tempo
UPDATE treino
SET horario = "15:00:00"
WHERE horario IN ("08:00:00", "18:00:00");



--Deletando um dado/registro específico na tabela
DELETE FROM treino WHERE tipo = "Corrida";

--Deletando TODOS os registros da tabela
DELETE FROM treino;

--DELETAR UMA TABELA 
DROP TABLE treino;

DROP TABLE cliente;

--DELETANDO UM BANCO DE DADOS
DROP DATABASE anafit;

