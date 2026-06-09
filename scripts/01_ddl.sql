CREATE DATABASE IF NOT EXISTS concessionaria;
USE concessionaria;

CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100)
) ENGINE=InnoDB;

CREATE TABLE Vendedores (
    id_vendedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    comissao_percentual DECIMAL(4,2) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE Veiculos (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    ano INT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    status VARCHAR(20) DEFAULT 'Disponivel'
) ENGINE=InnoDB;

CREATE TABLE Vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_vendedor INT NOT NULL,
    id_veiculo INT NOT NULL,
    data_venda DATE NOT NULL,
    valor_pago DECIMAL(10,2) NOT NULL,

    CONSTRAINT uk_vendas_veiculo UNIQUE (id_veiculo),

    CONSTRAINT fk_vendas_clientes
        FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),

    CONSTRAINT fk_vendas_vendedores
        FOREIGN KEY (id_vendedor) REFERENCES Vendedores(id_vendedor),

    CONSTRAINT fk_vendas_veiculos
        FOREIGN KEY (id_veiculo) REFERENCES Veiculos(id_veiculo)
) ENGINE=InnoDB;
