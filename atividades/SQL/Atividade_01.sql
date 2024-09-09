USE atividade_01_sql;

SELECT * FROM tb_gerente;

SELECT * FROM tb_departamento;

SELECT * FROM tb_empregado;

SHOW CREATE TABLE tb_empregado;
SELECT COUNT(*) FROM tb_empregado; 

INSERT INTO tb_empregado (nome, cargo, salario, data_admissao, id_gerente, id_departamento) VALUES
('Lucas Martins', 'Especialista em Segurança da Informação', 9200.00, '2020-04-12', 2, 3),
('Tatiana Rocha', 'Analista de Projetos', 4800.00, '2021-08-15', 2, 1),
('João Pedro Reis', 'Desenvolvedor Front-end', 5100.00, '2022-02-28', 2, 3),
('Marcela Lima', 'Gerente de Vendas', 9400.00, '2019-11-23', 5, 5),
('Daniela Sousa', 'Analista de Marketing', 5300.00, '2021-05-10', 4, 3),
('Leandro Farias', 'Coordenador de TI', 9500.00, '2022-03-22', 2, 3),
('Gabriela Costa', 'Assistente de RH', 3500.00, '2020-07-09', 1, 1),
('Renan Ribeiro', 'Engenheiro de Software', 8200.00, '2021-04-14', 2, 1),
('Viviane Santos', 'Especialista em Redes', 7200.00, '2020-09-18', 1, 2),
('Fernando Oliveira', 'Gerente de TI', 10200.00, '2022-05-05', 2, 3),
('Marina Ferreira', 'Analista Financeiro Sênior', 5500.00, '2021-02-19', 5, 4),
('Lucas Barbosa', 'Engenheiro de Dados', 11000.00, '2020-08-04', 3, 2),
('Patrícia Cunha', 'Coordenadora de Marketing', 8700.00, '2021-12-14', 4, 3),
('Anderson Mendes', 'Desenvolvedor Back-end', 5900.00, '2020-10-28', 2, 3),
('Flávia Araújo', 'Analista de Vendas', 4500.00, '2021-11-07', 5, 5),
('Leonardo Pereira', 'Desenvolvedor Python', 5500.00, '2019-01-13', 2, 3),
('Fernanda Gomes', 'Especialista em Segurança', 9400.00, '2020-11-29', 2, 1),
('Rafael Santos', 'Coordenador de Infraestrutura', 9000.00, '2022-02-15', 2, 2),
('Amanda Souza', 'Gerente de RH', 8900.00, '2021-05-31', 1, 1),
('Bruno Costa', 'Analista de Suporte', 3900.00, '2019-03-24', 1, 2),
('Camila Menezes', 'Engenheira de Software', 8700.00, '2020-07-13', 2, 1),
('Thiago Almeida', 'Desenvolvedor Mobile', 5100.00, '2021-08-18', 2, 3),
('Larissa Rodrigues', 'Analista Financeiro', 4300.00, '2019-09-05', 5, 4),
('Rodrigo Carvalho', 'Especialista em Projetos', 7500.00, '2021-10-30', 2, 1),
('Luciana Martins', 'Assistente de Marketing', 3500.00, '2020-12-25', 4, 3),
('Marcos Soares', 'Coordenador de Vendas', 8800.00, '2021-03-20', 5, 5),
('Elaine Sousa', 'Engenheira de Qualidade', 8400.00, '2022-01-09', 2, 2),
('Vinícius Lima', 'Gerente de TI', 10100.00, '2020-11-14', 2, 3),
('Carolina Silva', 'Analista de RH', 4200.00, '2020-04-27', 1, 1),
('Jorge Faria', 'Especialista em Infraestrutura', 7800.00, '2022-05-12', 1, 2);
INSERT INTO tb_empregado (nome, cargo, salario, data_admissao, id_gerente, id_departamento) VALUES
('Lucas Martins', 'Especialista em Segurança da Informação', 9200.00, '2020-04-12', 2, 3),
('Tatiana Rocha', 'Analista de Projetos', 4800.00, '2021-08-15', 2, 1),
('João Pedro Reis', 'Desenvolvedor Front-end', 5100.00, '2022-02-28', 2, 3),
('Marcela Lima', 'Gerente de Vendas', 9400.00, '2019-11-23', 5, 5),
('Daniela Sousa', 'Analista de Marketing', 5300.00, '2021-05-10', 4, 3),
('Leandro Farias', 'Coordenador de TI', 9500.00, '2022-03-22', 2, 3),
('Gabriela Costa', 'Assistente de RH', 3500.00, '2020-07-09', 1, 1),
('Renan Ribeiro', 'Engenheiro de Software', 8200.00, '2021-04-14', 2, 1),
('Viviane Santos', 'Especialista em Redes', 7200.00, '2020-09-18', 1, 2),
('Fernando Oliveira', 'Gerente de TI', 10200.00, '2022-05-05', 2, 3),
('Marina Ferreira', 'Analista Financeiro Sênior', 5500.00, '2021-02-19', 5, 4),
('Lucas Barbosa', 'Engenheiro de Dados', 11000.00, '2020-08-04', 3, 2),
('Patrícia Cunha', 'Coordenadora de Marketing', 8700.00, '2021-12-14', 4, 3),
('Anderson Mendes', 'Desenvolvedor Back-end', 5900.00, '2020-10-28', 2, 3),
('Flávia Araújo', 'Analista de Vendas', 4500.00, '2021-11-07', 5, 5),
('Leonardo Pereira', 'Desenvolvedor Python', 5500.00, '2019-01-13', 2, 3),
('Fernanda Gomes', 'Especialista em Segurança', 9400.00, '2020-11-29', 2, 1),
('Rafael Santos', 'Coordenador de Infraestrutura', 9000.00, '2022-02-15', 2, 2),
('Amanda Souza', 'Gerente de RH', 8900.00, '2021-05-31', 1, 1),
('Bruno Costa', 'Analista de Suporte', 3900.00, '2019-03-24', 1, 2),
('Camila Menezes', 'Engenheira de Software', 8700.00, '2020-07-13', 2, 1),
('Thiago Almeida', 'Desenvolvedor Mobile', 5100.00, '2021-08-18', 2, 3),
('Larissa Rodrigues', 'Analista Financeiro', 4300.00, '2019-09-05', 5, 4),
('Rodrigo Carvalho', 'Especialista em Projetos', 7500.00, '2021-10-30', 2, 1),
('Luciana Martins', 'Assistente de Marketing', 3500.00, '2020-12-25', 4, 3),
('Marcos Soares', 'Coordenador de Vendas', 8800.00, '2021-03-20', 5, 5),
('Elaine Sousa', 'Engenheira de Qualidade', 8400.00, '2022-01-09', 2, 2),
('Vinícius Lima', 'Gerente de TI', 10100.00, '2020-11-14', 2, 3),
('Carolina Silva', 'Analista de RH', 4200.00, '2020-04-27', 1, 1),
('Jorge Faria', 'Especialista em Infraestrutura', 7800.00, '2022-05-12', 1, 2);
INSERT INTO tb_empregado (nome, cargo, salario, data_admissao, id_gerente, id_departamento) VALUES
('Felipe Souza', 'Analista de Suporte', 4200.00, '2020-01-15', 1, 2),
('Carla Fernandes', 'Gerente de Operações', 9900.00, '2021-09-12', 5, 5),
('Renato Gomes', 'Desenvolvedor Full-Stack', 7700.00, '2022-04-15', 2, 3),
('Júlia Pereira', 'Especialista em Projetos', 7800.00, '2020-03-11', 2, 1),
('Victor Ferreira', 'Engenheiro de Software', 9300.00, '2021-07-21', 2, 1),
('Luciana Alves', 'Analista de Marketing', 5000.00, '2019-11-05', 4, 3),
('Bruno Azevedo', 'Engenheiro de Dados', 11200.00, '2020-05-17', 3, 2),
('Paula Lima', 'Coordenadora de Vendas', 8500.00, '2021-02-11', 5, 5),
('Daniel Cunha', 'Analista de Redes', 5300.00, '2020-09-19', 1, 2),
('Juliana Rocha', 'Especialista em Segurança', 9200.00, '2022-01-05', 2, 1),
('Ricardo Oliveira', 'Gerente de TI', 10500.00, '2020-08-28', 2, 3),
('Mariana Ribeiro', 'Analista de RH', 3900.00, '2019-05-10', 1, 1),
('Thiago Martins', 'Desenvolvedor Mobile', 5100.00, '2021-04-04', 2, 3),
('Camila Costa', 'Engenheira de Software', 8700.00, '2020-11-22', 2, 1),
('Bruno Rodrigues', 'Coordenador de TI', 9500.00, '2021-05-08', 2, 3),
('Fernanda Alves', 'Assistente Financeiro', 3400.00, '2019-09-03', 5, 4),
('Leonardo Souza', 'Especialista em Redes', 7300.00, '2021-07-14', 1, 2),
('Ana Beatriz Santos', 'Gerente de RH', 9200.00, '2020-10-10', 1, 1),
('Roberto Nogueira', 'Engenheiro de Qualidade', 9300.00, '2021-03-15', 2, 2),
('Paulo Silva', 'Analista de Projetos', 4800.00, '2020-05-07', 2, 1),
('Sabrina Castro', 'Desenvolvedora Front-end', 5500.00, '2022-05-18', 2, 3),
('Gustavo Teixeira', 'Especialista em Infraestrutura', 8200.00, '2019-08-27', 1, 2),
('Larissa Oliveira', 'Coordenadora de Marketing', 8500.00, '2020-04-14', 4, 3),
('Carlos Fernandes', 'Gerente de Vendas', 9800.00, '2021-11-30', 5, 5),
('João Mendes', 'Desenvolvedor Back-end', 5200.00, '2020-02-09', 2, 3),
('Mariana Lopes', 'Engenheira de Software', 8800.00, '2020-07-05', 2, 1),
('Alexandre Sousa', 'Analista Financeiro', 4300.00, '2019-12-01', 5, 4),
('Tatiana Silva', 'Especialista em Segurança da Informação', 9100.00, '2021-10-21', 2, 3),
('Henrique Costa', 'Gerente de TI', 10400.00, '2022-03-12', 2, 3),
('Gabriela Souza', 'Analista de RH', 4000.00, '2020-05-24', 1, 1);
INSERT INTO tb_empregado (nome, cargo, salario, data_admissao, id_gerente, id_departamento) VALUES
('Marcelo Teixeira', 'Engenheiro de Software', 9200.00, '2020-08-11', 2, 1),
('Bianca Cardoso', 'Analista de Vendas', 4500.00, '2019-10-15', 5, 5),
('Júlio César Ferreira', 'Desenvolvedor Full-Stack', 7400.00, '2022-03-07', 2, 3),
('Priscila Nunes', 'Especialista em Projetos', 7700.00, '2021-05-02', 2, 1),
('Vinícius Almeida', 'Gerente de TI', 10100.00, '2020-09-30', 2, 3),
('Carolina Mendes', 'Engenheira de Dados', 11200.00, '2020-12-14', 3, 2),
('Rodrigo Castro', 'Analista de Marketing', 4800.00, '2021-01-08', 4, 3),
('Joana Costa', 'Desenvolvedora Front-end', 5500.00, '2022-02-22', 2, 3),
('Caio Souza', 'Engenheiro de Redes', 7200.00, '2019-07-29', 1, 2),
('Tatiana Silva', 'Gerente de Vendas', 9500.00, '2021-11-05', 5, 5),
('Lucas Pereira', 'Analista de RH', 3900.00, '2019-08-23', 1, 1),
('Isabela Martins', 'Coordenadora de Marketing', 8500.00, '2020-10-30', 4, 3),
('Thiago Barbosa', 'Especialista em Segurança da Informação', 9200.00, '2021-05-19', 2, 3),
('Lívia Ribeiro', 'Gerente de Operações', 9900.00, '2022-01-27', 5, 5),
('Rafael Lima', 'Analista Financeiro', 4100.00, '2019-05-25', 5, 4),
('Fabiana Rocha', 'Desenvolvedora Back-end', 5200.00, '2021-09-01', 2, 3),
('Fernando Souza', 'Engenheiro de Software', 8900.00, '2020-04-05', 2, 1),
('Vanessa Fernandes', 'Analista de Redes', 5200.00, '2021-12-17', 1, 2),
('Ricardo Cunha', 'Especialista em Infraestrutura', 8000.00, '2020-07-22', 1, 2),
('Daniela Farias', 'Analista de Projetos', 4700.00, '2021-03-11', 2, 1),
('Bruno Oliveira', 'Coordenador de TI', 9700.00, '2022-02-04', 2, 3),
('Gabriela Sousa', 'Assistente de RH', 3500.00, '2020-05-15', 1, 1),
('Pedro Santos', 'Engenheiro de Dados', 10800.00, '2021-10-20', 3, 2),
('Renata Lima', 'Gerente de TI', 10100.00, '2022-05-13', 2, 3),
('Leandro Pereira', 'Desenvolvedor Mobile', 5000.00, '2021-01-03', 2, 3),
('Adriana Cardoso', 'Analista de Suporte', 4000.00, '2019-11-25', 1, 2),
('Márcio Costa', 'Engenheiro de Qualidade', 9200.00, '2020-05-17', 2, 2),
('Luiza Martins', 'Analista de Marketing', 4900.00, '2021-07-05', 4, 3),
('Diego Oliveira', 'Desenvolvedor Python', 5800.00, '2022-03-29', 2, 3),
('Tatiana Carvalho', 'Analista de Projetos', 4500.00, '2020-09-02', 2, 1);
INSERT INTO tb_empregado (nome, cargo, salario, data_admissao, id_gerente, id_departamento) VALUES
('André Souza', 'Gerente de Projetos', 9400.00, '2020-07-15', 2, 1),
('Fernanda Ramos', 'Desenvolvedora Front-end', 5400.00, '2021-11-09', 2, 3),
('Rodrigo Oliveira', 'Analista de Segurança da Informação', 8700.00, '2020-04-21', 2, 3),
('Patrícia Lima', 'Analista de RH', 4100.00, '2019-12-05', 1, 1),
('Bruno Cunha', 'Engenheiro de Dados', 10500.00, '2021-03-18', 3, 2),
('João Henrique', 'Analista de Suporte', 4200.00, '2021-05-11', 1, 2),
('Carla Costa', 'Coordenadora de Marketing', 8500.00, '2020-08-25', 4, 3),
('Leandro Ferreira', 'Especialista em Infraestrutura', 8200.00, '2021-10-13', 1, 2),
('Camila Martins', 'Gerente de TI', 10400.00, '2022-02-19', 2, 3),
('Gabriel Lopes', 'Desenvolvedor Full-Stack', 7500.00, '2021-12-23', 2, 3),
('Tatiane Barros', 'Assistente Financeiro', 3500.00, '2020-11-04', 5, 4),
('Douglas Alves', 'Engenheiro de Software', 9300.00, '2022-01-14', 2, 1),
('Larissa Oliveira', 'Analista de Redes', 5000.00, '2021-09-08', 1, 2),
('Tiago Santos', 'Especialista em Segurança da Informação', 9300.00, '2020-03-02', 2, 3),
('Juliana Farias', 'Desenvolvedora Back-end', 5900.00, '2021-02-27', 2, 3),
('Mauro Souza', 'Analista Financeiro', 4500.00, '2019-08-12', 5, 4),
('Rafael Ribeiro', 'Engenheiro de Qualidade', 9100.00, '2021-04-22', 2, 2),
('Vanessa Lima', 'Desenvolvedora Mobile', 5300.00, '2022-03-09', 2, 3),
('Marcelo Alves', 'Coordenador de TI', 9200.00, '2020-10-18', 2, 3),
('Fernanda Sousa', 'Especialista em Projetos', 7700.00, '2021-07-14', 2, 1),
('Ricardo Santos', 'Engenheiro de Dados', 10800.00, '2021-05-25', 3, 2),
('Paulo Nogueira', 'Analista de Suporte', 4200.00, '2021-08-31', 1, 2),
('Carolina Costa', 'Gerente de RH', 9000.00, '2022-04-07', 1, 1),
('Ana Luiza Teixeira', 'Assistente de RH', 3700.00, '2020-05-21', 1, 1),
('Felipe Ramos', 'Desenvolvedor Python', 5700.00, '2021-12-10', 2, 3),
('Gustavo Barros', 'Engenheiro de Software', 9100.00, '2020-11-18', 2, 1),
('Tatiana Borges', 'Analista de Projetos', 4500.00, '2019-07-27', 2, 1),
('Lucas Ferreira', 'Especialista em Redes', 7100.00, '2021-03-31', 1, 2),
('Bruna Mendes', 'Gerente de Vendas', 9800.00, '2020-09-14', 5, 5),
('Thiago Oliveira', 'Analista de Infraestrutura', 7500.00, '2021-04-25', 1, 2);
INSERT INTO tb_empregado (nome, cargo, salario, data_admissao, id_gerente, id_departamento) VALUES
('Lucas Mendes', 'Desenvolvedor Full-Stack', 7300.00, '2020-07-19', 2, 3),
('Andressa Ferreira', 'Analista de Suporte', 4200.00, '2019-11-12', 1, 2),
('Fábio Rocha', 'Engenheiro de Dados', 10900.00, '2021-02-03', 3, 2),
('Renata Santos', 'Coordenadora de Marketing', 8500.00, '2020-05-23', 4, 3),
('Bruno Martins', 'Engenheiro de Software', 9200.00, '2021-04-11', 2, 1),
('Carla Nogueira', 'Analista de Redes', 5000.00, '2020-08-30', 1, 2),
('Rodrigo Azevedo', 'Especialista em Projetos', 7700.00, '2021-09-14', 2, 1),
('Mariana Sousa', 'Analista de Projetos', 4900.00, '2019-12-02', 2, 1),
('Pedro Lima', 'Desenvolvedor Back-end', 5200.00, '2021-10-08', 2, 3),
('Aline Fernandes', 'Gerente de Operações', 9900.00, '2020-04-29', 5, 5);
INSERT INTO tb_empregado (nome, cargo, salario, data_admissao, id_gerente, id_departamento) VALUES
('Thiago Carvalho', 'Engenheiro de Qualidade', 9100.00, '2020-03-20', 2, 2),
('Beatriz Souza', 'Assistente de RH', 3700.00, '2021-05-01', 1, 1),
('Ricardo Fernandes', 'Analista Financeiro', 4500.00, '2020-08-04', 5, 4),
('Larissa Silva', 'Desenvolvedora Front-end', 5300.00, '2021-10-20', 2, 3),
('João Pedro Costa', 'Engenheiro de Dados', 10700.00, '2022-02-18', 3, 2),
('Marcos Santos', 'Gerente de Vendas', 9700.00, '2020-11-30', 5, 5),
('Priscila Oliveira', 'Coordenadora de TI', 9200.00, '2021-05-25', 2, 3),
('Amanda Ribeiro', 'Desenvolvedora Mobile', 5000.00, '2021-07-15', 2, 3),
('Carlos Nunes', 'Analista de Suporte', 4300.00, '2019-11-18', 1, 2),
('Marina Alves', 'Gerente de Projetos', 9500.00, '2020-12-22', 2, 1),
('Fábio Azevedo', 'Engenheiro de Software', 9100.00, '2021-01-04', 2, 1),
('Isabela Santos', 'Especialista em Segurança da Informação', 8800.00, '2020-07-17', 2, 3),
('Felipe Teixeira', 'Analista de Redes', 5900.00, '2021-11-13', 1, 2),
('Daniel Cardoso', 'Desenvolvedor Back-end', 5100.00, '2020-05-27', 2, 3),
('Juliana Lopes', 'Analista de Marketing', 4900.00, '2021-03-09', 4, 3),
('Pedro Mendes', 'Engenheiro de Qualidade', 9000.00, '2020-05-04', 2, 2),
('Patrícia Almeida', 'Gerente de TI', 10500.00, '2022-01-11', 2, 3),
('Renato Silva', 'Analista de Projetos', 4500.00, '2019-09-10', 2, 1),
('Camila Souza', 'Especialista em Infraestrutura', 8300.00, '2021-04-23', 1, 2),
('Bruno Lima', 'Analista de Segurança da Informação', 8700.00, '2021-12-29', 2, 3),
('Fernanda Farias', 'Assistente Financeiro', 3800.00, '2020-03-18', 5, 4),
('Thiago Pereira', 'Desenvolvedor Python', 5800.00, '2021-02-08', 2, 3),
('Mariana Barros', 'Gerente de Operações', 9800.00, '2020-05-13', 5, 5),
('Leandro Ferreira', 'Coordenador de Marketing', 8700.00, '2021-08-12', 4, 3),
('Roberto Castro', 'Analista de RH', 4100.00, '2019-12-29', 1, 1),
('Cláudia Costa', 'Desenvolvedora Front-end', 5400.00, '2022-03-11', 2, 3),
('Júlio Mendes', 'Engenheiro de Dados', 10900.00, '2020-02-02', 3, 2),
('Tatiane Santos', 'Coordenadora de TI', 9300.00, '2021-05-15', 2, 3),
('Lucas Oliveira', 'Analista de Suporte', 4100.00, '2020-07-01', 1, 2),
('Sabrina Rocha', 'Especialista em Segurança da Informação', 8900.00, '2021-03-17', 2, 3);
INSERT INTO tb_empregado (nome, cargo, salario, data_admissao, id_gerente, id_departamento) VALUES
('André Nunes', 'Engenheiro de Qualidade', 9100.00, '2020-04-07', 2, 2),
('Carla Lopes', 'Analista de Projetos', 4700.00, '2021-11-19', 2, 1),
('Rodrigo Vieira', 'Desenvolvedor Full-Stack', 7400.00, '2021-05-25', 2, 3),
('Fernanda Santos', 'Gerente de Vendas', 9500.00, '2020-09-05', 5, 5),
('Lucas Silva', 'Analista de Redes', 5900.00, '2021-02-12', 1, 2),
('Isabela Nogueira', 'Coordenadora de Marketing', 8700.00, '2020-11-14', 4, 3),
('Marcelo Rocha', 'Engenheiro de Dados', 10500.00, '2021-07-03', 3, 2),
('Tatiane Almeida', 'Especialista em Infraestrutura', 8200.00, '2021-01-24', 1, 2),
('João Pedro Martins', 'Desenvolvedor Mobile', 5100.00, '2020-08-18', 2, 3),
('Roberta Lima', 'Analista Financeiro', 4500.00, '2021-05-05', 5, 4),
('Juliana Ribeiro', 'Engenheira de Software', 9200.00, '2020-03-28', 2, 1),
('Fábio Mendes', 'Analista de Suporte', 4200.00, '2020-10-02', 1, 2),
('Gabriela Ferreira', 'Gerente de TI', 10500.00, '2022-03-22', 2, 3),
('Vinícius Oliveira', 'Desenvolvedor Python', 5700.00, '2021-09-09', 2, 3),
('Carolina Castro', 'Engenheira de Qualidade', 9000.00, '2021-12-07', 2, 2),
('Bruno Teixeira', 'Especialista em Segurança da Informação', 8800.00, '2020-05-21', 2, 3),
('Larissa Cardoso', 'Coordenadora de TI', 9200.00, '2021-10-15', 2, 3),
('Rafael Vieira', 'Engenheiro de Dados', 10700.00, '2022-02-05', 3, 2),
('Mariana Souza', 'Desenvolvedora Front-end', 5500.00, '2020-05-11', 2, 3),
('Paulo Farias', 'Analista de Redes', 5200.00, '2021-04-30', 1, 2),
('Adriana Costa', 'Gerente de Operações', 9900.00, '2020-07-29', 5, 5),
('Bruno Nunes', 'Desenvolvedor Full-Stack', 7200.00, '2021-08-22', 2, 3),
('Carla Azevedo', 'Especialista em Infraestrutura', 8100.00, '2021-09-11', 1, 2),
('Márcio Ribeiro', 'Engenheiro de Software', 9300.00, '2020-12-08', 2, 1),
('Fernanda Oliveira', 'Analista de Marketing', 4800.00, '2021-01-18', 4, 3),
('Ricardo Costa', 'Engenheiro de Qualidade', 8900.00, '2020-02-13', 2, 2),
('Júlia Martins', 'Analista de Projetos', 4500.00, '2021-05-27', 2, 1),
('Rodrigo Santos', 'Desenvolvedor Back-end', 5300.00, '2021-03-02', 2, 3),
('Tatiana Ramos', 'Especialista em Segurança da Informação', 8500.00, '2020-08-05', 2, 3),
('Leandro Ferreira', 'Coordenador de Marketing', 8700.00, '2021-11-23', 4, 3);


SELECT nome, cargo FROM tb_empregado e WHERE e.cargo IS NULL;

-- UPDATE tb_empregado e SET e.cargo = NULL WHERE e.cargo LIKE "Gerente%"
-- SELECT nome,cargo,id_gerente FROM tb_empregado E LIMIT 5;
 
/*
 * Desafio 1: Listar Empregados de um Departamento Específico 
1. Liste todos os empregados que pertencem ao departamento cujo nome é  'Marketing'. 
2. Crie uma view chamada View_Marketing_Empregados que contenha  todos os empregados do departamento 'Marketing'. 
*/


-- 1
SELECT E.nome, D.nome FROM tb_empregado E JOIN tb_departamento D ON E.id_departamento = D.id_departamento WHERE D.nome = "Marketing";

-- 2
CREATE VIEW View_Marketing_Empregados AS SELECT E.nome AS empregado , D.nome AS departamento FROM tb_empregado E 
JOIN tb_departamento D ON E.id_departamento = D.id_departamento WHERE D.nome = "Marketing";
-- SELECT * FROM View_Marketing_Empregados;

/*
*Desafio 2: Média de Salário por Departamento 
*3. Liste o nome do departamento e a média dos salários de seus  empregados.
*4. Crie uma view chamada View_Media_Salarios que mostre o nome do  departamento e a média dos salários dos empregados. 
*/

-- 1
SELECT D.nome AS departamento, AVG(E.salario) AS media_salarial FROM tb_departamento D JOIN tb_empregado E ON D.id_departamento = E.id_departamento GROUP BY (D.nome);

-- 2
CREATE VIEW View_Media_Salarios AS
SELECT D.nome AS departamento, ROUND(AVG(E.salario),2) AS media_salarial FROM tb_departamento D JOIN tb_empregado E ON D.id_departamento = E.id_departamento GROUP BY (D.nome);

SELECT * FROM View_Media_Salarios;
/*
* Desafio 3: Empregados com Salário Acima da Média 
* 5. Liste todos os empregados que têm um salário acima da média dos  salários do seu departamento. 
* 6. Crie uma view chamada View_Empregados_Acima_Media que contenha  os empregados que têm um salário acima da média do seu departamento. 
*/
-- 1
SELECT E.nome,E.salario, D.nome  FROM tb_empregado E
JOIN tb_departamento D ON E.id_departamento = D.id_departamento
WHERE E.salario > (SELECT AVG(E2.Salario) FROM tb_empregado E2 WHERE E2.id_departamento = E.id_departamento)
GROUP BY E.nome, E.salario, D.id_departamento;

-- 2
CREATE VIEW View_Empregados_Acima_Media AS
SELECT E.nome AS nome_empregado,E.salario AS salario, D.nome AS departamento  FROM tb_empregado E
JOIN tb_departamento D ON E.id_departamento = D.id_departamento
WHERE E.salario > (SELECT AVG(E2.Salario) FROM tb_empregado E2 WHERE E2.id_departamento = E.id_departamento)
GROUP BY E.nome, E.salario, D.id_departamento;

-- SELECT * FROM  View_Empregados_Acima_Media;
/*
*Desafio 4: Departamentos com Mais de X Empregados 
* 7. Liste todos os departamentos que têm mais de 5 empregados. 
* 8. Crie uma view chamada  View_Departamentos_Com_Muitos_Empregados que contenha os  departamentos com mais de 5 empregados. 
*/

-- 7 
SELECT D.nome, COUNT(E.id_empregado) AS qnt_funcionarios FROM tb_departamento D
JOIN tb_empregado E ON D.id_departamento = E.id_departamento
GROUP BY D.id_departamento 
HAVING COUNT(E.id_empregado) > 5; 

-- 8
CREATE VIEW View_Departamentos_Com_Muitos_Empregados AS
SELECT D.nome AS departamentos, COUNT(E.id_empregado) AS qnt_funcionarios FROM tb_departamento D
JOIN tb_empregado E ON D.id_departamento = E.id_departamento
GROUP BY D.id_departamento 
HAVING COUNT(E.id_empregado) > 5; 

-- SELECT * FROM View_Departamentos_Com_Muitos_Empregados ORDER BY qnt_funcionarios DESC;







