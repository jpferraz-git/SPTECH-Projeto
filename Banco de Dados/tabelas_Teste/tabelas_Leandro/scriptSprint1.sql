-- CRIANDO O DATABASE E UTILIZANDO
create database projeto;

use projeto;

-- CRIANDO A TABELA PARA ARMAZENAR OS DADOS CAPTADOS EM TEMPO REAL
create table dadoSensor(
idPrateleira int primary key,
sensor char(1),
temperatura float (3,1),
umidade float(3,1),
dtHora datetime);

insert into dadoSensor values
	(1, 'A', 23.0, 18.5,'2024-09-06 14:35:00'),
	(2, 'B', 22.3, 18.3,'2024-09-06 14:35:00'),
    (3, 'C', 24.0, 18.6,'2024-09-06 14:35:00'),
	(4, 'D', 23.7, 18.4,'2024-09-06 14:35:00');
        
select idPrateleira as Prateleira,
	sensor as Sensor,
	temperatura as Temperatura,
    umidade as Umidade,
    dtHora as Horário from dadoSensor;

-- CRIANDO A TABELA DE USUARIOS DO SISTEMA
create table usuarioCadastrado(
idUsuario int primary key auto_increment,
nome varchar(50),
usuario char(15),
email varchar(30),
senha varchar(16),
palavraRecuperacao varchar(10),
dtNascimento date);

insert into usuarioCadastrado (nome, usuario, email, senha, palavraRecuperacao, dtNascimento) values
	('Leandro Robatino', 'lrobatino', 'leandro.robatino@sptech.school', 'batata123', 'doce', '2001-08-26'),
    ('Daniel Sena', 'dsena', 'daniel.sena@sptech.school', 'feijao321', 'arroz', '2005-10-25'),
    ('Bruno Araújo', 'baraujo', 'bruno.araujo@sptech.school', 'mandioca95', 'hamburguer', '2003-02-16');
    
select nome as Nome,
	usuario as Usuário,
    email as Email,
    senha as Senha,
    palavraRecuperacao as Palavra_de_Recuperação,
    dtNascimento as Data_Nascimento from usuarioCadastrado;

-- CRIANDO A TABELA DE ARMAZENAMENTO DOS DADOS DOS SENSORES
create table armazenamentoDados(
idColeta int primary key auto_increment,
prateleira int,
sensor char(1),
temperatura float (3,1),
umidade float (3,1),
dtHora datetime);

insert into armazenamentoDados (prateleira, sensor, temperatura, umidade, dtHora) values
	(1, 'A', 23.0, 18.5,'2024-09-06 14:35:00'),
	(2, 'B', 22.3, 18.3,'2024-09-06 14:35:00'),
    (3, 'C', 24.0, 18.6,'2024-09-06 14:35:00'),
	(4, 'D', 23.7, 18.4,'2024-09-06 14:35:00'),
	(1, 'A', 23.0, 18.5,'2024-09-06 14:35:00'),
	(2, 'B', 22.3, 18.3,'2024-09-06 14:35:00'),
    (3, 'C', 24.0, 18.6,'2024-09-06 14:35:00'),
	(4, 'D', 23.7, 18.4,'2024-09-06 14:35:00');

select prateleira as Prateleira,
	sensor as Sensor,
    temperatura as Temperatura,
    umidade as Umidade,
    dtHora as Data_Hora from armazenamentoDados;
    
select prateleira as Prateleira,
	sensor as Sensor,
    temperatura as Temperatura,
    umidade as Umidade,
    dtHora as Horario from armazenamentoDados order by prateleira;

select * from armazenamentoDados where sensor = 'A';