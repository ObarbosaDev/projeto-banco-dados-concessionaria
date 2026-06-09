USE concessionaria;

-- ==========================================================
-- RELATÓRIO 1: DESEMPENHO DOS VENDEDORES
-- ==========================================================
SELECT 
    'Desempenho Vendedor' AS Tipo_Relatorio,
    vd.nome AS Categoria_Agrupada,
    COUNT(v.id_venda) AS Total_Vendas,
    SUM(v.valor_pago) AS Faturamento_Total,
    AVG(v.valor_pago) AS Valor_Medio
FROM Vendas v
INNER JOIN Vendedores vd ON v.id_vendedor = vd.id_vendedor
GROUP BY vd.id_vendedor, vd.nome

UNION ALL

-- Linha para separar visualmente os relatórios no terminal
SELECT '---', '---', NULL, NULL, NULL

UNION ALL

-- ==========================================================
-- RELATÓRIO 2: ESTATÍSTICAS POR MARCA DE VEÍCULO
-- ==========================================================
SELECT 
    'Estatística Marca' AS Tipo_Relatorio,
    vc.marca AS Categoria_Agrupada,
    COUNT(v.id_venda) AS Total_Vendas,
    SUM(v.valor_pago) AS Faturamento_Total,
    AVG(v.valor_pago) AS Valor_Medio
FROM Vendas v
INNER JOIN Veiculos vc ON v.id_veiculo = vc.id_veiculo
GROUP BY vc.marca;