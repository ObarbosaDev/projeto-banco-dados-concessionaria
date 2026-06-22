# Projeto de Banco de Dados - Concessionária

Repositório desenvolvido pelo **Grupo 5** para a disciplina de **Laboratório de Banco de Dados**.

O tema escolhido foi uma **concessionária de veículos**. A ideia do projeto é simular um banco de dados simples para controlar clientes, vendedores, veículos e vendas realizadas.

## Sobre o Projeto

Neste trabalho, criamos um modelo de banco de dados com quatro tabelas principais:

- `Clientes`: guarda os dados dos clientes da concessionária.
- `Vendedores`: guarda os dados dos vendedores e o percentual de comissão.
- `Veiculos`: guarda os dados dos veículos, como marca, modelo, ano, preço e status.
- `Vendas`: registra as vendas feitas, relacionando cliente, vendedor e veículo.

A tabela `Vendas` é a principal ligação entre as outras tabelas, pois cada venda precisa informar qual cliente comprou, qual vendedor realizou a venda e qual veículo foi vendido.

## Estrutura do Repositório

```text
projeto-banco-dados-concessionaria/
|-- README.md
|-- diagramas/
|   |-- modelo-er.png
|   `-- modelo-logico.dbml
`-- scripts/
    |-- 01_ddl_criacao_banco.sql
    |-- 02_dml_carga_inicial.sql
    `-- 03_dql_consultas_views_joins.sql
```

## Arquivos do Projeto

| Arquivo | O que contém |
| --- | --- |
| `diagramas/modelo-er.png` | Imagem do diagrama entidade-relacionamento. |
| `diagramas/modelo-logico.dbml` | Modelo lógico escrito em DBML. |
| `scripts/01_ddl_criacao_banco.sql` | Script DDL, usado para criar o banco, as tabelas e os relacionamentos. |
| `scripts/02_dml_carga_inicial.sql` | Script DML, usado para inserir os dados iniciais no banco. |
| `scripts/03_dql_consultas_views_joins.sql` | Script com consultas, relatórios, views, exemplos de joins e trigger de auditoria. |

## Relacionamentos

O banco usa a tabela `Vendas` para relacionar as outras tabelas:

- uma venda pertence a um cliente;
- uma venda é feita por um vendedor;
- uma venda está ligada a um veículo.

No script, esses relacionamentos são feitos por meio de chaves estrangeiras:

- `Vendas.id_cliente` referencia `Clientes.id_cliente`;
- `Vendas.id_vendedor` referencia `Vendedores.id_vendedor`;
- `Vendas.id_veiculo` referencia `Veiculos.id_veiculo`.

## Como Executar

Para testar o projeto no MySQL, execute os scripts nesta ordem:

1. `scripts/01_ddl_criacao_banco.sql`
   - cria o banco de dados `concessionaria`;
   - cria as tabelas;
   - cria as chaves primárias e estrangeiras;
   - caso o banco já exista, ele é recriado para evitar dados duplicados.

2. `scripts/02_dml_carga_inicial.sql`
   - insere os dados iniciais;
   - o script possui 105 registros distribuídos entre as tabelas.

3. `scripts/03_dql_consultas_views_joins.sql`
   - executa consultas para gerar relatórios e estatísticas;
   - cria views para facilitar a leitura dos dados;
   - apresenta exemplos de joins;
   - cria e testa um trigger de auditoria.

## Consultas

O script de consultas usa `JOIN` para juntar informações de mais de uma tabela.

Com ele, é possível verificar, por exemplo:

- desempenho dos vendedores;
- total de vendas realizadas;
- faturamento total;
- valor médio das vendas;
- maior e menor valor de venda;
- estatísticas agrupadas por marca de veículo.

## Views e Trigger

Além das consultas diretas, o projeto também possui views para facilitar a leitura dos dados:

- `v_relatorio_vendas_detalhado`: mostra as vendas com dados do cliente, vendedor e veículo.
- `v_comissoes_vendedores`: mostra o faturamento e a comissão de cada vendedor.

Também foi criado um trigger de auditoria para registrar alterações no preço dos veículos. Quando o preço de um veículo é alterado, o banco guarda o preço antigo, o preço novo, o veículo alterado, a data e o usuário que fez a alteração.

## Tecnologias Utilizadas

- MySQL
- SQL
- DBML
- GitHub
