use aulassql;

create table prat14Professores(
id int not null primary key auto_increment,
nome varchar(25),
sobrenome varchar(35),
cargo varchar(30),
documento enum("RG", "CPF", "PASSAPORTE"),
diaHoje datetime default now()
);

/*comando para sulucionar problemas na Query UPDATE do sql!!!!!!!*/
SET SQL_SAFE_UPDATES = 0;

insert into prat14Professores(nome, sobrenome, cargo, documento) values
("Maria", "Álvares", "Professora", "CPF"),
("Ana", "Nunes", "Professora", "RG"),
("António", "Álvares", "Professor", "CPF"),
("Joaquim", "Sampaio", "Vice-diretor", "CPF"),
("Miguel", "Braga", "Auxiliar de serviços gerais", "PASSAPORTE"),
("Alice", "da Veiga", "Professor", "RG"),
("Manuel", "Castro", "DIRETOR", "PASSAPORTE");

alter table prat14Professores rename to prat14Escola;

select * from prat14Escola;

UPDATE prat14Escola SET sobrenome = 'Nunes' WHERE nome = 'Ana';
