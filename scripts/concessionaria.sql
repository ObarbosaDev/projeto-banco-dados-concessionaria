USE concessionaria;

-- ==========================================================
-- PROJETO DE BANCO DE DADOS - CONCESSIONÁRIA
-- Script DQL: relatórios, views, joins e trigger
-- ==========================================================

-- ==========================================================
-- 1. RELATÓRIO: DESEMPENHO DOS VENDEDORES
-- ==========================================================
SELECT
    vd.nome AS Vendedor,
    COUNT(v.id_venda) AS Total_Vendas,
    SUM(v.valor_pago) AS Faturamento_Total,
    AVG(v.valor_pago) AS Valor_Medio,
    MAX(v.valor_pago) AS Maior_Venda,
    MIN(v.valor_pago) AS Menor_Venda
FROM Vendas v
INNER JOIN Vendedores vd ON v.id_vendedor = vd.id_vendedor
GROUP BY vd.id_vendedor, vd.nome;

-- ==========================================================
-- 2. RELATÓRIO: ESTATÍSTICAS POR MARCA DE VEÍCULO
-- ==========================================================
SELECT
    vc.marca AS Marca,
    COUNT(v.id_venda) AS Total_Vendas,
    SUM(v.valor_pago) AS Faturamento_Total,
    AVG(v.valor_pago) AS Valor_Medio,
    MAX(v.valor_pago) AS Maior_Valor,
    MIN(v.valor_pago) AS Menor_Valor
FROM Vendas v
INNER JOIN Veiculos vc ON v.id_veiculo = vc.id_veiculo
GROUP BY vc.marca;

-- ==========================================================
-- 3. TABELA E TRIGGER DE AUDITORIA DE PREÇO DOS VEÍCULOS
-- ==========================================================
CREATE TABLE IF NOT EXISTS Audit_Preco_Veiculos (
    id_audit INT AUTO_INCREMENT PRIMARY KEY,
    id_veiculo INT,
    modelo_veiculo VARCHAR(50),
    preco_antigo DECIMAL(10,2),
    preco_novo DECIMAL(10,2),
    data_alteracao DATETIME DEFAULT CURRENT_TIMESTAMP,
    usuario_que_alterou VARCHAR(50)
);

DROP TRIGGER IF EXISTS tgr_audit_preco_veiculo;

DELIMITER $$

CREATE TRIGGER tgr_audit_preco_veiculo
AFTER UPDATE ON Veiculos
FOR EACH ROW
BEGIN
    IF OLD.preco <> NEW.preco THEN
        INSERT INTO Audit_Preco_Veiculos (
            id_veiculo,
            modelo_veiculo,
            preco_antigo,
            preco_novo,
            usuario_que_alterou
        ) VALUES (
            OLD.id_veiculo,
            OLD.modelo,
            OLD.preco,
            NEW.preco,
            USER()
        );
    END IF;
END$$

DELIMITER ;

-- ==========================================================
-- 4. VIEWS
-- ==========================================================
CREATE OR REPLACE VIEW v_relatorio_vendas_detalhado AS
SELECT
    v.id_venda AS Codigo_Venda,
    v.data_venda AS Data_Venda,
    c.nome AS Nome_Cliente,
    c.cpf AS CPF_Cliente,
    vd.nome AS Nome_Vendedor,
    vc.marca AS Marca,
    vc.modelo AS Modelo,
    vc.ano AS Ano,
    v.valor_pago AS Valor_Final
FROM Vendas v
INNER JOIN Clientes c ON v.id_cliente = c.id_cliente
INNER JOIN Vendedores vd ON v.id_vendedor = vd.id_vendedor
INNER JOIN Veiculos vc ON v.id_veiculo = vc.id_veiculo;

CREATE OR REPLACE VIEW v_comissoes_vendedores AS
SELECT
    vd.nome AS Vendedor,
    COUNT(v.id_venda) AS Quantidade_Vendas,
    SUM(v.valor_pago) AS Faturamento_Total,
    SUM(v.valor_pago * (vd.comissao_percentual / 100)) AS Comissao_A_Receber
FROM Vendas v
INNER JOIN Vendedores vd ON v.id_vendedor = vd.id_vendedor
GROUP BY vd.id_vendedor, vd.nome;

-- ==========================================================
-- 5. CONSULTAS DAS VIEWS
-- ==========================================================
SELECT * FROM v_relatorio_vendas_detalhado;

SELECT * FROM v_comissoes_vendedores;

SELECT *
FROM v_comissoes_vendedores
WHERE Faturamento_Total > 100000;

-- ==========================================================
-- 6. EXEMPLOS DE JOINS
-- ==========================================================

-- INNER JOIN: mostra apenas veículos que possuem venda registrada.
SELECT
    vc.marca,
    vc.modelo,
    v.data_venda,
    v.valor_pago
FROM Veiculos vc
INNER JOIN Vendas v ON vc.id_veiculo = v.id_veiculo;

-- LEFT JOIN: mostra todos os veículos, inclusive os que ainda não foram vendidos.
SELECT
    vc.marca,
    vc.modelo,
    vc.preco,
    v.id_venda AS Codigo_Venda
FROM Veiculos vc
LEFT JOIN Vendas v ON vc.id_veiculo = v.id_veiculo;

-- RIGHT JOIN: mostra todos os clientes, inclusive clientes sem venda registrada.
SELECT
    c.nome AS Nome_Cliente,
    v.id_venda AS Codigo_Compra
FROM Vendas v
RIGHT JOIN Clientes c ON v.id_cliente = c.id_cliente;

-- ==========================================================
-- 7. TESTE DO TRIGGER DE AUDITORIA
-- ==========================================================
UPDATE Veiculos
SET preco = 89000.00
WHERE id_veiculo = 1;

SELECT * FROM Audit_Preco_Veiculos;
