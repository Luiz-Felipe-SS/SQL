create database trabalho_ado
default character set utf8
default collate utf8_general_ci;


use trabalho_ado;

create table PET(
id_pet int not null auto_increment,
nome varchar(100),
idade int,
raça varchar(25),
primary key(id_pet)
);

create table registro_ponto(
id_registro int not null auto_increment,
data datetime,
nome_dofuncionario varchar(100),
horario_entrada time,
horaio_saida_almoco time,
horario_entrada_almoco time,
horario_saida_fim_expediente time,
primary key(id_registro)
);

create table refrigerantes(
id_refrigerante int not null auto_increment,
refrigerante enum("coca","pepsi","fanta"),
volume_L double,
quantidade integer,
data_de_registro datetime,
primary key(id_refrigerante)
);

create table sistema_Empresa(
id_sistema int not null auto_increment,
nome varchar(100) default "Não consta" not null,
quantidade float not null,
vendedor_autorizado varchar(100) not null,
tipo_medida enum("l","g","kg"),
data_registro datetime default now(),
data_autualização datetime default now,
primary key(id_sistema)
);