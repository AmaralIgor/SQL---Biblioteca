use db_biblioteca;

SELECT AVG(ano_publicacao) from tb_livros;
select id_livro, titulo from tb_livros where ano_publicacao > 2014.0000;
select id_autor, nome from tb_autores;


select nome from tb_autores
where id_autor in (select id_livro from tb_livros
			where ano_publicacao > (select avg(ano_publicacao) from tb_livros));
            
            
select nome from tb_membros where id_membros in (select id_membrosfk from tb_emprestimos
										         group by id_membrosfk having count(id_membrosfk) > 1);
                                                 
                                                 
select titulo from tb_livros where id_livro in (select id_livrosfk from tb_emprestimos
												group by id_livrosfk having count(id_livrosfk));
                                                
select * from tb_emprestimos;
select titulo from tb_livros where id_livro not in (select id_livrosfk from tb_emprestimos);