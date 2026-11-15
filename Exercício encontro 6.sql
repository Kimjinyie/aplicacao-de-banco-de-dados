USE DB_T05429_BEATRIZ_FONTES;

# CRIAÇÃO DE TABELA PRODUCT
CREATE TABLE PRODUCT (
ID INT AUTO_INCREMENT PRIMARY KEY,
NAME VARCHAR(64) NOT NULL,
CATEGORY VARCHAR(64) NOT NULL,
PRICE DOUBLE(10, 2),
STOCK INT
);

# ALTERAÇÃO DO PRICE PARA DECIMAL
ALTER TABLE PRODUCT MODIFY COLUMN PRICE DECIMAL(10, 2);

# INSERINDO DADOS COM CAMPOS ESPECIFICADOS
INSERT INTO PRODUCT (NAME, CATEGORY, PRICE, STOCK) VALUES
('Mouse sem fio', 'Eletrônicos', 89.90, 45),
('Cadeira ergonômica', 'Móveis', 759.00, 12),
('Garrafa térmica', 'Utilidades domésticas', 64.50, 38),
('Teclado mecânico', 'Informática', 219.90, 27),
('Mochila executiva', 'Acessórios', 149.90, 19);

# INSERINDO DADOS SEM CAMPOS ESPECIFICADOS
INSERT INTO PRODUCT VALUES
(NULL, 'Liquidificador', 'Eletrodomésticos', 189.90, 23),
(NULL, 'Fone Bluetooth', 'Eletrônicos', 129.90, 56),
(NULL, 'Mesa dobrável', 'Móveis', 279.00, 14),
(NULL, 'Cafeteira elétrica', 'Eletrodomésticos', 159.50, 31),
(NULL, 'Luminária LED', 'Iluminação', 74.90, 42);

# CONSULTAS COM SELECT
SELECT * FROM PRODUCT
SELECT * FROM PRODUCT WHERE PRICE >200;
SELECT * FROM PRODUCT ORDER BY PRICE DESC;
SELECT * FROM PRODUCT LIMIT 5;

#---------------SCRIPT DA TABELA CUSTOMER---------------#

# CRIAÇÃO DE TABELA CUSTOMER
CREATE TABLE CUSTOMER (
ID INT AUTO_INCREMENT PRIMARY KEY,
NAME VARCHAR(128) NOT NULL,
AGE INT,
CITY VARCHAR(128) NOT NULL,
EMAIL VARCHAR(200)
);

# INSERINDO DADOS COM CAMPOS ESPECIFICADOS
INSERT INTO CUSTOMER (NAME, AGE, CITY, EMAIL) VALUES
('Lucas Martins', 28, 'São Paulo', 'lucas@email.com'),
('Mariana Costa', 34, 'Santos', 'mari@email.com'),
('Pedro Almeida', 22, 'Curitiba', 'pedro@email.com'),
('Juliana Ferreira', 41, 'Campinas', 'ju@email.com'),
('Rafael Oliveira', 30, 'Rio de Janeiro', 'rafa@email.com');

# INSERINDO DADOS SEM CAMPOS ESPECIFICADOS
INSERT INTO CUSTOMER VALUES
(NULL, 'Camila Souza', 26, 'Florianópolis', 'cami@email.com'),
(NULL, 'Gabriel Santos', 37, 'Belo Horizonte', 'gabi@email.com'),
(NULL, 'Beatriz Lima', 25, 'Recife', 'bia@email.com'),
(NULL, 'Felipe Rodrigues', 45, 'Salvador', 'felipe@email.com'),
(NULL, 'Ana Carvalho', 32, 'Porto Alegre', 'ana@email.com');

# UPDATE DAS LINHAS 3,6 E 8 PARA IDADE 17
UPDATE CUSTOMER
SET AGE = 17
WHERE ID IN (3, 6, 8);

# CONSULTAS COM SELECT
SELECT * FROM CUSTOMER
SELECT * FROM CUSTOMER WHERE AGE >18;
SELECT * FROM CUSTOMER ORDER BY AGE DESC;
SELECT * FROM CUSTOMER LIMIT 5;
SELECT * FROM CUSTOMER WHERE NAME LIKE 'Bea%';
SELECT * FROM CUSTOMER WHERE NAME LIKE '%s';
SELECT * FROM CUSTOMER WHERE NAME LIKE '%ei%';
SELECT * FROM CUSTOMER WHERE NAME LIKE '____ana _____';

#---------------SCRIPT DA TABELA DE PEDIDOS---------------#

# CRIAÇÃO DE TABELA ORDER_TABLE
CREATE TABLE ORDER_TABLE (
ID INT AUTO_INCREMENT PRIMARY KEY,
CUSTOMER_NAME VARCHAR(128) NOT NULL,
PRODUCT_NAME VARCHAR(128) NOT NULL,
QUANTITY INT,
TOTAL_VALUE DECIMAL(10, 2)
);

# INSERINDO DADOS COM CAMPOS ESPECIFICADOS
INSERT INTO ORDER_TABLE (CUSTOMER_NAME, PRODUCT_NAME, QUANTITY, TOTAL_VALUE) VALUES
('Lucas Martins', 'Mouse sem fio', 2, 179.80),
('Mariana Costa', 'Cadeira ergonômica', 1, 759.00),
('Pedro Almeida', 'Fone Bluetooth', 3, 389.70),
('Juliana Ferreira', 'Cafeteira elétrica', 2, 319.00),
('Rafael Oliveira', 'Teclado mecânico', 1, 219.90);

# INSERINDO DADOS SEM CAMPOS ESPECIFICADOS
INSERT INTO ORDER_TABLE VALUES
(NULL, 'Camila Souza', 'Mochila executiva', 2, 299.80),
(NULL, 'Gabriel Santos', 'Liquidificador', 1, 189.90),
(NULL, 'Beatriz Lima', 'Garrafa térmica', 4, 258.00),
(NULL, 'Felipe Rodrigues', 'Mesa dobrável', 2, 558.00),
(NULL, 'Ana Carvalho', 'Luminária LED', 3, 224.70);

# CONSULTAS COM SELECT
SELECT * FROM ORDER_TABLE
SELECT * FROM ORDER_TABLE WHERE QUANTITY >2;






