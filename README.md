# Projeto de Banco de Dados - Concessionaria

Repositorio desenvolvido pelo **Grupo 5** para a disciplina de **Laboratorio de Banco de Dados**.

O projeto apresenta um banco de dados relacional para uma concessionaria de veiculos, contemplando modelo entidade-relacionamento, script DDL, carga inicial DML e consultas DQL com relatorios e estatisticas.

## Objetivo

O objetivo deste trabalho e demonstrar a construcao de um projeto de banco de dados completo, desde a modelagem logica ate a criacao das tabelas, insercao de dados e elaboracao de consultas para analise das informacoes cadastradas.

O modelo foi pensado para representar uma concessionaria que controla:

- clientes cadastrados;
- vendedores da concessionaria;
- veiculos disponiveis ou vendidos;
- vendas realizadas, relacionando cliente, vendedor e veiculo.

## Estrutura do Repositorio

```text
projeto-banco-dados-concessionaria/
|-- README.md
|-- diagramas/
|   |-- modelo-er.png
|   `-- modelo-logico.dbml
`-- scripts/
    |-- concessionaria2.sql
    |-- concessionaria1.sql
    `-- concessionaria.sql
```

## Entregaveis

| Requisito | Arquivo | Descricao |
| --- | --- | --- |
| Projeto logico | `diagramas/modelo-er.png` | Diagrama do modelo entidade-relacionamento. |
| Modelo em texto | `diagramas/modelo-logico.dbml` | Representacao do modelo logico em DBML. |
| Script DDL | `scripts/concessionaria2.sql` | Criacao do banco, tabelas, chaves primarias e chaves estrangeiras. |
| Script DML | `scripts/concessionaria1.sql` | Carga inicial com 105 registros distribuidos entre as tabelas. |
| Script DQL | `scripts/concessionaria.sql` | Consultas de relatorio e estatisticas usando relacionamentos entre tabelas. |

## Modelo de Dados

O banco de dados utiliza quatro tabelas principais:

- `Clientes`: armazena os dados dos clientes da concessionaria.
- `Vendedores`: armazena os vendedores e o percentual de comissao.
- `Veiculos`: armazena os veiculos, seus valores e status.
- `Vendas`: registra as vendas realizadas, relacionando cliente, vendedor e veiculo.

## Relacionamentos

O modelo possui os seguintes relacionamentos:

- `Vendas.id_cliente` referencia `Clientes.id_cliente`.
- `Vendas.id_vendedor` referencia `Vendedores.id_vendedor`.
- `Vendas.id_veiculo` referencia `Veiculos.id_veiculo`.

Na pratica, a tabela `Vendas` funciona como a tabela central do projeto, pois conecta os dados de clientes, vendedores e veiculos para permitir consultas e relatorios.

## Passo a Passo de Execucao

Para testar o projeto em um banco MySQL, execute os arquivos nesta ordem:

1. Execute `scripts/concessionaria2.sql` para criar o banco de dados `concessionaria` e suas tabelas.
2. Execute `scripts/concessionaria1.sql` para inserir a carga inicial de dados.
3. Execute `scripts/concessionaria.sql` para gerar os relatorios e estatisticas.

## Consultas e Relatorios

O script DQL apresenta consultas que usam `JOIN` para combinar dados das tabelas relacionadas.

As consultas permitem analisar:

- desempenho dos vendedores;
- quantidade de vendas realizadas;
- faturamento total;
- valor medio das vendas;
- estatisticas agrupadas por marca de veiculo.

## Tecnologias Utilizadas

- MySQL
- SQL
- DBML
- Git e GitHub

## Observacoes

Os scripts SQL foram mantidos com a estrutura original desenvolvida pelo grupo, apenas organizados em pastas para facilitar a leitura e a avaliacao do projeto.

Este repositorio foi preparado para armazenar os arquivos solicitados na atividade e servir como material de apoio para a apresentacao em sala.
