drop table pessoas;

/*Comando para a criação de tabelas. Ex: 'create table(...);'*/
create table pessoas (
id int not null auto_increment,
nome varchar(50),
nascimento date,
sexo enum('M','F'),
peso decimal(5,2),
altura decimal(3,2),
nascionalidade varchar(20) default 'Brasil',
primary key(id)
);

/* Comando para demonstrar as informações da tabela. */
insert into pessoas (nome, nascimento, sexo, peso, altura) values 
('luiz', '2000-2-13', 'M', 135.35, 1.90);

/*Comando para demostrar as informações da tabela.*/
select * from pessoas;

/*comando para descrever todos os campos da tabela pessoas */
desc pessoas;

/*Agora vamos alterar a tabela criada anteriormente e adicionar um novo campo chamado de PROFISSÃO, por padrão a adição de uma nova coluna acontece no último campo.*/
alter table pessoas add column profissao varchar(10);

/* um desc para visualizar*/
desc pessoas;

/*depois de criar um novo campo na tabela, vamos deletar ele usando o comando drop column.*/
alter table pessoas drop column profissao;


/* para adicionar uma coluna em uma determinada posição, preciso indicar o nocal usando o comando 'after'*/
alter table pessoas add column profissao varchar(99) after nome ;

/*desc para visualizar*/
desc pessoas;

/*caso você queira colocar o campo na primeira linha use o 'first'*/
alter table pessoas add column codigo int first; 

/*agora vamos usar comandos para modificar os campos usando o comando 'modifh'
aqui modifiquei o tamanho do varchar da coluna 'profissao' para o tamanho de 50*/
alter table pessoas modify column profissao varchar(50);

/*o ruim do 'modify' é que ele não funciona quando voce quer alterar o nome do campo
#para isso precissamos usar o comado 'chage'*/
alter table pessoas change profissao prof varchar(15); 

/*para renomiar o nome da tabela é preciso usar o comando 'rename to'
alter table pessoas rename to humano;*/

/*desc para visualizar*/
desc humano;