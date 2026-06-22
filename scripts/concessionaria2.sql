-- ==========================================================
-- PROJETO DE BANCO DE DADOS - CONCESSIONÁRIA
-- Script DDL: criação do banco, tabelas e relacionamentos
-- ==========================================================

CREATE DATABASE IF NOT EXISTS concessionaria;
USE concessionaria;

-- Tabela de clientes da concessionária.
CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100)
);

-- Tabela de vendedores e percentual de comissão.
CREATE TABLE Vendedores (
    id_vendedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    comissao_percentual DECIMAL(4,2) NOT NULL
);

-- Tabela de veículos cadastrados na concessionária.
CREATE TABLE Veiculos (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    ano INT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    status VARCHAR(20) DEFAULT 'Disponível'
);

-- Tabela de vendas, relacionando cliente, vendedor e veículo.
CREATE TABLE Vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_vendedor INT,
    id_veiculo INT,
    data_venda DATE NOT NULL,
    valor_pago DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_vendedor) REFERENCES Vendedores(id_vendedor),
    FOREIGN KEY (id_veiculo) REFERENCES Veiculos(id_veiculo)
);
