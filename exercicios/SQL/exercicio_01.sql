-- CREATE DATABASE exercicio_05_sql;

-- SHOW DATABASES;

USE exercicio_05_sql;

CREATE TABLE IF NOT EXISTS tb_equipamento(
	cod_equipamento INT AUTO_INCREMENT,
	nome_equipamento VARCHAR(60) NOT NULL,
	valor  FLOAT,
	quantidade INT,
	tipo VARCHAR(60),
	-- PRIMARY KEY
	CONSTRAINT pk_tb_equipamento PRIMARY KEY (cod_equipamento)
);

INSERT INTO tb_equipamento (nome_equipamento, valor, quantidade, tipo) VALUES
('Computador', 2500.00, 5, 'Eletrônico'),
('Impressora', 800.00, 3, 'Eletrônico'),
('Mesa', 200.00, 10, 'Móvel'),
('Cadeira', 150.00, 20, 'Móvel'),
('Projetor', 3000.00, 2, 'Eletrônico'),
('Armário', 500.00, 4, 'Móvel'),
('Monitor', 1200.00, 6, 'Eletrônico'),
('Teclado', 100.00, 15, 'Eletrônico'),
('Mouse', 50.00, 25, 'Eletrônico'),
('Câmera', 1500.00, 1, 'Eletrônico');



CREATE TABLE IF NOT EXISTS tb_curso(
	cod_curso INT NOT NULL,
	nome_curso VARCHAR(60) NOT NULL,
	-- PRIMARY KEY
	CONSTRAINT pk_tb_curso PRIMARY KEY (cod_curso)
);

INSERT INTO tb_curso (cod_curso, nome_curso) VALUES
(1, 'Programação em Python'),
(2, 'Análise de Dados com SQL'),
(3, 'Design Gráfico'),
(4, 'Marketing Digital'),
(5, 'Administração de Empresas');

CREATE TABLE IF NOT EXISTS tb_professor(
	cod_professor INT AUTO_INCREMENT,
	nome_professor VARCHAR(60) NOT NULL,
	telefone VARCHAR(60),
	salario DECIMAL(10,2),
	cod_curso INT,
	-- PRIMARY KEY
	CONSTRAINT pk_tb_professor PRIMARY KEY(cod_professor),
	-- FOREIGN KEY
	CONSTRAINT fk_tb_professor_tb_curso FOREIGN KEY (cod_curso) REFERENCES tb_curso (cod_curso)
);

INSERT INTO tb_professor (nome_professor, telefone, salario, cod_curso) VALUES
('João Silva', '82 99999-9999', 3500.00, 1),
('Maria Oliveira', '82 98888-8888', 4000.00, 2),
('Pedro Santos', '82 97777-7777', 3000.00, 3);

CREATE TABLE IF NOT EXISTS tb_sala(
	cod_sala INT AUTO_INCREMENT,
	nome_sala VARCHAR(60),
	
	CONSTRAINT pk_tb_sala PRIMARY KEY (cod_sala)
);

INSERT INTO tb_sala (nome_sala) VALUES
('Sala 1'),
('Sala 2'),
('Sala 3'),
('Sala 4');

CREATE TABLE IF NOT EXISTS tb_reserva(
	cod_reserva INT AUTO_INCREMENT,
	data_reserva DATE,
	hora_reserva TIME,
	cod_professor INT,
	cod_sala INT,
	
	CONSTRAINT pk_tb_reserva PRIMARY KEY (cod_reserva),
	CONSTRAINT fk_tb_reserva_tb_professor FOREIGN KEY (cod_professor) REFERENCES tb_professor (cod_professor),
	CONSTRAINT fk_tb_reserva_tb_sala FOREIGN KEY (cod_sala) REFERENCES tb_sala (cod_sala)
);

INSERT INTO tb_reserva (data_reserva, hora_reserva, cod_professor, cod_sala) VALUES
('2023-10-10', '10:00:00', 1, 1),
('2023-10-11', '14:00:00', 2, 2),
('2023-10-12', '08:00:00', 3, 3),
('2023-10-13', '16:00:00', 1, 4),
('2023-10-14', '10:00:00', 2, 1),
('2023-10-15', '14:00:00', 3, 2),
('2023-10-16', '08:00:00', 1, 3),
('2023-10-17', '16:00:00', 2, 4),
('2023-10-18', '10:00:00', 3, 1),
('2023-10-19', '14:00:00', 1, 2),
('2023-10-20', '08:00:00', 2, 3),
('2023-10-21', '16:00:00', 3, 4),
('2023-10-22', '10:00:00', 1, 1),
('2023-10-23', '14:00:00', 2, 2),
('2023-10-24', '08:00:00', 3, 3),
('2023-10-25', '16:00:00', 1, 4),
('2023-10-26', '10:00:00', 2, 1),
('2023-10-27', '14:00:00', 3, 2),
('2023-10-28', '08:00:00', 1, 3),
('2023-10-29', '16:00:00', 2, 4);

show tables;
USE exercicio_05_sql;

SHOW CREATE TABLE tb_equipamento;
SHOW CREATE TABLE tb_curso;
SHOW CREATE TABLE tb_reserva;
SHOW CREATE TABLE tb_professor;
SHOW CREATE TABLE tb_sala;







