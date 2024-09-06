CREATE DATABASE projeto;

USE projeto;

CREATE TABLE cadastro (
id int primary key,
nome varchar(50),
cpf varchar(20),
email varchar(50),
numero varchar(15),
endereço varchar(60),
senha char(8)
);

INSERT INTO cadastro VALUES
(1, 'João Carlos da Silva', '123.456.789-10', 'joaocarlos.silva@emailficticio.com', 1198765-4321, 'Rua das Palmeiras 100, Bairro Copacabana, Rio de Janeiro, RJ', ' Silva2024@');

ALTER TABLE cadastro MODIFY COLUMN endereço varchar(100);
ALTER TABLE cadastro MODIFY COLUMN senha varchar(15);

SELECT * FROM cadastro;

INSERT INTO cadastro VALUES 
(2, 'Maria Fernanda Oliveira', '987.654.321-00', 'mariafernanda.oliveira@example.com', c, 'Av. Atlântica 456, Copacabana, Rio de Janeiro - RJ', '*Maria2024');

UPDATE cadastro SET email = 'joaocarlos.silva@outlook.com'
	WHERE id = 1;
    
UPDATE cadastro SET email = 'mariafernanda.oliveira@gmail.com'
	WHERE id = 2;
    
INSERT INTO cadastro VALUES
(3, 'Pedro Henrique Almeida', '654.321.987-00', ' pedrohenrique.almeida@hotmail.com', 1997654-3210, 'Rua das Palmeiras 789, Botafogo, Rio de Janeiro - RJ', '#Pedro2024');

UPDATE cadastro SET numero =  '(11) 98765-4321'
	WHERE id = 1;
    
    UPDATE cadastro SET numero = '(11) 98765-4321'
		WHERE id = 2;
        
UPDATE cadastro SET numero = '(19) 97654-3210'
	WHERE id = 3;
    
    SELECT * FROM cadastro;
    
ALTER TABLE cadastro RENAME COLUMN nome to NOME;

ALTER TABLE cadastro RENAME COLUMN cpf TO CPF;

ALTER TABLE cadastro RENAME COLUMN email to EMAIL;

ALTER TABLE cadastro RENAME COLUMN numero to NÚMERO;

ALTER TABLE cadastro RENAME COLUMN endereço to ENDEREÇO;

ALTER TABLE cadastro RENAME COLUMN senha to SENHA;

SELECT * FROM cadastro WHERE nome = 'M&';

SELECT CPF FROM cadastro WHERE nome = '%Carlos%';

SELECT * FROM cadastro WHERE email = '%hotmail%';

-- TABELA 2 --

USE projeto;

CREATE TABLE LM35 (
id INT PRIMARY KEY AUTO_INCREMENT,
dia DATE,
horário TIME,
temperatura float
);

INSERT INTO LM35 VALUES 
(default, '2024-12-31', '10:35:04', 13),
(default, '2024-11-29', '17:02:38', 18),
(default, '2024-10-27','11:19:00', 15),
(default, '2024-09-25', '16:44:22', 11);

SELECT * FROM LM35;

SELECT dia FROM LM35 ORDER BY temperatura;

UPDATE LM35 SET temperatura = 14
	WHERE id = 1;
    
SELECT * FROM LM35 ORDER BY dia;

ALTER TABLE LM35 ADD COLUMN umidade varchar(10);

ALTER TABLE LM35 DROP COLUMN umidade;

UPDATE LM35 SET umidade = '70%'
	WHERE id = 1;
    
UPDATE LM35 SET umidade = '81%'
	WHERE id = 2;
    
UPDATE LM35 SET umidade = '63%'
	WHERE id = 3;
    
UPDATE LM35 SET umidade = '79%'
	WHERE id = 4;
    
-- TABELA 3 --

USE projeto;

CREATE TABLE calculo (
id INT PRIMARY KEY AUTO_INCREMENT,
empresa varchar(50),
dtMes varchar(50),
lucro DECIMAL(5,3),
prejuízo DECIMAL(5,3)
);

INSERT INTO calculo VALUES
(default, 'Queijinho', '2024-08-23', 6.700, 4.000),
(default, 'Cheese Minas', '2024-07-21', 10.500, 2.800),
(default, 'GOAT Cheese', '2024-06-19', 13.200, 7.100),
(default, 'MG Queijos', '2024-05-17', 5.900, 1.400);

SELECT * FROM calculo;

DROP TABLE calculo;

SELECT * FROM calculo WHERE empresa LIKE '%s';

SELECT * FROM calculo ORDER BY dtMes;

UPDATE calculo SET empresa = 'MG-Queijos'
	WHERE id = 4;
    
    SELECT * FROM calculo;