USE concessionaria;

-- ==========================================
-- PROJETO DE BANCO DE DADOS - CONCESSIONÁRIA
-- Script DML: carga inicial de dados
-- Total: 105 registros
-- ==========================================

-- ==========================================
-- 1. VENDEDORES (10 registros)
-- ==========================================
INSERT INTO Vendedores (nome, cpf, comissao_percentual) VALUES
('Carlos Silva', '111.222.333-44', 1.50),
('Ana Souza', '555.666.777-88', 2.00),
('Roberto Oliveira', '999.888.777-66', 1.80),
('Juliana Lima', '222.333.444-55', 2.20),
('Ricardo Santos', '444.555.666-77', 1.90),
('Camila Rodrigues', '777.888.999-00', 2.10),
('Pedro Almeida', '333.444.555-66', 1.70),
('Fernanda Costa', '888.999.000-11', 2.50),
('Lucas Martins', '666.777.888-99', 1.60),
('Beatriz Gomes', '000.111.222-33', 2.00);

-- ==========================================
-- 2. CLIENTES (40 registros)
-- ==========================================
INSERT INTO Clientes (nome, cpf, telefone, email) VALUES
('Marcos Almeida', '123.456.789-00', '6199999-1111', 'marcos@email.com'),
('Julia Costa', '987.654.321-11', '6199999-2222', 'julia@email.com'),
('Gabriel Nunes', '111.111.111-11', '6199999-0001', 'gabriel@email.com'),
('Amanda Melo', '222.222.222-22', '6199999-0002', 'amanda@email.com'),
('Bruno Cardoso', '333.333.333-33', '6199999-0003', 'bruno@email.com'),
('Larissa Dias', '444.444.444-44', '6199999-0004', 'larissa@email.com'),
('Thiago Rocha', '555.555.555-55', '6199999-0005', 'thiago@email.com'),
('Marina Freire', '666.666.666-66', '6199999-0006', 'marina@email.com'),
('Felipe Xavier', '777.777.777-77', '6199999-0007', 'felipe@email.com'),
('Leticia Vieira', '888.888.888-88', '6199999-0008', 'leticia@email.com'),
('Rodrigo Ramos', '999.999.999-99', '6199999-0009', 'rodrigo@email.com'),
('Camila Antunes', '000.000.000-00', '6199999-0010', 'camila@email.com'),
('Daniel Rezende', '121.212.121-21', '6199999-0011', 'daniel@email.com'),
('Vanessa Moraes', '343.343.343-34', '6199999-0012', 'vanessa@email.com'),
('Leonardo Porto', '565.565.565-56', '6199999-0013', 'leonardo@email.com'),
('Aline Teixeira', '787.787.787-78', '6199999-0014', 'aline@email.com'),
('Eduardo Fontes', '909.909.909-90', '6199999-0015', 'eduardo@email.com'),
('Priscila Lins', '131.131.131-31', '6199999-0016', 'priscila@email.com'),
('Marcelo Barros', '242.242.242-24', '6199999-0017', 'marcelo@email.com'),
('Tatiane Assis', '353.353.353-35', '6199999-0018', 'tatiane@email.com'),
('Gustavo Neves', '464.464.464-46', '6199999-0019', 'gustavo@email.com'),
('Helena Fagundes', '575.575.575-57', '6199999-0020', 'helena@email.com'),
('Diego Cavalcanti', '686.686.686-68', '6199999-0021', 'diego@email.com'),
('Cintia Meireles', '797.797.797-79', '6199999-0022', 'cintia@email.com'),
('Renato Cunha', '808.808.808-80', '6199999-0023', 'renato@email.com'),
('Sabrina Paiva', '919.919.919-91', '6199999-0024', 'sabrina@email.com'),
('Otavio Malta', '151.151.151-51', '6199999-0025', 'otavio@email.com'),
('Bianca Sales', '262.262.262-26', '6199999-0026', 'bianca@email.com'),
('Arthur Vargas', '373.373.373-37', '6199999-0027', 'arthur@email.com'),
('Patricia Borges', '484.484.484-48', '6199999-0028', 'patricia@email.com'),
('Samuel Toledo', '595.595.595-59', '6199999-0029', 'samuel@email.com'),
('Jessica Franco', '707.707.707-70', '6199999-0030', 'jessica@email.com'),
('Vitor Malta', '818.818.818-81', '6199999-0031', 'vitor@email.com'),
('Debora Pires', '929.929.929-92', '6199999-0032', 'debora@email.com'),
('Caio Jardim', '161.161.161-61', '6199999-0033', 'caio@email.com'),
('Matheus Diniz', '272.272.272-27', '6199999-0034', 'matheus@email.com'),
('Lorena Padilha', '383.383.383-38', '6199999-0035', 'lorena@email.com'),
('Murilo Manso', '494.494.494-49', '6199999-0036', 'murilo@email.com'),
('Natalia Rios', '606.606.606-60', '6199999-0037', 'natalia@email.com'),
('Fabio Guimarães', '717.717.717-71', '6199999-0038', 'fabio@email.com');

-- ==========================================
-- 3. VEÍCULOS (30 registros)
-- ==========================================
INSERT INTO Veiculos (marca, modelo, ano, preco, status) VALUES
('Chevrolet', 'Onix', 2023, 85000.00, 'Vendido'),
('Toyota', 'Corolla', 2024, 150000.00, 'Vendido'),
('Volkswagen', 'Gol', 2022, 65000.00, 'Vendido'),
('Fiat', 'Uno', 2021, 45000.00, 'Vendido'),
('Ford', 'Ka', 2020, 52000.00, 'Vendido'),
('Hyundai', 'HB20', 2023, 79000.00, 'Vendido'),
('Jeep', 'Compass', 2024, 180000.00, 'Vendido'),
('Honda', 'Civic', 2023, 165000.00, 'Vendido'),
('Nissan', 'Kicks', 2022, 110000.00, 'Vendido'),
('Renault', 'Kwid', 2023, 58000.00, 'Vendido'),
('Chevrolet', 'Tracker', 2023, 125000.00, 'Vendido'),
('Toyota', 'Hilux', 2024, 290000.00, 'Vendido'),
('Volkswagen', 'T-Cross', 2023, 135000.00, 'Vendido'),
('Fiat', 'Toro', 2022, 140000.00, 'Vendido'),
('Ford', 'Ranger', 2023, 260000.00, 'Vendido'),
('Hyundai', 'Creta', 2024, 145000.00, 'Vendido'),
('Jeep', 'Renegade', 2022, 115000.00, 'Vendido'),
('Honda', 'HR-V', 2023, 150000.00, 'Vendido'),
('BMW', '320i', 2024, 320000.00, 'Vendido'),
('Audi', 'A3', 2023, 280000.00, 'Vendido'),
('Chevrolet', 'Cruze', 2022, 120000.00, 'Vendido'),
('Toyota', 'Yaris', 2023, 95000.00, 'Vendido'),
('Volkswagen', 'Polo', 2024, 98000.00, 'Vendido'),
('Fiat', 'Cronos', 2023, 88000.00, 'Vendido'),
('Chery', 'Tiggo 5X', 2023, 119000.00, 'Vendido'),
('Peugeot', '208', 2023, 82000.00, 'Disponível'),
('Citroen', 'C3', 2023, 73000.00, 'Disponível'),
('Volvo', 'XC40', 2024, 399000.00, 'Disponível'),
('Mercedes-Benz', 'C200', 2024, 350000.00, 'Disponível'),
('Mitsubishi', 'L200', 2023, 240000.00, 'Disponível');

-- ==========================================
-- 4. VENDAS (25 registros)
-- ==========================================
INSERT INTO Vendas (id_cliente, id_vendedor, id_veiculo, data_venda, valor_pago) VALUES
(1, 1, 1, '2026-01-15', 84000.00),
(2, 2, 2, '2026-02-20', 148000.00),
(3, 3, 3, '2026-02-22', 63000.00),
(4, 4, 4, '2026-03-01', 44000.00),
(5, 5, 5, '2026-03-05', 51000.00),
(6, 6, 6, '2026-03-10', 78500.00),
(7, 7, 7, '2026-03-12', 179000.00),
(8, 8, 8, '2026-03-15', 163000.00),
(9, 9, 9, '2026-03-18', 108000.00),
(10, 10, 10, '2026-03-20', 57000.00),
(11, 1, 11, '2026-03-22', 123000.00),
(12, 2, 12, '2026-03-25', 287000.00),
(13, 3, 13, '2026-03-28', 133000.00),
(14, 4, 14, '2026-04-02', 138000.00),
(15, 5, 15, '2026-04-05', 255000.00),
(16, 6, 16, '2026-04-08', 143000.00),
(17, 7, 17, '2026-04-12', 113000.00),
(18, 8, 18, '2026-04-15', 148000.00),
(19, 9, 19, '2026-04-19', 315000.00),
(20, 10, 20, '2026-04-22', 276000.00),
(21, 1, 21, '2026-04-25', 118000.00),
(22, 2, 22, '2026-04-28', 93000.00),
(23, 3, 23, '2026-05-02', 97000.00),
(24, 4, 24, '2026-05-05', 86000.00),
(25, 5, 25, '2026-05-10', 117000.00);
