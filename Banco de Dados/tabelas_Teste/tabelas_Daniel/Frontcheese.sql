create database Frontcheese;
use frontcheese;

create table prateleira(
	id_nivel int primary key,
    horario timestamp,
    temperatura float,
    umidade float);
    insert into prateleira values
    (1,now(),18.32,36.43);
    insert into prateleira values
    (2,now(),19.00,18.43);
    insert into prateleira values
    (3,now(),32.54,54.43);
    insert into prateleira values
    (4,now(),27.54,45.43);
    select * from prateleira;
    create table prateleira2(
	id_nivel int primary key,
    horario timestamp,
    temperatura float,
    umidade float);    
    create table prateleira3(
	id_nivel int primary key,
    horario timestamp,
    temperatura float,
    umidade float);
    create table prateleira4(
	id_nivel int primary key,
    horario timestamp,
    temperatura float,
    umidade float);
    create table prateleira5(
	id_nivel int primary key,
    horario timestamp,
    temperatura float,
    umidade float);
    create table prateleira6(
	id_nivel int primary key,
    horario timestamp,
    temperatura float,
    umidade float);
    create table prateleira7(
	id_nivel int primary key,
    horario timestamp,
    temperatura float,
    umidade float);
    create table prateleira8(
	id_nivel int primary key,
    horario timestamp,
    temperatura float,
    umidade float);
    create table prateleira9(
	id_nivel int primary key,
    horario timestamp,
    temperatura float,
    umidade float);
    create table prateleira10(
	id_nivel int primary key,
    horario timestamp,
    temperatura float,
    umidade float);
    create table prateleira11(
	id_nivel int primary key,
    horario timestamp,
    temperatura float,
    umidade float);
    create table prateleira12(
	id_nivel int primary key,
    horario timestamp,
    temperatura float,
    umidade float);
    create table prateleira13(
	id_nivel int primary key,
    horario timestamp,
    temperatura float,
    umidade float);
    create table prateleira14(
	id_nivel int primary key,
    horario timestamp,
    temperatura float,
    umidade float);
	create table prateleira15(
	id_nivel int primary key,
    horario timestamp,
    temperatura float,
    umidade float);

	alter table prateleira rename column id_nivel to id_prateleira;
    alter table prateleira2 rename column id_nivel to id_prateleira;
    alter table prateleira3 rename column id_nivel to id_prateleira;
    alter table prateleira4 rename column id_nivel to id_prateleira;
    alter table prateleira5 rename column id_nivel to id_prateleira;
    alter table prateleira6 rename column id_nivel to id_prateleira;
    alter table prateleira7 rename column id_nivel to id_prateleira;
    alter table prateleira8 rename column id_nivel to id_prateleira;
    alter table prateleira9 rename column id_nivel to id_prateleira;
    alter table prateleira10 rename column id_nivel to id_prateleira;
    alter table prateleira11 rename column id_nivel to id_prateleira;
    alter table prateleira12 rename column id_nivel to id_prateleira;
    alter table prateleira13 rename column id_nivel to id_prateleira;
    alter table prateleira14 rename column id_nivel to id_prateleira;
    alter table prateleira15 rename column id_nivel to id_prateleira;
    
    describe prateleira;
    
    create table Cadastro(
    id_cliente int primary key auto_increment,
    nome_cliente varchar(80),
    nome_org varchar(50),
    CNPJ char(14),
    email varchar(150),
	senha varchar(20),
	CEP_org char(8)
    );
    
    insert into Cadastro values
    (default, 'Francisco Camargo', 'Queijaria do Chico','35.346.873/0001-35', 'chicoqueijosesabores@gmail.com', '#Gf67723', '35930-403' ),
    (default, 'Rosangela Almeida', 'Queijos da Rose', '01.428.867/0001-05', 'rosangelaquei23@gmail.com', '#Gf83763', '11535-360'),
    (default, 'William Gomes', 'CheeseGomes', '35.528.244/0001-26', 'cheesegomes77@gmail.com', '#Gf98379', '44061-270');
    
    alter table Cadastro modify column CNPJ char(18);
    alter table Cadastro modify column Cep_org char(9);
    
    select * from Cadastro;
    
    use frontcheese;
    create table Informações(
	id_prateleira int primary key,
    temperatura_minima float,
    temperatura_maxima float,
    umidade_minima float,
    umidade_maxima float,
    tempo_minimo_maturacao int,
    tempo_maximo_maturacao int
    );
    
    describe Informações;
    
    insert into Informações values
    (1, 12, 20, 12, 15, 10, 22),
    (2, 15, 22, 15, 18, 15, 20),
    (3, 18, 20, 18,20, 15,20);
    
    select * from informações;
    
    
    
	
    
    

