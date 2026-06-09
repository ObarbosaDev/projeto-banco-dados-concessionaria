# Projeto de Banco de Dados - Concessionaria

Projeto desenvolvido para a disciplina de Laboratorio de Banco de Dados.

## Tema

O banco de dados representa uma concessionaria de veiculos, controlando clientes, vendedores, veiculos e vendas realizadas.

## Estrutura do repositorio

```text
projeto-banco-dados-concessionaria/
├── diagramas/
│   ├── modelo-logico.dbml
│   └── modelo-er.png
└── scripts/
    ├── 01_ddl.sql
    ├── 02_dml.sql
    └── 03_dql.sql
```

## Arquivos

- `scripts/01_ddl.sql`: cria o schema, as tabelas e os relacionamentos.
- `scripts/02_dml.sql`: realiza a carga inicial com 105 registros entre as tabelas.
- `scripts/03_dql.sql`: contem consultas estatisticas e relatorios usando `JOIN`, `AVG`, `MAX`, `MIN`, `COUNT` e `SUM`.
- `diagramas/modelo-logico.dbml`: modelo logico em formato DBML.
- `diagramas/modelo-er.png`: diagrama do modelo entidade-relacionamento.

## Modelo logico

Entidades principais:

- `Clientes`: pessoas que compram veiculos.
- `Vendedores`: funcionarios responsaveis pelas vendas.
- `Veiculos`: veiculos disponiveis ou vendidos.
- `Vendas`: registro das vendas realizadas.

Relacionamentos:

- Um cliente pode possuir varias vendas.
- Um vendedor pode realizar varias vendas.
- Um veiculo pode estar vinculado a uma unica venda.

## Ordem de execucao

Execute os scripts nesta ordem:

1. `scripts/01_ddl.sql`
2. `scripts/02_dml.sql`
3. `scripts/03_dql.sql`

## Banco utilizado

Os scripts foram escritos para MySQL.
