CREATE DATABASE atividade_2;
USE atividade_2;

CREATE TABLE IF NOT EXISTS DEPARTAMENTO (
    numdepto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS EMPREGADO (
    matricula INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(70) NOT NULL,
    salario DECIMAL(10,2),
    numdepto INT,
    CONSTRAINT EMPREGADO_FK FOREIGN KEY (numdepto) REFERENCES DEPARTAMENTO(numdepto)
);

CREATE TABLE IF NOT EXISTS PROJETO (
    codprojeto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_inicio DATE,
    data_fim DATE
);

CREATE TABLE IF NOT EXISTS TRABALHA_EM (
    matricula INT,
    codprojeto INT,
    data_inicio DATE,
    data_fim DATE,
    PRIMARY KEY (matricula, codprojeto),
    CONSTRAINT TRABALHA_FK FOREIGN KEY (matricula) REFERENCES EMPREGADO(matricula),
    CONSTRAINT TRABALHA_FK1 FOREIGN KEY (codprojeto) REFERENCES PROJETO(codprojeto)
);

CREATE TABLE IF NOT EXISTS HABILIDADE (
    codhabilidade INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS EMPREGADO_HABILIDADE (
    matricula INT,
    codhabilidade INT,
    PRIMARY KEY (matricula, codhabilidade),
    CONSTRAINT EMPREGADO_HAB_FK FOREIGN KEY (matricula) REFERENCES EMPREGADO(matricula),
    CONSTRAINT EMPREGADO_HAB_FK1 FOREIGN KEY (codhabilidade) REFERENCES HABILIDADE(codhabilidade)
);

-- INSERTS PARA DEPARTAMENTO
-- INSERT INTO DEPARTAMENTO (nome) VALUES ('Recursos Humanos');
-- INSERT INTO DEPARTAMENTO (nome) VALUES ('Desenvolvimento');
-- INSERT INTO DEPARTAMENTO (nome) VALUES ('Marketing');
-- INSERT INTO DEPARTAMENTO (nome) VALUES ('Financeiro');
-- INSERT INTO DEPARTAMENTO (nome) VALUES ('Suporte Técnico');

-- INSERTS PARA EMPREGADOS
-- INSERT INTO EMPREGADO (nome, salario, numdepto) VALUES ('Ana Silva', 4500.00, 1);
-- INSERT INTO EMPREGADO (nome, salario, numdepto) VALUES ('João Santos', 5500.00, 2);
-- INSERT INTO EMPREGADO (nome, salario, numdepto) VALUES ('Maria Oliveira', 6000.00, 2);
-- INSERT INTO EMPREGADO (nome, salario, numdepto) VALUES ('Carlos Souza', 4000.00, 3);
-- INSERT INTO EMPREGADO (nome, salario, numdepto) VALUES ('Fernanda Lima', 4700.00, 4);

-- INSERTS PARA PROJETO
-- INSERT INTO PROJETO (nome, data_inicio, data_fim) VALUES ('Projeto A', '2024-01-15', '2024-06-30');
-- INSERT INTO PROJETO (nome, data_inicio, data_fim) VALUES ('Projeto B', '2024-03-01', '2024-09-15');
-- INSERT INTO PROJETO (nome, data_inicio, data_fim) VALUES ('Projeto C', '2024-02-20', '2024-07-15');
-- INSERT INTO PROJETO (nome, data_inicio, data_fim) VALUES ('Projeto D', '2024-05-10', '2024-11-30');
-- INSERT INTO PROJETO (nome, data_inicio, data_fim) VALUES ('Projeto E', '2024-04-05', '2024-12-20');


-- INSERTS PARA TRABALHA_EM
-- INSERT INTO TRABALHA_EM (matricula, codprojeto, data_inicio, data_fim) VALUES (1, 1, '2024-01-15', '2024-06-30');
-- INSERT INTO TRABALHA_EM (matricula, codprojeto, data_itricula = E.matricula
WHERE E.matricula IS NULL; 
nicio, data_fim) VALUES (2, 1, '2024-01-15', '2024-06-30');
-- INSERT INTO TRABALHA_EM (matricula, codprojeto, data_inicio, data_fim) VALUES (3, 2, '2024-03-01', '2024-09-15');
-- INSERT INTO TRABALHA_EM (matricula, codprojeto, data_inicio, data_fim) VALUES (4, 3, '2024-02-20', '2024-07-15');
-- INSERT INTO TRABALHA_EM (matricula, codprojeto, data_inicio, data_fim) VALUES (5, 4, '2024-05-10', '2024-11-30');

-- INSERTS PARA HABILIDADES
-- INSERT INTO HABILIDADE (descricao) VALUES ('Java Programming');
-- INSERT INTO HABILIDADE (descricao) VALUES ('SQL Database Management');
-- INSERT INTO HABILIDADE (descricao) VALUES ('Project Management');
-- INSERT INTO HABILIDADE (descricao) VALUES ('Data Analysis');
-- INSERT INTO HABILIDADE (descricao) VALUES ('Network Security');

-- INSERTS PARA  EMPREGADO_HABISELECT * FROM EMPREGADO GROUP BY ;LIDADE
-- INSERT INTO EMPREGADO_HABILIDADE (matricula, codhabilidade) VALUES (1, 2);
-- INSERT INTO EMPREGADO_HABILIDADE (matricula, codhabilidade) VALUES (2, 1);
-- INSERT INTO EMPREGADO_HABILIDADE (matricula, codhabilidade) VALUES (3, 3);
-- INSERT INTO EMPREGADO_HABILIDADE (matricula, codhabilidade) VALUES (4, 4);
-- INSERT INTO EMPREGADO_HABILIDADE (matricula, codhabilidade) VALUES (5, 5);


-- 1. Empregados e seus Departamentos (INNER JOIN) 
-- Liste todos os empregados juntamente com o nome de seus departamentos.

SELECT E.nome AS EMPREGADO, D.nome AS DEPARTAMENTO FROM EMPREGADO E
INNER JOIN  DEPARTAMENTO D ON E.nempregadoumdepto = D.numdepto;

-- 2. Empregados sem Departamento (LEFT JOIN + IS NULL) 
-- Liste todos os empregados que não estão associados a nenhum departamento. 
SELECT E.nome AS EMPREGADO, D.nome AS DEPARTAMENTO FROM EMPREGADO E
LEFT JOIN  DEPARTAMENTO D ON E.numdepto = D.numdepto
WHERE E.numdepto IS NULL;

-- 3. Projetos sem Empregados (LEFT JOIN + IS NULL) 
-- Liste todos os projetos que não têm empregados associados. 


SELECT P.codprojeto, P.nome FROM PROJETO P
LEFT JOIN TRABALHA_EM T ON P.codprojeto = T.codprojeto
WHERE T.matricula IS NULL;

/*
*4. Empregados e suas Habilidades (INNER JOIN) 
*certo - Liste todos os empregados juntamente com suas habilidades. 
*/

SELECT E.nome AS EMPREGADO, H.descricao as DESCRIÇÃO FROM EMPREGADO E
INNER JOIN EMPREGADO_HABILIDADE EH ON E.matricula = EH.matricula
INNER JOIN HABILIDADE H ON EH.codhabilidade = H.codhabilidade;

/*
* 5. Empregados sem Habilidades (LEFT JOIN + IS NULL)
* Liste todos os empregados que não têm habilidades associadas.
*/
SELECT E.nome AS EMPREGADO, EH.codhabilidade FROM EMPREGADO E
LEFT JOIN EMPREGADO_HABILIDADE EH ON E.matricula = EH.matricula
WHERE EH.codhabilidade IS NULL;

/*
 * 6. Departamentos e Número de Empregados (LEFT JOIN + COUNT)
 * Liste todos os departamentos e o número de empregados em cada um.
 */

SELECT D.nome, COUNT(E.matricula) FROM DEPARTAMENTO D
LEFT JOIN EMPREGADO E ON D.numdepto = E.numdepto 
GROUP BY D.nome;

/*
*7. Empregados e seus Projetos (INNER JOIN)
* Liste todos os empregados juntamente com os projetos em que estão trabalhando.
*/

SELECT E.nome AS EMPREGADO, P.nome FROM EMPREGADO E
INNER JOIN TRABALHA_EM TE ON E.matricula = TE.matricula
INNER JOIN PROJETO P ON TE.codprojeto = P.codprojeto;


/*
 * 8. Empregados em Projetos Atuais (INNER JOIN + WHERE)
 * Liste todos os empregados que estão trabalhando em projetos que ainda não
terminaram.
 */
SELECT E.nome AS EMPREGADO, P.nome FROM EMPREGADO E
INNER JOIN TRABALHA_EM TE ON E.matricula = TE.matricula
INNER JOIN PROJETO P ON TE.codprojeto = P.codprojeto
WHERE P.data_fim IS NULL OR  CURRENT_DATE() < P.data_fim ;

/*
 * 9. Projetos e Duração (DATEDIFF)
 * Liste todos os projetos juntamente com a duração em dias (diferente entre data_fim
e data_inicio).
*/

-- DESCRIBE PROJETO;
-- SELECT * FROM PROJETO;

SELECT P.nome, DATEDIFF(P.data_fim, P.data_inicio) AS duracao_dias FROM PROJETO P;

/*
10. Empregados com Mais de uma Habilidade (INNER JOIN + HAVING COUNT)
- Liste todos os empregados que têm mais de uma habilidade.
 * 
 */
SELECT E.nome AS EMPREGADO, EH.codhabilidade 
FROM EMPREGADO E
INNER JOIN EMPREGADO_HABILIDADE EH ON E.matricula = EH.matricula
GROUP BY E.nome, EH.codhabilidade
HAVING COUNT(EH.codhabilidade) > 1;

/*
11. Departamentos e Salário Médio (LEFT JOIN + AVG) 
Liste todos os departamentos juntamente com o salário médio dos empregados em cada departamento.
*/
SELECT D.nome, AVG(E.salario) FROM DEPARTAMENTO D
LEFT JOIN EMPREGADO E ON D.numdepto = E.numdepto
GROUP BY D.nome; 

/*
 * 12. Empregados e suas Habilidades Ordenadas (INNER JOIN + ORDER BY)
- Liste todos os empregados juntamente com suas habilidades, ordenando os
resultados pelo nome do empregado e pela descrição da habilidade.
*/

SELECT E.nome AS EMPREGADO, H.descricao AS HABILIDADE FROM EMPREGADO E
INNER JOIN EMPREGADO_HABILIDADE EH ON EH.matricula = E.matricula
INNER JOIN HABILIDADE H ON H.codhabilidade = EH.codhabilidade
ORDER BY E.nome, H.descricao;

/*
13. Projetos e Número de Empregados (INNER JOIN + COUNT)
- Liste todos os projetos juntamente com o número de empregados que estão
trabalhando em cada projeto.
*/

SELECT P.nome, COUNT(TE.matricula) AS QNT_EMPREGADOS
FROM PROJETO P
INNER JOIN TRABALHA_EM TE ON P.codprojeto = TE.codprojeto
GROUP BY P.nome
ORDER BY QNT_EMPREGADOS DESC;

/*
14. Empregados com Habilidades Específicas (INNER JOIN + WHERE)
- Liste todos os empregados que possuem uma habilidade específica (por exemplo,
"SQL").
*/
SELECT E.nome AS EMPREGADO, H.descricao AS HABILIDADE FROM EMPREGADO E
INNER JOIN EMPREGADO_HABILIDADE EH ON EH.matricula = E.matricula
INNER JOIN HABILIDADE H ON H.codhabilidade = EH.codhabilidade
WHERE H.descricao LIKE '%sql%';

/*
 * 15. Departamentos sem Empregados (LEFT JOIN + IS NULL)
- Liste todos os departamentos que não têm empregados associados.
 */
SELECT * FROM DEPARTAMENTO WHERE numdepto IS NULL ;
SELECT * FROM EMPREGADO WHERE numdepto IS NULL;

SELECT D.nome FROM DEPARTAMENTO D
LEFT JOIN EMPREGADO E ON D.numdepto = E.numdepto
WHERE D.numdepto IS NULL;

/*
 * 16. Projetos Ativos e seus Empregados (INNER JOIN + WHERE)
 * Liste todos os projetos que ainda estão em andamento e os empregados que
 * estão trabalhando neles.
 */

SELECT P.nome, TE.matricula FROM PROJETO P
INNER JOIN TRABALHA_EM TE ON P.codprojeto = TE.codprojeto
WHERE P.data_fim IS NULL OR  CURRENT_DATE() < P.data_fim;

/*
 * 17. Empregados e suas Habilidades e Projetos (INNER JOIN + Multiple Tables)
- Liste todos os empregados juntamente com suas habilidades e os projetos em que
estão trabalhando.
 */

SELECT E.nome AS EMPREGADO, EH.codhabilidade AS HABILIDADE, TE.codprojeto AS CODIGO_PROJETO FROM EMPREGADO E
INNER JOIN EMPREGADO_HABILIDADE EH ON E.matricula = EH.matricula	
INNER JOIN TRABALHA_EM TE ON E.matricula  = TE.matricula

/*
 * 18. Projetos e Data de Início mais Recente (INNER JOIN + MAX)
- Liste todos os projetos juntamente com a data de início mais recente de um
empregado que começou a trabalhar nesse projeto.
 */

SELECT P.nome AS projeto, MAX( TE.data_inicio) AS data_inicio_recente FROM PROJETO P
INNER JOIN TRABALHA_EM TE ON P.codprojeto = TE.codprojeto
GROUP BY P.nome ORDER BY data_inicio_recente DESC;


/*
 * 19. Empregados que Trabalham em Mais de um Projeto (INNER JOIN + HAVING
 * COUNT)
 *Liste todos os empregados que estão trabalhando em mais de um projeto.
 */

SELECT E.nome AS EMPREGADO FROM EMPREGADO E
INNER JOIN TRABALHA_EM TE ON E.matricula = TE.matricula
GROUP BY E.nome 
HAVING COUNT(TE.codprojeto) > 1;

/*
 * 20. Empregados e Departamento, Habilidade e Projeto (Multiple INNER JOINs)
 * Liste todos os empregados juntamente com o nome do departamento, a descrição
 * da habilidade e o nome do projeto em que estão trabalhando.
 */

SELECT E.nome AS EMPREGADO,
D.nome AS DEPARTAMENTO,
H.descricao AS DESCRICAO_HABILIDADE,
P.nome as PROJETO
FROM EMPREGADO E
INNER JOIN DEPARTAMENTO D ON E.numdepto = D.numdepto
INNER JOIN EMPREGADO_HABILIDADE EH ON E.matricula = EH.matricula
INNER JOIN HABILIDADE H ON H.codhabilidade = EH.codhabilidade
INNER JOIN TRABALHA_EM TE ON TE.matricula = E.matricula
INNER JOIN PROJETO P ON P.codprojeto = TE.codprojeto





