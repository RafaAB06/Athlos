<h1 align="center">Sistema Athlos para Academias</h1>
<h2 align="center">Resumo</h2>
Athlos é um sistema de gerenciamento de academia desenvolvido como trabalho final da disciplina de Banco de Dados I. O projeto modela e implementa o banco de dados relacional que suporta o ciclo completo da rotina de uma academia: desde o cadastro de alunos, funcionários e modalidades até o controle de matrículas, agendamento de treinos, avaliação física e pagamentos de mensalidades.

O modelo de dados foi projetado seguindo as regras de normalização até a Terceira Forma Normal (3FN), garantindo a integridade referencial, a eliminação de redundâncias e a consistência total dos dados.
<h2 align="center">Estrutura do Repositório</h2>

```
Athlos/
├── Modelo/
│   ├── Athlos.vpp   # Modelo relacional feito no Visual Paradigm
|   ├── Athlos.brM3   # Modelo relacional feito no Br Modelo, deatualizado
│   └── dicionario_de_dados.md  # Dicionario de dados completo
└── sql/
    ├── 01_create_database.sql   # Criacao do banco de dados
    ├── 02_create_tables.sql     # Tabelas e constraints (PK, FK, UK, CHECK, DEFAULT)
    ├── 03_indexes.sql           # Indices para otimizacao de consultas
    ├── 04_dados_exemplo.sql     # Dados de exemplo para testes
    └── 05_consultas.sql         # Relatorios
```

<h2 align="center">Requisitos Funcionais</h2>

<table align="center">
<tr>
  <th>Número</th><th>Descrição</th>
</tr>
  <tr><td align="center">1</td><td align="center">
    O sistema deve permitir cadastro de academias,<br>
    incluindo nome, CNPJ, Endereço e telefone
  </td></tr>
  <tr><td align="center">2</td><td align="center">
    O sistema deve permitir cadastro de alunos,<br>
    incluindo nome, CPF, Enderço e telefone
  </td></tr>
  <tr><td align="center">3</td><td align="center">
    O sistema deve permitir cadastro de instrutores/personals,<br>
    incluindo nome, CPF, Enderço e telefone
  </td></tr>
  <tr><td align="center">4</td><td align="center">
    O sistema deve permitir a atualização dos dados cadastrais<br>
    e do status do aluno (ativo, inativo, trancado).
  </td></tr>
  <tr><td align="center">5</td><td align="center">
    O sistema deve permitir buscar um aluno por CPF,<br>
    matrícula ou nome.
  </td></tr>
  <tr><td align="center">6</td><td align="center">
    O sistema deve permitir o cadastro de planos de matrícula<br>
    (ex: Mensal, Trimestral, Anual) com descrição,<br>
    valor da mensalidade e modalidades incluídas.
  </td></tr>
  <tr><td align="center">7</td><td align="center">
    O sistema deve permitir o cadastro de modalidades<br>
    (ex: Musculação, Pilates, Crossfit, Natação)
  </td></tr>
  <tr><td align="center">8</td><td align="center">
    O sistema deve permitir o cadastro da grade de horários<br>
  das turmas de cada modalidade, vinculando um instrutor responsável.
  </td></tr>
  <tr><td align="center">9</td><td align="center">
    O sistema deve permitir o registro de avaliações físicas dos alunos,<br>
    contendo peso, altura, percentual de gordura e histórico médico.
  </td></tr>
  <tr><td align="center">10</td><td align="center">
    O sistema deve registrar os pagamentos das mensalidades, permitindo o recebimento parcial<br>
    ou total e identificando a forma de pagamento (dinheiro, cartão, PIX).
   </td></tr>
   <tr><td align="center">11</td><td align="center">
     O sistema deve consultar o histórico financeiro e o saldo devedor/pendente de um aluno.
   </td></tr>
    <tr><td align="center">12</td><td align="center!">
    O sistema deve registrar o controle de acesso (check-in) do aluno na portaria/catraca,<br>
    bloqueando a entrada caso o aluno esteja com status inativo ou com mensalidades atrasadas.
    </td></tr>
    <tr><td align="center">13</td><td align="center!">
    O sistema deve consultar o histórico financeiro e o saldo devedor/pendente de um aluno.
    </td></tr>
</table>
  <h1 align="center">Requisitos não Funcionais</h1>

  <table align="center">
<tr>
  <th>Número</th><th>Descrição</th>
</tr>
  <tr><td align="center">1</td><td align="center">
    O sistema deve estar normalizado na 3FN,<br>
  </td></tr>
</table>
 <h1 align="center">Tecnologias utilizadas</h1>
   <table align="center">
<tr>
  <th>Nome</th><th>Descrição</th>
</tr>
  <tr><td align="center">Visual Paradigm</td><td align="center">
    Ferramenta de modelagem CASE utilizada para planejar<br>desenhar e gerenciar diagramas de software<br>
  </td></tr>
</table>
<td align="center">brModelo</td>
    <td align="center">
      ferramenta focada em projetar bancos de dados, utilizada para criar modelos conceituais<br>(Entidade-Relacionamento) e convertê-los em modelos lógicos.
    </td>
  </tr>
</table>
<h2 align="center">Desenvolvedores</h2>

<table align="center">
  <tr>
    <td align="center">
      <strong>Eduardo Ari Rebonatto Muller</strong><br/>
      Matricula: 666
    </td>
    <td align="center">
      <strong>Lucas Orlandi</strong><br/>
      Matricula: 449243
    </td>
    <td align="center">
      <strong>Rafael André Brustolin</strong><br/>
      Matricula: 666
    </td>
    <td align="center">
      <strong>Samuel do Nascimento Gralow</strong><br/>
      Matricula: 666
    </td>
  </tr>
</table>

---

*Disciplina: Banco de Dados I — Ciencia da Computacao — UNOESC Sao Miguel do Oeste — 2026/01*

