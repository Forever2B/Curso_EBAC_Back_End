-- -- -- -- Criar o banco de dados
-- CREATE DATABASE db;

-- -- -- -- Conecta ao banco de dados usando `db` e executar o resto:

-- -- -- -- Cria o schema
-- CREATE SCHEMA store;

-- -- Tabela de clientes
-- CREATE TABLE store.customer (
--     customer_id SERIAL PRIMARY KEY,
--     name VARCHAR(50) NOT NULL,
--     email VARCHAR(80) NOT NULL UNIQUE,
--     phone VARCHAR(20) UNIQUE
-- );

-- -- Tabela dos produtos
-- CREATE TABLE store.product (
--     product_id SERIAL PRIMARY KEY,
--     name VARCHAR(50) NOT NULL,
--     description VARCHAR(250),
--     has_stock BOOLEAN NOT NULL DEFAULT TRUE
-- );

-- -- Tabela de estoque de produtos (relacionada com a tabela product)
-- CREATE TABLE store.product_stock (
--     stock_id SERIAL PRIMARY KEY,
--     product_id INTEGER NOT NULL UNIQUE,
--     quantity INTEGER NOT NULL CHECK (quantity >= 0),
--     CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES store.product(product_id) ON DELETE CASCADE
-- );

-- Criação dos indices pras buscas
-- Índice para buscas por nome do cliente
CREATE INDEX idx_customer_name ON store.customer(name);

