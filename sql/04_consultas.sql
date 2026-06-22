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

--listar alunos inadimplentes
SELECT c.*
FROM cliente c
JOIN pagamento p ON p.cpf_cli = c.cpf_cli
WHERE p.status_pag = 'P'

--listar modalidades com mais matriculas
SELECT cod_mod, COUNT(*) AS total_matriculas
FROM matricula
GROUP BY cod_mod
ORDER BY total_matriculas DESC;

--contabiliza alunos por sexo e quantos tem plano ativo
SELECT
    c.sexo_cli,
    COUNT(*) AS total_alunos,
    COUNT(*) FILTER (WHERE p.status_pla = 'A') AS alunos_ativos
FROM cliente c
LEFT JOIN plano p
    ON p.cpf_cli = c.cpf_cli
GROUP BY c.sexo_cli
ORDER BY total_alunos DESC;

--lista estado, cidade e quantidade de alunos por cidade, ordenando por quantidade de alunos
SELECT
    uf.sig_uf,
    cid.nome_cid,
    COUNT(c.cpf_cli) AS total_alunos
FROM uf
LEFT JOIN cidade cid
    ON cid.cod_uf = uf.cod_uf
LEFT JOIN endereco e
    ON e.cod_cid = cid.cod_cid
LEFT JOIN cliente c
    ON c.cod_end = e.cod_end
GROUP BY
    uf.sig_uf,
    cid.nome_cid
ORDER BY
    total_alunos DESC;
