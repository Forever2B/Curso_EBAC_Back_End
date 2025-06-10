-- Inserindo os dados
-- Inserindo clientes
INSERT INTO store.customer (name, email, phone) VALUES
('Ana Souza', 'ana.souza@email.com', '11999998888'),
('Bruno Lima', 'bruno.lima@email.com', '21988887777'),
('Carla Dias', 'carla.dias@email.com', NULL),
('Diego Martins', 'diego.m@email.com', '31977776666');

-- Inserindo produtos
INSERT INTO store.product (name, description, has_stock) VALUES
('Teclado Mecânico', 'Teclado RGB com switches azuis', TRUE),
('Mouse Gamer', 'Mouse com 6 botões e DPI ajustável', TRUE),
('Cadeira Gamer', 'Ergonômica com apoio lombar', FALSE),
('Monitor 27"', 'Full HD, painel IPS', TRUE);

-- Inserindo estoque (conectado ao ID dos produtos)
INSERT INTO store.product_stock (product_id, quantity) VALUES
(1, 15),  -- Teclado Mecânico
(2, 30),  -- Mouse Gamer
(3, 0),   -- Cadeira Gamer (sem estoque)
(4, 10);  -- Monitor 27"

-- insere mais 50.000 registros falsos pra forçar o uso do indice
INSERT INTO store.customer (name, email, phone)
SELECT 
  'Cliente ' || i AS name,
  'cliente' || i || '@example.com' AS email,
  -- Gera um telefone fictício “(11) 90000-0000” somando i
  '11' || LPAD((10000 + (i % 90000))::text, 5, '0') || LPAD((i % 10000)::text, 4, '0') AS phone
FROM generate_series(1, 50000) AS s(i);