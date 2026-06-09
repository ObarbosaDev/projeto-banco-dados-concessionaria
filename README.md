# Projeto de Banco de Dados - Concessionaria

Projeto desenvolvido para a disciplina de Laboratorio de Banco de Dados.

## Tema

O banco de dados representa uma concessionaria de veiculos, controlando clientes, vendedores, veiculos e vendas realizadas.

## Estrutura do repositorio

```text
projeto-banco-dados-concessionaria/
├── concessionaria.sql
├── concessionaria1.sql
├── concessionaria2.sql
├── diagramas/
│   ├── modelo-logico.dbml
│   └── modelo-er.png
```

## Arquivos

- `concessionaria2.sql`: cria o schema, as tabelas e os relacionamentos.
- `concessionaria1.sql`: realiza a carga inicial com 105 registros entre as tabelas.
- `concessionaria.sql`: contem consultas estatisticas e relatorios usando `JOIN`, `AVG`, `COUNT` e `SUM`.
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

1. `concessionaria2.sql`
2. `concessionaria1.sql`
3. `concessionaria.sql`

## Banco utilizado

Os scripts foram escritos para MySQL.
