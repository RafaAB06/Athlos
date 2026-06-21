--listar alunos com planos ativos
SELECT c.*
FROM cliente c
JOIN plano p ON p.cpf_cli = c.cpf_cli
WHERE p.status_pla = 'A';

--listar os planos mais contratados
SELECT tipo_pla, COUNT(*) AS contratos
FROM plano
GROUP BY tipo_pla
ORDER BY contratos DESC;

--listar alunos inadinplentes
SELECT c.*
FROM cliente c
JOIN pagamento p ON p.cpf_cli = c.cpf_cli
WHERE p.status_pag = 'P'

--listar modalidades com mais matriculas
SELECT cod_mod, COUNT(*) AS total_matriculas
FROM matricula
GROUP BY cod_mod
ORDER BY total_matriculas DESC;
