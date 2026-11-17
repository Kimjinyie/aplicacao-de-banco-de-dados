USE DB_T05429_BEATRIZ_FONTES;

# Parei no exercicio -> 5.2 Operador AND


# CRIAÇÃO DE TABELA PLAYER
CREATE TABLE PLAYER (
ID INT AUTO_INCREMENT PRIMARY KEY,
NAME VARCHAR(100),
AGE INT,
POSITION VARCHAR(50),
SALARY DECIMAL(10, 2),
TEAM_ID INT
);

# INSERINDO DADOS SEM CAMPOS ESPECIFICADOS
INSERT INTO PLAYER VALUES
(NULL, 'Lucas Oliveira', 22, 'Atacante', 85000, 3),
(NULL, 'Gabriel Santos', 28, 'Goleiro', 120000, 1),
(NULL, 'Matheus Costa', 19, 'Meio-campista', 45000, 4),
(NULL, 'Pedro Henrique', 31, 'Zagueiro', 150000, 2),
(NULL, 'Rafael Almeida', 24, 'Ponta-direita', 95000, 5),
(NULL, 'Bruno Ferreira', 26, 'Lateral-esquerdo', 110000, 3),
(NULL, 'Felipe Rodrigues', 21, 'Volante', 70000, 2),
(NULL, 'João Carvalho', 33, 'Atacante', 180000, 1),
(NULL, 'Gustavo Martins', 18, 'Goleiro', 35000, 4),
(NULL, 'André Ribeiro', 29, 'Meio-campista', 135000, 5);

UPDATE PLAYER
SET SALARY = 100000
WHERE ID = 5;

SELECT * FROM PLAYER;

SELECT * FROM PLAYER
WHERE AGE > 25;

SELECT * FROM PLAYER
WHERE SALARY < 100000;







# CRIAÇÃO DE TABELA TEAM
CREATE TABLE TEAM (
ID INT AUTO_INCREMENT PRIMARY KEY,
NAME VARCHAR(100),
CITY VARCHAR(100),
FOUNDATION_YEAR INT,
STADIUM VARCHAR(100)
);

INSERT INTO TEAM VALUES
(NULL, 'Real Madrid', 'Madrid', 1902, 'Santiago Bernabéu'),
(NULL, 'Liverpool', 'Liverpool', 1892, 'Anfield'),
(NULL, 'Barcelona', 'Barcelona', 1899, 'Camp Nou'),
(NULL, 'Santos FC', 'Santos', 1912, 'Vila Belmiro'),
(NULL, 'Manchester United', 'Manchester', 1878, 'Old Trafford'),
(NULL, 'Chelsea', 'Londres', 1905, 'Stamford Bridge'),
(NULL, 'Bayern de Munique', 'Munique', 1900, 'Allianz Arena'),
(NULL, 'Palmeiras', 'São Paulo', 1914, 'Allianz Parque'),
(NULL, 'Juventus', 'Turim', 1897, 'Allianz Stadium'),
(NULL, 'Corinthians', 'São Paulo', 1910, 'Neo Química Arena');

UPDATE TEAM
SET CITY = 'Rio de Janeiro'
WHERE ID = 10;

SELECT * FROM TEAM;

SELECT * FROM TEAM
WHERE FOUNDATION_YEAR > 1900;




# CRIAÇÃO DE TABELA MATCHES
CREATE TABLE MATCHES (
ID INT AUTO_INCREMENT PRIMARY KEY,
HOME_TEAM_ID INT,
AWAY_TEAM_ID INT,
MATCH_DATE DATE,
HOME_SCORE INT,
AWAY_SCORE INT,
STADIUM VARCHAR(100)
);

INSERT INTO MATCHES VALUES
(NULL, 1, 2, '2026-01-15', 3, 1, 'Santiago Bernabéu'),
(NULL, 4, 8, '2026-02-10', 2, 2, 'Vila Belmiro'),
(NULL, 3, 5, '2026-03-05', 0, 1, 'Camp Nou'),
(NULL, 6, 7, '2026-03-18', 4, 2, 'Stamford Bridge'),
(NULL, 9, 10, '2026-04-12', 1, 3, 'Allianz Stadium'),
(NULL, 2, 4, '2026-05-20', 2, 0, 'Anfield'),
(NULL, 8, 1, '2026-06-08', 1, 1, 'Allianz Parque'),
(NULL, 5, 6, '2026-07-14', 3, 2, 'Old Trafford'),
(NULL, 10, 3, '2026-08-22', 0, 0, 'Neo Química Arena'),
(NULL, 7, 9, '2026-09-30', 2, 1, 'Allianz Arena');

DELETE FROM MATCHES WHERE ID = 5;

SELECT * FROM MATCHES;