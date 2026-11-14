USE DB_T05429_BEATRIZ_FONTES;

CREATE TABLE PRODUCT (
ID INT AUTO_INCREMENT PRIMARY KEY,
NAME VARCHAR(64) NOT NULL,
CATEGORY VARCHAR(64) NOT NULL,
PRICE DOUBLE(10, 2),
STOCK INT
);

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

SELECT * FROM PRODUCT



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

SELECT * FROM CUSTOMER







CREATE TABLE ORDER_TABLE (
ID INT AUTO_INCREMENT PRIMARY KEY,
CUSTOMER_NAME VARCHAR(128) NOT NULL,
PRODUCT_NAME VARCHAR(128) NOT NULL,
QUANTITY INT,
TOTAL_VALUE DECIMAL(10, 2)
);



