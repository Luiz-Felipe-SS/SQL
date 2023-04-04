drop table prat13_clientes;

create table prat13_clientes(
id_cliente int not null auto_increment,
nome varchar(50) not null,
sobrenome varchar(50),
idade int,
documento varchar(20) not null,
primary key(id_cliente)
);

 insert into prat13_clientes(nome, sobrenome, idade, documento) values
 ("lui", "felipe", 20, "CPF");
 
 drop table prat13_mesa;
 create table prat13_mesa(
 numero_Mesa int not null,
 quant_pessoas int,
 livre_ocupato enum("s", "n") not null,
 primary key(numero_Mesa)
 
 );
 insert into prat13_mesa(numero_Mesa, quant_pessoas) values 
 (1, 5);
 
 
 
 drop table pedido;
 create table pedido(
 id_pedido int not null auto_increment,
 numero_Mesa int , 
 id_cliente int,
 prato varchar(50) not null,
 foreign key(id_cliente) references prat13_clientes(id_cliente) on delete cascade on update restrict,
 foreign key(numero_Mesa) references prat13_mesa(numero_Mesa) on delete cascade on update restrict,
 primary key(id_pedido)
 );
 ;
 
 
 insert into pedido(numero_Mesa , id_cliente, prato) values 
 (
	(select numero_Mesa from prat13_mesa where quant_pessoas = 5), 
	(select id_cliente from prat13_clientes where nome = 'lui'),
    'strogonoff'
);


select * from pedido;