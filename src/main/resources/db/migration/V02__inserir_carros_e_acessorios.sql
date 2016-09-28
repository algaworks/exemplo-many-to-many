INSERT INTO carro VALUES (1, 'Celta');
INSERT INTO carro VALUES (2, 'Onix');
INSERT INTO carro VALUES (3, 'Cruze');

INSERT INTO acessorio VALUES (1, 'Banco de couro');
INSERT INTO acessorio VALUES (2, 'GPS');
INSERT INTO acessorio VALUES (3, 'Teto solar');

-- Celta tem GPS
INSERT INTO carro_acessorio VALUES (1, 2);

-- Onix tem Banco de couro e GPS 
INSERT INTO carro_acessorio VALUES (2, 1);
INSERT INTO carro_acessorio VALUES (2, 2);

-- Cruze tem Banco de couro, GPS e teto solar 
INSERT INTO carro_acessorio VALUES (3, 1);
INSERT INTO carro_acessorio VALUES (3, 2);
INSERT INTO carro_acessorio VALUES (3, 3);
 