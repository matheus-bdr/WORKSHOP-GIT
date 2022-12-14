\\primeiro commit do workshop
create database desafio9;
use  desafio9;

CREATE TABLE EX_CLIENTE(
codcliente int,
nome varchar(60),
datanascimento date,
cpf varchar(11),
CONSTRAINT pk_ex_cliente PRIMARY KEY (codcliente)
);

\\alterações para a aula 
CREATE TABLE EX_PEDIDO(
codpedido int,
codcliente int,
datapedido date,
nf varchar(12),
valortotal decimal(10,2),
CONSTRAINT pk_ex_pedido PRIMARY KEY (codpedido),
CONSTRAINT pk_ex_pedido_cliente FOREIGN KEY (codcliente) REFERENCES
EX_CLIENTE(codcliente) );
CREATE TABLE EX_PRODUTO(
codproduto int,
descricao varchar(100),
CONSTRAINT pk_ex_produto PRIMARY KEY (codproduto)
);

CREATE TABLE EX_ITEMPEDIDO(
codpedido int,
numeroitem int,
valorunitario decimal(10,2),
quantidade int,
codproduto int,
CONSTRAINT pk_itempedido PRIMARY KEY (codpedido, numeroitem),
CONSTRAINT fk_codpedido FOREIGN KEY (codpedido) REFERENCES EX_PEDIDO (codpedido),
CONSTRAINT fk_itempedido_produto FOREIGN KEY (codproduto) REFERENCES EX_PRODUTO
(codproduto) );

INSERT INTO EX_CLIENTE VALUES (1, 'Sylvio Barbon', TO_DATE('05/12/1984',
'DD/MM/YYYY'), '12315541212');

INSERT INTO EX_CLIENTE VALUES (2, 'Antonio Carlos da Silva', TO_DATE('01/11/1970',
'DD/MM/YYYY'), '12313345512');

INSERT INTO EX_CLIENTE VALUES (3, 'Thiago Ribeiro', TO_DATE('15/11/1964',
'DD/MM/YYYY'), '12315544411');

INSERT INTO EX_CLIENTE VALUES (4, 'Carlos Eduardo', TO_DATE('25/10/1924',
'DD/MM/YYYY'), '42515541212');

INSERT INTO EX_CLIENTE VALUES (5, 'Maria Cristina Goes', TO_DATE('03/11/1981',
'DD/MM/YYYY'), '67715541212');

INSERT INTO EX_CLIENTE VALUES (6, 'Ruan Manoel Fanjo', TO_DATE('06/12/1983',
'DD/MM/YYYY'), '32415541212');

INSERT INTO EX_CLIENTE VALUES (7, 'Patrícia Marques', TO_DATE('01/02/1944',
'DD/MM/YYYY'), '77715541212');

INSERT INTO EX_PRODUTO VALUES (1, 'Mouse');
INSERT INTO EX_PRODUTO VALUES (2, 'Teclado');
INSERT INTO EX_PRODUTO VALUES (3, 'Monitor LCD');
INSERT INTO EX_PRODUTO VALUES (4, 'Caixas Acústicas');
INSERT INTO EX_PRODUTO VALUES (5, 'Scanner de Mesa');

INSERT INTO EX_PEDIDO VALUES (1, 1, TO_DATE('01/04/2012', 'DD/MM/YYYY'), '00001',
400.00); 

INSERT INTO EX_ITEMPEDIDO VALUES (1, 1, 10.90, 1, 1);

INSERT INTO EX_ITEMPEDIDO VALUES (1, 2, 389.10, 1, 3);

INSERT INTO EX_PEDIDO VALUES (2, 2, TO_DATE('01/04/2012', 'DD/MM/YYYY'), '00002',
10.90); 
INSERT INTO EX_ITEMPEDIDO VALUES (2, 1, 10.90, 1, 1);

INSERT INTO EX_PEDIDO VALUES (3, 2, TO_DATE('01/04/2012', 'DD/MM/YYYY'), '00003',
21.80); 
INSERT INTO EX_ITEMPEDIDO VALUES (3, 1, 10.90, 1, 1);

INSERT INTO EX_PEDIDO VALUES (4, 3, TO_DATE('01/05/2012', 'DD/MM/YYYY'), '00004',
169.10); 
INSERT INTO EX_ITEMPEDIDO VALUES (4, 1, 10.90, 1, 1);

INSERT INTO EX_ITEMPEDIDO VALUES (4, 2, 15.90, 2, 2);
INSERT INTO EX_ITEMPEDIDO VALUES (4, 3, 25.50, 1, 4);
INSERT INTO EX_ITEMPEDIDO VALUES (4, 4, 100.90, 1, 5);
INSERT INTO EX_PEDIDO VALUES (5, 4, TO_DATE('01/05/2012', 'DD/MM/YYYY'), '00005',
100.90); INSERT INTO EX_ITEMPEDIDO VALUES (5, 1, 100.90, 1, 5);

INSERT INTO EX_PEDIDO VALUES (6, 6, TO_DATE('02/05/2012', 'DD/MM/YYYY'), '00006',
51.35); INSERT INTO EX_ITEMPEDIDO VALUES (6, 1, 25.50, 2, 4)

create VIEW ULTIMO_PEDIDO_VIEW as
select EX_CLIENTE VALUES
