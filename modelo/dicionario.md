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
