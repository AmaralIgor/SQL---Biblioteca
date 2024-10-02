create database db_biblioteca;

use db_biblioteca;

create table tb_autores(
id_autor int(10) not null,
nome varchar(100) not null,
data_nascimento date not null,
primary key(id_autor)
);

create table tb_livros(
id_livro int(10) not null,
titulo varchar(100) not null,
ano_publicacao int(10) not null,
primary key(id_livro),
id_autorfk int(10) not null,
foreign key (id_autorfk) references tb_autores(id_autor)
);

create table tb_membros(
id_membros int(10) not null,
primary key(id_membros),
nome varchar(100) not null,
data_adesao date not null
);

create table tb_emprestimos(
id_emprestimo int(10) not null,
primary key(id_emprestimo),
id_membrosfk int(10) not null,
foreign key (id_membrosfk) references tb_membros(id_membros),
id_livrosfk int(10) not null,
foreign key (id_livrosfk) references tb_livros(id_livro),
data_emprestimo date not null,
data_devolucao date not null
);