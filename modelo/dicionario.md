<h3 align="center">Tabela: academia</h3>
<p align="center">Armazena os dados cadastrais das academias.</p>

<table align="center">
  <thead>
    <tr align="center">
      <th>Coluna</th>
      <th>Tipo</th>
      <th>Nulo</th>
      <th>Restrições</th>
      <th>Descrição</th>
    </tr>
  </thead>
  <tbody>
    <tr align="center">
      <td align="center"><code>cnpj_acad</code></td>
      <td align="center">CHAR(14)</td>
      <td align="center">NÃO</td>
      <td align="center">PK, UNIQUE</td>
      <td align="center">CNPJ da academia.</td>
    </tr>
    <tr align="center">
      <td align="center"><code>nom_acad</code></td>
      <td align="center">VARCHAR(200)</td>
      <td align="center">NÃO</td>
      <td align="center">-</td>
      <td align="center">Nome da academia.</td>
    </tr>
    <tr align="center">
      <td align="center"><code>tel_acad</code></td>
      <td align="center">VARCHAR(15)</td>
      <td align="center">NÃO</td>
      <td align="center">UNIQUE</td>
      <td align="center">Telefone de contato da academia.</td>
    </tr>
    <tr align="center">
      <td align="center"><code>email_acad</code></td>
      <td align="center">VARCHAR(128)</td>
      <td align="center">SIM</td>
      <td align="center">UNIQUE</td>
      <td align="center">E-mail da academia.</td>
    </tr>
    <tr align="center">
      <td align="center"><code>cod_endereco</code></td>
      <td align="center">INTEGER(4)</td>
      <td align="center">NÃO</td>
      <td align="center">FK</td>
      <td align="center">Código do endereço vinculado à academia.</td>
    </tr>
  </tbody>
</table>
<h3 align="center">Tabela: instrutor</h3>
<p align="center">Armazena os dados dos instrutores da academia.</p>

<table align="center">
  <thead>
    <tr align="center">
      <th>Coluna</th>
      <th>Tipo</th>
      <th>Nulo</th>
      <th>Restrições</th>
      <th>Descrição</th>
    </tr>
  </thead>
  <tbody>
    <tr align="center">
      <td><code>cpf_ins</code></td>
      <td>CHAR(11)</td>
      <td>NÃO</td>
      <td>PK, UNIQUE</td>
      <td>CPF do instrutor.</td>
    </tr>
    <tr align="center">
      <td><code>nom_ins</code></td>
      <td>VARCHAR(128)</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Nome do instrutor.</td>
    </tr>
    <tr align="center">
      <td><code>tel_ins</code></td>
      <td>VARCHAR(15)</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Telefone do instrutor.</td>
    </tr>
    <tr align="center">
      <td><code>sexo_ins</code></td>
      <td>CHAR(1)</td>
      <td>SIM</td>
      <td>-</td>
      <td>Sexo do instrutor.</td>
    </tr>
    <tr align="center">
      <td><code>cnpj_academia</code></td>
      <td>CHAR(14)</td>
      <td>NÃO</td>
      <td>FK</td>
      <td>Academia onde o instrutor trabalha.</td>
    </tr>
    <tr align="center">
      <td><code>cod_endereco</code></td>
      <td>INTEGER(4)</td>
      <td>NÃO</td>
      <td>FK</td>
      <td>Endereço do instrutor.</td>
    </tr>
  </tbody>
</table>

<br><br>

<h3 align="center">Tabela: pagamento</h3>
<p align="center">Armazena os pagamentos realizados pelos clientes.</p>

<table align="center">
  <thead>
    <tr align="center">
      <th>Coluna</th>
      <th>Tipo</th>
      <th>Nulo</th>
      <th>Restrições</th>
      <th>Descrição</th>
    </tr>
  </thead>
  <tbody>
    <tr align="center">
      <td><code>cod_pag</code></td>
      <td>INTEGER(4)</td>
      <td>NÃO</td>
      <td>PK, UNIQUE</td>
      <td>Identificador do pagamento.</td>
    </tr>
    <tr align="center">
      <td><code>metodo_pag</code></td>
      <td>VARCHAR(64)</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Método utilizado para pagamento.</td>
    </tr>
    <tr align="center">
      <td><code>valor</code></td>
      <td>DECIMAL(10,2)</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Valor pago.</td>
    </tr>
    <tr align="center">
      <td><code>date_emissao_pag</code></td>
      <td>TIMESTAMP</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Data de emissão do pagamento.</td>
    </tr>
    <tr align="center">
      <td><code>data_quitacao_pag</code></td>
      <td>TIMESTAMP</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Data de quitação do pagamento.</td>
    </tr>
    <tr align="center">
      <td><code>status_pag</code></td>
      <td>CHAR(1)</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Status do pagamento.</td>
    </tr>
    <tr align="center">
      <td><code>cpf_cliente</code></td>
      <td>CHAR(11)</td>
      <td>NÃO</td>
      <td>FK</td>
      <td>Cliente responsável pelo pagamento.</td>
    </tr>
    <tr align="center">
      <td><code>cnpj_academia</code></td>
      <td>CHAR(14)</td>
      <td>NÃO</td>
      <td>FK</td>
      <td>Academia que recebeu o pagamento.</td>
    </tr>
  </tbody>
</table>

<br><br>

<h3 align="center">Tabela: avaliacao_fisica</h3>
<p align="center">Armazena as avaliações físicas realizadas pelos clientes.</p>

<table align="center">
  <thead>
    <tr align="center">
      <th>Coluna</th>
      <th>Tipo</th>
      <th>Nulo</th>
      <th>Restrições</th>
      <th>Descrição</th>
    </tr>
  </thead>
  <tbody>
    <tr align="center">
      <td><code>cod_af</code></td>
      <td>INTEGER(4)</td>
      <td>NÃO</td>
      <td>PK, UNIQUE</td>
      <td>Identificador da avaliação física.</td>
    </tr>
    <tr align="center">
      <td><code>massa</code></td>
      <td>INTEGER(4)</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Peso do cliente.</td>
    </tr>
    <tr align="center">
      <td><code>altura</code></td>
      <td>INTEGER(4)</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Altura do cliente.</td>
    </tr>
    <tr align="center">
      <td><code>cpf_cliente</code></td>
      <td>CHAR(11)</td>
      <td>NÃO</td>
      <td>FK</td>
      <td>Cliente avaliado.</td>
    </tr>
  </tbody>
</table>

<br><br>

<h3 align="center">Tabela: frequencia</h3>
<p align="center">Registra a frequência dos clientes na academia.</p>

<table align="center">
  <thead>
    <tr align="center">
      <th>Coluna</th>
      <th>Tipo</th>
      <th>Nulo</th>
      <th>Restrições</th>
      <th>Descrição</th>
    </tr>
  </thead>
  <tbody>
    <tr align="center">
      <td><code>cod_freq</code></td>
      <td>INTEGER(4)</td>
      <td>NÃO</td>
      <td>PK, UNIQUE</td>
      <td>Identificador do registro de frequência.</td>
    </tr>
    <tr align="center">
      <td><code>data_freq</code></td>
      <td>TIMESTAMP</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Data e hora da frequência.</td>
    </tr>
    <tr align="center">
      <td><code>cpf_cliente</code></td>
      <td>CHAR(11)</td>
      <td>NÃO</td>
      <td>FK</td>
      <td>Cliente que registrou presença.</td>
    </tr>
  </tbody>
</table>

<br><br>

<h3 align="center">Tabela: plano</h3>
<p align="center">Armazena os planos contratados pelos clientes.</p>

<table align="center">
  <thead>
    <tr align="center">
      <th>Coluna</th>
      <th>Tipo</th>
      <th>Nulo</th>
      <th>Restrições</th>
      <th>Descrição</th>
    </tr>
  </thead>
  <tbody>
    <tr align="center">
      <td><code>cod_pla</code></td>
      <td>INTEGER(4)</td>
      <td>NÃO</td>
      <td>PK, UNIQUE</td>
      <td>Identificador do plano.</td>
    </tr>
    <tr align="center">
      <td><code>tipo_pla</code></td>
      <td>CHAR(1)</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Tipo do plano.</td>
    </tr>
    <tr align="center">
      <td><code>data_inicio_pla</code></td>
      <td>DATE</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Data de início do plano.</td>
    </tr>
    <tr align="center">
      <td><code>status_pla</code></td>
      <td>CHAR(1)</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Status do plano.</td>
    </tr>
    <tr align="center">
      <td><code>valor_pla</code></td>
      <td>DECIMAL(10,2)</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Valor do plano.</td>
    </tr>
    <tr align="center">
      <td><code>cpf_cliente</code></td>
      <td>CHAR(11)</td>
      <td>NÃO</td>
      <td>FK</td>
      <td>Cliente proprietário do plano.</td>
    </tr>
  </tbody>
</table>

<br><br>

<h3 align="center">Tabela: matricula</h3>
<p align="center">Relaciona planos e modalidades contratadas.</p>

<table align="center">
  <thead>
    <tr align="center">
      <th>Coluna</th>
      <th>Tipo</th>
      <th>Nulo</th>
      <th>Restrições</th>
      <th>Descrição</th>
    </tr>
  </thead>
  <tbody>
    <tr align="center">
      <td><code>cod_mat</code></td>
      <td>INTEGER(4)</td>
      <td>NÃO</td>
      <td>PK, UNIQUE</td>
      <td>Identificador da matrícula.</td>
    </tr>
    <tr align="center">
      <td><code>data_mat</code></td>
      <td>TIMESTAMP</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Data da matrícula.</td>
    </tr>
    <tr align="center">
      <td><code>cod_modalidade</code></td>
      <td>INTEGER(4)</td>
      <td>NÃO</td>
      <td>FK</td>
      <td>Modalidade matriculada.</td>
    </tr>
    <tr align="center">
      <td><code>cod_plano</code></td>
      <td>INTEGER(4)</td>
      <td>NÃO</td>
      <td>FK</td>
      <td>Plano associado à matrícula.</td>
    </tr>
  </tbody>
</table>

<br><br>

<h3 align="center">Tabela: modalidade</h3>
<p align="center">Armazena as modalidades oferecidas pela academia.</p>

<table align="center">
  <thead>
    <tr align="center">
      <th>Coluna</th>
      <th>Tipo</th>
      <th>Nulo</th>
      <th>Restrições</th>
      <th>Descrição</th>
    </tr>
  </thead>
  <tbody>
    <tr align="center">
      <td><code>cod_mod</code></td>
      <td>INTEGER(4)</td>
      <td>NÃO</td>
      <td>PK, UNIQUE</td>
      <td>Identificador da modalidade.</td>
    </tr>
    <tr align="center">
      <td><code>nome_mod</code></td>
      <td>VARCHAR(128)</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Nome da modalidade.</td>
    </tr>
    <tr align="center">
      <td><code>valor_mod</code></td>
      <td>INTEGER(10)</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Valor da modalidade.</td>
    </tr>
    <tr align="center">
      <td><code>tam_mod</code></td>
      <td>INTEGER(4)</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Quantidade máxima de participantes.</td>
    </tr>
    <tr align="center">
      <td><code>horario_inicio_mod</code></td>
      <td>TIME</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Horário de início da modalidade.</td>
    </tr>
    <tr align="center">
      <td><code>horario_fim_mod</code></td>
      <td>INTEGER(10)</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Horário de término da modalidade.</td>
    </tr>
  </tbody>
</table>

<br><br>

<h3 align="center">Tabela: supervisao</h3>
<p align="center">Relaciona instrutores às modalidades supervisionadas.</p>

<table align="center">
  <thead>
    <tr align="center">
      <th>Coluna</th>
      <th>Tipo</th>
      <th>Nulo</th>
      <th>Restrições</th>
      <th>Descrição</th>
    </tr>
  </thead>
  <tbody>
    <tr align="center">
      <td><code>cod_sup</code></td>
      <td>INTEGER(4)</td>
      <td>NÃO</td>
      <td>PK, UNIQUE</td>
      <td>Identificador da supervisão.</td>
    </tr>
    <tr align="center">
      <td><code>cod_modalidade</code></td>
      <td>INTEGER(4)</td>
      <td>NÃO</td>
      <td>FK</td>
      <td>Modalidade supervisionada.</td>
    </tr>
    <tr align="center">
      <td><code>cpf_instrutor</code></td>
      <td>CHAR(11)</td>
      <td>NÃO</td>
      <td>FK</td>
      <td>Instrutor responsável pela modalidade.</td>
    </tr>
  </tbody>
</table><h3 align="center">Tabela: endereco</h3>
<p align="center">Armazena os endereços utilizados pelas entidades do sistema.</p>

<table align="center">
  <thead>
    <tr align="center">
      <th>Coluna</th>
      <th>Tipo</th>
      <th>Nulo</th>
      <th>Restrições</th>
      <th>Descrição</th>
    </tr>
  </thead>
  <tbody>
    <tr align="center">
      <td><code>cod_end</code></td>
      <td>INTEGER(4)</td>
      <td>NÃO</td>
      <td>PK, UNIQUE</td>
      <td>Identificador único do endereço.</td>
    </tr>
    <tr align="center">
      <td><code>cod_cidade</code></td>
      <td>INTEGER(10)</td>
      <td>NÃO</td>
      <td>FK</td>
      <td>Cidade associada ao endereço.</td>
    </tr>
    <tr align="center">
      <td><code>rua_end</code></td>
      <td>VARCHAR(128)</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Nome da rua.</td>
    </tr>
    <tr align="center">
      <td><code>numero_end</code></td>
      <td>INTEGER(4)</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Número do imóvel.</td>
    </tr>
  </tbody>
</table>

<br><br>

<h3 align="center">Tabela: cidade</h3>
<p align="center">Armazena as cidades cadastradas no sistema.</p>

<table align="center">
  <thead>
    <tr align="center">
      <th>Coluna</th>
      <th>Tipo</th>
      <th>Nulo</th>
      <th>Restrições</th>
      <th>Descrição</th>
    </tr>
  </thead>
  <tbody>
    <tr align="center">
      <td><code>cod_cid</code></td>
      <td>INTEGER(10)</td>
      <td>NÃO</td>
      <td>PK, UNIQUE</td>
      <td>Identificador único da cidade.</td>
    </tr>
    <tr align="center">
      <td><code>nom_cid</code></td>
      <td>VARCHAR(64)</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Nome da cidade.</td>
    </tr>
    <tr align="center">
      <td><code>cod_uf</code></td>
      <td>INTEGER(10)</td>
      <td>NÃO</td>
      <td>FK</td>
      <td>Estado ao qual a cidade pertence.</td>
    </tr>
  </tbody>
</table>

<br><br>

<h3 align="center">Tabela: uf</h3>
<p align="center">Armazena os estados (Unidades Federativas) do sistema.</p>

<table align="center">
  <thead>
    <tr align="center">
      <th>Coluna</th>
      <th>Tipo</th>
      <th>Nulo</th>
      <th>Restrições</th>
      <th>Descrição</th>
    </tr>
  </thead>
  <tbody>
    <tr align="center">
      <td><code>cod_uf</code></td>
      <td>INTEGER(10)</td>
      <td>NÃO</td>
      <td>PK, UNIQUE</td>
      <td>Identificador único do estado.</td>
    </tr>
    <tr align="center">
      <td><code>sig_uf</code></td>
      <td>CHAR(2)</td>
      <td>SIM</td>
      <td>UNIQUE</td>
      <td>Sigla do estado.</td>
    </tr>
  </tbody>
</table>

<br><br>

<h3 align="center">Tabela: cliente</h3>
<p align="center">Armazena os dados cadastrais dos clientes da academia.</p>

<table align="center">
  <thead>
    <tr align="center">
      <th>Coluna</th>
      <th>Tipo</th>
      <th>Nulo</th>
      <th>Restrições</th>
      <th>Descrição</th>
    </tr>
  </thead>
  <tbody>
    <tr align="center">
      <td><code>cpf_cli</code></td>
      <td>CHAR(11)</td>
      <td>NÃO</td>
      <td>PK, UNIQUE</td>
      <td>CPF do cliente.</td>
    </tr>
    <tr align="center">
      <td><code>nom_cli</code></td>
      <td>VARCHAR(128)</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Nome completo do cliente.</td>
    </tr>
    <tr align="center">
      <td><code>tel_cli</code></td>
      <td>VARCHAR(15)</td>
      <td>NÃO</td>
      <td>-</td>
      <td>Telefone de contato do cliente.</td>
    </tr>
    <tr align="center">
      <td><code>sexo_cli</code></td>
      <td>CHAR(1)</td>
      <td>SIM</td>
      <td>-</td>
      <td>Sexo do cliente.</td>
    </tr>
    <tr align="center">
      <td><code>cnpj_acad</code></td>
      <td>CHAR(14)</td>
      <td>NÃO</td>
      <td>FK</td>
      <td>Academia à qual o cliente está vinculado.</td>
    </tr>
    <tr align="center">
      <td><code>cod_endereco</code></td>
      <td>INTEGER(4)</td>
      <td>NÃO</td>
      <td>FK</td>
      <td>Endereço do cliente.</td>
    </tr>
  </tbody>
</table>

<br><br>
