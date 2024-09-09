create database frontcheese;
use frontcheese;

create table usuario (
	id int primary key auto_increment,
    nome varchar(50),
    empresa varchar(80),
    email varchar(80),
    telefone varchar(12),
    senha varchar(30));
    
insert into usuario values 
	(default, 'Bruno Araújo','frontcheese','brunongnl@hotmail.com','11939044363','urubu100'),
    (default, 'Leandro Robatino','Safra','leandro@robatino.com','11111111111','bdincrivel'),
    (default, 'João Pedro','Minsait','joao@pedro.com','40028922','100pre'),
    (default, 'Daniel Sena','Sptech','daniel@sena.com','8712345678','100urubu');
	
    select * from usuario;
	select * from usuario where nome like 'B%';
    select * from usuario where nome like '%n%';
    select telefone from usuario where id = 4;
    alter table usuario add column CEP varchar(10);
    alter table usuario modify column CEP char(9);
    select * from usuario where nome not like 'Bruno Araujo';
    alter table usuario drop column CEP;
    describe usuario;
    
    
create table sensor(
	id_prateleira int primary key auto_increment,
    horario timestamp,
    temperatura float,
    umidade float);
    
    
    insert into sensor values
	(default,now(),28.3,15.6);
    insert into sensor values
	(default,now(),24.3,13.6);
    insert into sensor values
	(default,now(),18.7,28.3);
    insert into sensor values
	(default,now(),39.3,40.7);
    insert into sensor values
	(default,now(),10.7,2.3);
	
    select id_prateleira as NIVEL,horario as HORA,temperatura as TEMPERATURA,umidade as UMIDADE from sensor;
    
    create table estado (
    Empresa varchar(30) primary key,
    condicao varchar(30),
    constraint chkcond check (condicao in('Operando','Oscilando','Crítica')));
    
    insert into estado values
    ('Minsait','Operando'),
    ('frontcheese','Oscilando'),
    ('SPTech','Critica');
    
    select * from estado;
    
    
    
    
    
    