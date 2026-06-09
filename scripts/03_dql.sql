USE concessionaria;

-- ==========================================================
-- RELATORIO 1: DESEMPENHO DOS VENDEDORES
-- Usa COUNT, SUM, AVG, MAX, MIN e JOIN.
-- ==========================================================
SELECT
    vd.nome AS vendedor,
    COUNT(v.id_venda) AS total_vendas,
    SUM(v.valor_pago) AS faturamento_total,
    AVG(v.valor_pago) AS valor_medio_venda,
    MAX(v.valor_pago) AS maior_venda,
    MIN(v.valor_pago) AS menor_venda
FROM Vendas v
INNER JOIN Vendedores vd ON vd.id_vendedor = v.id_vendedor
GROUP BY vd.id_vendedor, vd.nome
ORDER BY faturamento_total DESC;

-- ==========================================================
-- RELATORIO 2: ESTATISTICAS POR MARCA DE VEICULO
-- Usa COUNT, SUM, AVG, MAX, MIN e JOIN.
-- ==========================================================
SELECT
    vc.marca AS marca,
    COUNT(v.id_venda) AS total_vendas,
    SUM(v.valor_pago) AS faturamento_total,
    AVG(v.valor_pago) AS valor_medio_venda,
    MAX(v.valor_pago) AS maior_valor_vendido,
    MIN(v.valor_pago) AS menor_valor_vendido
FROM Vendas v
INNER JOIN Veiculos vc ON vc.id_veiculo = v.id_veiculo
GROUP BY vc.marca
ORDER BY total_vendas DESC, faturamento_total DESC;

-- ==========================================================
-- RELATORIO 3: VENDAS COM CLIENTE, VENDEDOR E VEICULO
-- Relatorio detalhado usando os relacionamentos do modelo.
-- ==========================================================
SELECT
    v.id_venda,
    c.nome AS cliente,
    vd.nome AS vendedor,
    CONCAT(vc.marca, ' ', vc.modelo) AS veiculo,
    v.data_venda,
    v.valor_pago
FROM Vendas v
INNER JOIN Clientes c ON c.id_cliente = v.id_cliente
INNER JOIN Vendedores vd ON vd.id_vendedor = v.id_vendedor
INNER JOIN Veiculos vc ON vc.id_veiculo = v.id_veiculo
ORDER BY v.data_venda;
