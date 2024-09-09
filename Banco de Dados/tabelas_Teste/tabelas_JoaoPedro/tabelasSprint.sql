create database FrontCheese;

use FrontCheese;

create table sensores(
dados_Sensores int primary key auto_increment,
id_prateleira int,
temperatura_RM35 float,
umidade_DHT11 float,
temperatura_DHT11 float,
data_Sensor datetime
);

insert into sensores (temperatura_RM35, umidade_DHT11, temperatura_DHT11, data_Sensor) values 
(25.44,1, 18.00, 25.44, '2024-09-07 11:11:23'),
(25.00,2,17.00, 25.00, '2024-09-07 12:35:55'),
(26.33,3, 16.00, 26.33, '2024-09-07 13:12:23'),
(24.22,4, 17.00, 24.22, '2024-09-07 14:56:55'),
(23.14,5, 18.00, 23.14, '2024-09-07 15:32:23'),
(28.10,6, 18.00, 28.10, '2024-09-07 16:41:51');


alter table sensores modify column id_prateleira float;

update sensores set umidade_DHT11 = 15.50 where dados_Sensores = 2;


 
select * from sensores;


create table cadastro(
id_Usuario int primary key auto_increment,
nome varchar (100),
senha varchar (100),
telefone int (12),
empresa varchar (30)
);

insert into cadastro values 
(default, 'claudio', '5g55',1111111111,'sadia'),
(default, 'frizza', 'aaaaa', 123123, 'sptech'),
(default, 'asd', 'asd', 144, 'asd');



create table verificacao(
legislacao_EPAMIG float,
media_Dados float
);

