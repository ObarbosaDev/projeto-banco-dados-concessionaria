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
    |-- concessionaria2.sql
    |-- concessionaria1.sql
    `-- concessionaria.sql
```

## Arquivos do Projeto

| Arquivo | O que contém |
| --- | --- |
| `diagramas/modelo-er.png` | Imagem do diagrama entidade-relacionamento. |
| `diagramas/modelo-logico.dbml` | Modelo lógico escrito em DBML. |
| `scripts/concessionaria2.sql` | Script DDL, usado para criar o banco, as tabelas e os relacionamentos. |
| `scripts/concessionaria1.sql` | Script DML, usado para inserir os dados iniciais no banco. |
| `scripts/concessionaria.sql` | Script DQL, usado para fazer consultas e relatórios com os dados. |

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

1. `scripts/concessionaria2.sql`
   - cria o banco de dados `concessionaria`;
   - cria as tabelas;
   - cria as chaves primárias e estrangeiras.

2. `scripts/concessionaria1.sql`
   - insere os dados iniciais;
   - o script possui 105 registros distribuídos entre as tabelas.

3. `scripts/concessionaria.sql`
   - executa consultas para gerar relatórios e estatísticas.

## Consultas

O script de consultas usa `JOIN` para juntar informações de mais de uma tabela.

Com ele, é possível verificar, por exemplo:

- desempenho dos vendedores;
- total de vendas realizadas;
- faturamento total;
- valor médio das vendas;
- estatísticas agrupadas por marca de veículo.

## Tecnologias Utilizadas

- MySQL
- SQL
- DBML
- GitHub
