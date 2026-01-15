create database Restaurante;
use Restaurante;
create table Restaurante(
id_funcionario int auto_increment primary key,
nome_completo varchar(255),
cpf varchar(14),
data_nascimento date,
endereço varchar(255),
telefone varchar(15),
email varchar (100),
cargo varchar(100),
salario decimal(10,2),
data_admissão date
);


create table clientes(
id_cliente int auto_increment primary key,
nome_completo varchar(255),
cpf varchar(14),
data_nascimento date,
endereço_residêncial varchar(255),
telefone varchar(15),
email varchar(100),
data_cadastro date
);

desc Produtos;
create table Produtos(
id_produto int auto_increment primary key,
nome varchar(255),
descrição text,
preço decimal(10,2),
categoria varchar(100)
);

drop table Pedidos;
create table Pedidos(
id_pedido int auto_increment primary key,
id_cliente int,
id_funcionario int,
id_produto int,
quantidade int,
preço decimal(10,2),
data_pedido date,
status_pedido varchar(50),
/*foreign key (id_cliente) references clientes(id_cliente)*/
/*foreign key (id_funcionario) references funcionários(id_funcionario)*/
foreign key (id_produto) references produtos(id_produto)
);

desc info_produtos;
create table info_produtos(
id_info int auto_increment primary key,
id_produto int,
ingredientes text,
fornecedor varchar(255),
foreign key (id_produto) references produtos(id_produto)
);

use Restaurante;

select * from Restaurante;

insert into Restaurante (nome_completo, cpf , data_nascimento, endereço, telefone, email, cargo, salario, data_admissão) values
('Ricardo Sousa', '111.222.333-44', '1992-05-12', 'Rua Harmonia 157, São Paulo', '11987651234','ricardo.sousa@email.com', 'Chefe de Cozinha', 6000.00, '2019-03-15');
insert into Restaurante (nome_completo) values ('Ricardo Souza');

insert into Restaurante (nome_completo, cpf , data_nascimento, endereço, telefone, email, cargo, salario, data_admissão) values
('Lívia Castro', '222.333.444-55', '1989-11-25', 'Av. Rebouças 1234, São Paulo', '11987653421', 'livia.castro@email.com', 'Subgerente', 5500.00, '2019-06-20');
insert into Restaurante (nome_completo) values ('Lívia Castro');

insert into Restaurante (nome_completo, cpf , data_nascimento, endereço, telefone, email, cargo, salario, data_admissão) values
('Marcos Lima', '333.444.555-66', '1985-04-17', 'Rua Augusta 2020, São Paulo', '11987655678', 'marcos.lima@email.com', 'Barman', 2800.00, '2020-01-10');
insert into Restaurante (nome_completo) values ('Marcos Lima');

insert into Restaurante (nome_completo, cpf , data_nascimento, endereço, telefone, email, cargo, salario, data_admissão) values
('Carla Mendes', '444.555.666-77', '1993-07-03', 'Av. Paulista 1853, São Paulo', '11987659876', 'carla.mendes@email.com', 'Atendente', 2600.00, '2020-07-15');
insert into Restaurante (nome_completo) values ('Carla Mendes');

insert into Restaurante (nome_completo, cpf , data_nascimento, endereço, telefone, email, cargo, salario, data_admissão) values
('Tiago Nunes', '555.666.777-88', '1978-08-12', 'Rua Funchal 500, São Paulo', '11987656789', 'tiago.nunes@email.com', 'Sommelier', 3400.00, '2021-04-22');
insert into Restaurante (nome_completo) values ('Tiago Nunes');

insert into Restaurante (nome_completo, cpf , data_nascimento, endereço, telefone, email, cargo, salario, data_admissão) values
('Cláudia Vieira', '666.777.888-99', '1981-01-19', 'Alameda Lorena 1300, São Paulo', '11987657890', 'claudia.vieira@email.com', 'Cozinheira', 3200.00, '2021-08-30');
insert into Restaurante (nome_completo) values ('Cláudia Vieira');

insert into Restaurante (nome_completo, cpf , data_nascimento, endereço, telefone, email, cargo, salario, data_admissão) values
('Pedro Martins', '777.888.999-00', '1983-12-05', 'Rua dos Pinheiros 800, São Paulo', '11987658901', 'pedro.martins@email.com', 'Garçom', 2700.00, '2022-03-15');
insert into Restaurante (nome_completo) values ('Pedro Martins');

insert into Restaurante (nome_completo, cpf , data_nascimento, endereço, telefone, email, cargo, salario, data_admissão) values
('Fernanda Rocha', '888.999.000-11', '1990-09-27', 'Av. Faria Lima 1500, São Paulo', '11987659012', 'fernanda.rocha@email.com', 'Garçonete', 2700.00, '2022-05-20');
insert into Restaurante (nome_completo) values ('Pedro Martins');

insert into Restaurante (nome_completo, cpf , data_nascimento, endereço, telefone, email, cargo, salario, data_admissão) values
('André Costa', '999.000.111-22', '1986-03-14', 'Rua Bela Cintra 985, São Paulo', '11987660123', 'andre.costa@email.com', 'Gerente', 4700.00, '2022-10-10');
insert into Restaurante (nome_completo) values ('Pedro Martins');

insert into Restaurante (nome_completo, cpf , data_nascimento, endereço, telefone, email, cargo, salario, data_admissão) values
('Sofia Alves', '000.111.222-33', '1995-06-01', 'Rua Consolação 1235, São Paulo', '11987661234', 'sofia.alves@email.com', 'Recepcionista', 2400.00, '2023-01-01');
insert into Restaurante (nome_completo) values ('Pedro Martins');

select * from Clientes;

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Lucas Silva', '123.456.789-01', '1990-01-15', 'Av. Brigadeiro Faria Lima, 1571, São Paulo', '11987651234', 'lucas.silva@email.com', '2023-01-12');
insert into clientes (nome_completo) values ('Lucas Silva');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Ana Paula', '234.567.890-12', '1985-03-22', 'Rua Oscar Freire, 1290, São Paulo', '11987652345', 'ana.paula@email.com', '2023-01-12');
insert into clientes (nome_completo) values ('Ana Paula');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Rafael Costa', '345.678.901-23', '1992-07-18', 'Av. Paulista, 1844, São Paulo', '11987653456', 'rafael.costa@email.com', '2023-01-12');
insert into clientes (nome_completo) values ('Rafael Costa');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Camila Rodrigues', '456.789.012-34', '1988-05-24', 'Rua Augusta, 2530, São Paulo', '11987654567', 'camila.rodrigues@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Camila Rodrigues');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Eduardo Santos', '567.890.123-45', '1975-11-30', 'Alameda Santos, 980, São Paulo', '11987655678', 'eduardo.santos@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Eduardo Santos');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Fernanda Lima', '678.901.234-56', '1994-04-15', 'Rua da Consolação, 2000, São Paulo', '11987656789', 'fernanda.lima@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Fernanda Lima');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Gustavo Pereira', '789.012.345-67', '1982-02-28', 'Av. Rebouças, 3001, São Paulo', '11987657890', 'gustavo.pereira@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Gustavo Pereira');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Juliana Machado', '890.123.456-78', '1996-09-14', 'Av. Brasil, 1620, São Paulo', '11987658901', 'juliana.machado@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Juliana Machado');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Marcos Ribeiro', '901.234.567-89', '1991-12-12', 'Rua Bela Cintra, 1225, São Paulo', '11987659012', 'marcos.ribeiro@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Marcos Ribeiro');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Patricia Almeida', '912.345.678-90', '1987-06-19', 'Rua Haddock Lobo, 1327, São Paulo', '11987660123', 'patricia.almeida@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Patricia Almeida');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Roberto Nunes', '923.456.789-01', '1979-03-21', 'Av. Nove de Julho, 2045, São Paulo', '11987661234', 'roberto.nunes@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Roberto Nunes');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Sandra Gomes', '934.567.890-12', '1984-08-10', 'Rua Pamplona, 1453, São Paulo', '11987662345', 'sandra.gomes@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Sandra Gomes');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Tiago Souza', '945.678.901-23', '1989-01-15', 'Av. Europa, 784, São Paulo', '11987663456', 'tiago.souza@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Tiago Souza');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Vanessa Moraes', '956.789.012-34', '1974-10-23', 'Rua Amauri, 350, São Paulo', '11987664567', 'vanessa.moraes@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Vanessa Moraes');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Daniel Oliveira', '967.890.123-45', '1993-12-11', 'Rua dos Pinheiros, 900, São Paulo', '11987665678', 'daniel.oliveira@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Daniel Oliveira');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Maria Clara', '978.901.234-56', '1998-03-05', 'Av. Ibirapuera, 3103, São Paulo', '11987666789', 'maria.clara@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Maria Clara');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('João Pedro', '989.012.345-67', '1981-05-27', 'Rua Tabapuã, 1123, São Paulo', '11987667890', 'joao.pedro@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('João Pedro');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Larissa Fonseca', '991.123.456-78', '1986-11-09', 'Av. Cidade Jardim, 400, São Paulo', '11987668901', 'larissa.fonseca@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Larissa Fonseca');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Henrique Silva', '992.234.567-89', '1990-02-14', 'Av. São Gabriel, 477, São Paulo', '11987669012', 'henrique.silva@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Henrique Silva');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Isabela Freitas', '993.345.678-90', '1994-07-20', 'Rua Veneza, 1000, São Paulo', '11987670123', 'isabela.freitas@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Isabela Freitas');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Giovanna Rocha', '994.456.789-01', '1987-12-01', 'Rua Artur Azevedo, 1767, São Paulo', '11987671234', 'giovanna.rocha@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Giovanna Rocha');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Leonardo Alves', '995.567.890-12', '1988-01-22', 'Rua Joaquim Antunes, 760, São Paulo', '11987672345', 'leonardo.alves@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Leonardo Alves');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Beatriz Santos', '996.678.901-23', '1976-06-16', 'Av. Santo Amaro, 1230, São Paulo', '11987673456', 'beatriz.santos@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Beatriz Santos');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Carlos Eduardo', '997.789.012-34', '1972-04-04', 'Rua Estados Unidos, 1457, São Paulo', '11987674567', 'carlos.eduardo@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Carlos Eduardo');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Fábio Lopes', '998.890.123-45', '1989-08-12', 'Av. das Nações Unidas, 1889, São Paulo', '11987675678', 'fabio.lopes@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Fábio Lopes');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Tatiane Costa', '999.901.234-56', '1995-10-30', 'Rua Guarará, 532, São Paulo', '11987676789', 'tatiane.costa@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Tatiane Costa');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Ricardo Mendonça', '991.012.345-67', '1980-03-17', 'Rua Pedroso Alvarenga, 1100, São Paulo', '11987677890', 'ricardo.mendonca@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Ricardo Mendonça');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Elisa Carvalho', '992.123.456-78', '1997-05-25', 'Av. Roque Petroni Júnior, 1089, São Paulo', '11987678901', 'elisa.carvalho@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Elisa Carvalho');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Flávio Barros', '993.234.567-89', '1985-09-19', 'Rua Gomes de Carvalho, 1356, São Paulo', '11987679012', 'flavio.barros@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Flávio Barros');

insert into clientes (nome_completo, cpf, data_nascimento, endereço_residêncial, telefone, email, data_cadastro) values
('Priscila Ribeiro', '994.345.678-90', '1983-07-28', 'Rua Bandeira Paulista, 982, São Paulo', '11987680123', 'priscila.ribeiro@email.com', '2023-01-12');
insert into Restaurante (nome_completo) values ('Priscila Ribeiro');

select * from Produtos;
insert into Produtos (nome, descrição, preço, categoria) values
('Feijoada', 'Feijoada completa com arroz, farofa, couve e laranja.', 29.90, 'Prato Principal');
insert into Restaurante (nome) values ('Feijoda');

insert into Produtos (nome, descrição, preço, categoria) values
('Picanha na Chapa', 'Picanha fatiada servida com alho, arroz, farofa e vinagrete.', 42.00, 'Prato Principal');
insert into Restaurante (nome) values ('Picanha na Chapa');

insert into Produtos (nome, descrição, preço, categoria) values
('Moqueca Baiana', 'Moqueca de peixe e camarão, acompanhada de arroz branco e pirão.', 37.50, 'Prato Principal');
insert into Restaurante (nome) values ('Moqueca Baiana');

insert into Produtos (nome, descrição, preço, categoria) values
('Bobó de Camarão', 'Camarão cozido em creme de mandioca e azeite de dendê, servido com arroz.', 45.00, 'Prato Principal');
insert into Restaurante (nome) values ('Bobó de Camarão');

insert into Produtos (nome, descrição, preço, categoria) values
('Bacalhau à Brás', 'Bacalhau desfiado, preparado com batata palha, ovos e cebola.', 38.00, 'Prato Principal');
insert into Restaurante (nome) values ('Bacalha à Brás');

insert into Produtos (nome, descrição, preço, categoria) values
('Coxinha de Frango', 'Massa de batata com recheio cremoso de frango, servida frita.', 6.50, 'Aperitivo');
insert into Restaurante (nome) values ('Coxinha de Frango');

insert into Produtos (nome, descrição, preço, categoria) values
('Pastel de Carne', 'Pastel frito com recheio de carne moída temperada.', 5.00, 'Aperitivo');
insert into Restaurante (nome) values ('Pastel de Carne');

insert into Produtos (nome, descrição, preço, categoria) values
('Pastel de Queijo', 'Pastel frito com recheio de queijo derretido.', 5.00, 'Aperitivo');
insert into Restaurante (nome) values ('Pastel de Queijo');

insert into Produtos (nome, descrição, preço, categoria) values
('Empada de Palmito', 'Empada de massa podre recheada com creme de palmito.', 6.00, 'Aperitivo');
insert into Restaurante (nome) values ('Empada de Palmito');

insert into Produtos (nome, descrição, preço, categoria) values
('Risoto de Camarão', 'Risoto de camarão com toque de limão siciliano e alho-poró.', 36.00, 'Prato Principal');
insert into Restaurante (nome) values ('Risoto de Camarão');

insert into Produtos (nome, descrição, preço, categoria) values
('Escondidinho de Carne Seca', 'Purê de mandioca com recheio de carne seca e queijo coalho.', 32.00, 'Prato Principal');
insert into Restaurante (nome) values ('Escondidinho de Carne Seca');

insert into Produtos (nome, descrição, preço, categoria) values
('Salada Caprese', 'Tomate, muçarela de búfala e manjericão, com azeite e vinagre balsâmico.', 22.00, 'Entrada');
insert into Restaurante (nome) values ('Salada Caprese');

insert into Produtos (nome, descrição, preço, categoria) values
('Polenta Mole com Ragú de Linguiça', 'Polenta cremosa servida com ragú de linguiça e molho de tomate.', 28.00, 'Prato Principal');
insert into Restaurante (nome) values ('Polenta Mole com Ragú de linguiça');

insert into Produtos (nome, descrição, preço, categoria) values
('Frango à Parmegiana', 'Peito de frango empanado coberto com queijo e molho de tomate, servido com arroz e fritas.', 35.00, 'Prato Principal');
insert into Restaurante (nome) values ('Frango à Parmegiana');

insert into Produtos (nome, descrição, preço, categoria) values
('Salmão Grelhado', 'Salmão grelhado servido com legumes no vapor e molho de alcaparras.', 42.00, 'Prato Principal');
insert into Restaurante (nome) values ('Salmão Grelhado');

insert into Produtos (nome, descrição, preço, categoria) values
('Caipirinha de Limão', 'Tradicional caipirinha brasileira feita com cachaça, limão e açúcar.', 15.00, 'Bebida');
insert into Restaurante (nome) values ('Caipirinha de Limão');

insert into Produtos (nome, descrição, preço, categoria) values
('Suco de Maracujá', 'Suco natural de maracujá.', 8.00, 'Bebida');
insert into Restaurante (nome) values ('Suco de Maracujá');

insert into Produtos (nome, descrição, preço, categoria) values
('Chopp Gelado', 'Chopp claro, servido bem gelado.', 7.50, 'Bebida');
insert into Restaurante (nome) values ('Chopp Gelado');

insert into Produtos (nome, descrição, preço, categoria) values
('Mousse de Maracujá', 'Sobremesa leve e refrescante à base de maracujá.', 12.00, 'Sobremesa');
insert into Restaurante (nome) values ('Mousse de Maracujá');

insert into Produtos (nome, descrição, preço, categoria) values
('Pudim de Leite', 'Pudim de leite condensado com calda de caramelo.', 10.00, 'Sobremesa');
insert into Restaurante (nome) values ('Pudim de Leite');


select * from info_produtos;
insert into info_produtos (id_produto, ingredientes, fornecedor) values
(1, 'Feijão preto, carne seca, costelinha, linguiça, arroz, farinha, couve, laranja', 'Distribuidora Central');
insert into Restaurante (id_produtos) values (1);

insert into info_produtos (id_produto, ingredientes, fornecedor) values
(2, 'Picanha, alho, arroz, farofa, vinagrete', 'Carnes Boi Nobre');
insert into Restaurante (id_produtos) values (2);

insert into info_produtos (id_produto, ingredientes, fornecedor) values
(3, 'Peixe, camarão, leite de coco, azeite de dendê, arroz, farinha', 'Mar & Terra Distribuidora');
insert into Restaurante (id_produtos) values (3);

insert into info_produtos (id_produto, ingredientes, fornecedor) values
(4, 'Camarão, mandioca, leite de coco, azeite de dendê, arroz', 'Mar & Terra Distribuidora');
insert into Restaurante (id_produtos) values (4);

insert into info_produtos (id_produto, ingredientes, fornecedor) values
(5, 'Bacalhau, batata, ovo, cebola, azeite', 'Importadora Lisboa');
insert into Restaurante (id_produtos) values (5);

insert into info_produtos (id_produto, ingredientes, fornecedor) values
(6, 'Frango, batata, massa de trigo', 'Avícola São José');
insert into Restaurante (id_produtos) values (6);

insert into info_produtos (id_produto, ingredientes, fornecedor) values
(7, 'Carne moída, massa de trigo', 'Carnes Boi Nobre');
insert into Restaurante (id_produtos) values (7);

insert into info_produtos (id_produto, ingredientes, fornecedor) values
(8, 'Queijo, massa de trigo', 'Laticínios Vale do Sereno');
insert into Restaurante (id_produtos) values (8);

insert into info_produtos (id_produto, ingredientes, fornecedor) values
(9, 'Palmito, massa de trigo, creme de leite', 'Conservas Sabor da Terra');
insert into Restaurante (id_produtos) values (9);

insert into info_produtos (id_produto, ingredientes, fornecedor) values
(10, 'Camarão, arroz arbóreo, limão siciliano, alho-poró', 'Mar & Terra Distribuidora');
insert into Restaurante (id_produtos) values (10);

insert into info_produtos (id_produto, ingredientes, fornecedor) values
(11, 'Carne seca, mandioca, queijo coalho', 'Carnes Boi Nobre e Laticínios Vale do Sereno');
insert into Restaurante (id_produtos) values (11);

insert into info_produtos (id_produto, ingredientes, fornecedor) values
(12, 'Tomate, muçarela de búfala, manjericão', 'Queijaria Bela Vista e Horta Santa Luzia');
insert into Restaurante (id_produtos) values (12);

insert into info_produtos (id_produto, ingredientes, fornecedor) values
(13, 'Linguiça, polenta, molho de tomate', 'Carnes Boi Nobre e Moinho Dourado');
insert into Restaurante (id_produtos) values (13);

insert into info_produtos (id_produto, ingredientes, fornecedor) values
(14, 'Frango, queijo, molho de tomate, arroz, batata', 'Avícola São José e Laticínios Vale do Sereno');
insert into Restaurante (id_produtos) values (14);

insert into info_produtos (id_produto, ingredientes, fornecedor) values
(15, 'Salmão, legumes, alcaparras', 'Pescados do Norte e Hortifruti Natural da Terra');
insert into Restaurante (id_produtos) values (15);

insert into info_produtos (id_produto, ingredientes, fornecedor) values
(16, 'Cachaça, limão, açúcar', 'Destilaria Nacional');
insert into Restaurante (id_produtos) values (16);

insert into info_produtos (id_produto, ingredientes, fornecedor) values
(17, 'Maracujá', 'Hortifruti Natural da Terra');
insert into Restaurante (id_produtos) values (17);

insert into info_produtos (id_produto, ingredientes, fornecedor) values
(18, 'Malte, lúpulo', 'Cervejaria do Vale');
insert into Restaurante (id_produtos) values (18);

insert into info_produtos (id_produto, ingredientes, fornecedor) values
(19, 'Maracujá, creme de leite, açúcar', 'Hortifruti Natural da Terra e Laticínios Vale do Sereno');
insert into Restaurante (id_produtos) values (19);

insert into info_produtos (id_produto, ingredientes, fornecedor) values
(20, 'Leite condensado, ovos, açúcar', 'Laticínios Vale do Sereno');
 insert into Restaurante (id_produtos) values (20);
 
 select * from Pedidos;
 insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
 (1, 4, 1, 2, '2024-07-01', 'Concluído');
 insert into Restaurante (id_cliente) values (1);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(3, 4, 2, 1, '2024-07-01', 'Concluído');
insert into Restaurante (id_cliente) values (3);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(6, 7, 3, 1, '2024-07-01', 'Concluído');
insert into Restaurante (id_cliente) values (6);
 
insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(8, 7, 4, 3, '2024-07-01', 'Concluído');
insert into Restaurante (id_cliente) values (8);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(10, 8, 5, 2, '2024-07-02', 'Pendente');
insert into Restaurante (id_cliente) values (10);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(15, 8, 6, 4, '2024-07-02', 'Concluído');
insert into Restaurante (id_cliente) values (15);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(22, 4, 7, 3, '2024-07-02', 'Concluído');
insert into Restaurante (id_cliente) values (22);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(18, 4, 8, 2, '2024-07-02', 'Concluído');
insert into Restaurante (id_cliente) values (18);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(4, 7, 9, 5, '2024-07-02', 'Concluído');
insert into Restaurante (id_cliente) values (4);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(6, 7, 10, 1, '2024-07-03', 'Concluído');
insert into Restaurante (id_cliente) values (6);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(9, 8, 11, 3, '2024-07-03', 'Concluído');
insert into Restaurante (id_cliente) values (9);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(11, 8, 12, 1, '2024-07-03', 'Concluído');
insert into Restaurante (id_cliente) values (11);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(24, 4, 13, 2, '2024-07-03', 'Concluído');
insert into Restaurante (id_cliente) values (24);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(27, 4, 14, 1, '2024-07-03', 'Concluído');
insert into Restaurante (id_cliente) values (27);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(17, 7, 15, 2, '2024-07-03', 'Concluído');
insert into Restaurante (id_cliente) values (17);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(7, 7, 16, 3, '2024-07-04', 'Concluído');
insert into Restaurante (id_cliente) values (7);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(13, 8, 17, 2, '2024-07-04', 'Concluído');
insert into Restaurante (id_cliente) values (13);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(25, 8, 18, 4, '2024-07-04', 'Concluído');
insert into Restaurante (id_cliente) values (25);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(22, 4, 19, 1, '2024-07-04', 'Concluído');
insert into Restaurante (id_cliente) values (22);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(2, 4, 20, 2, '2024-07-04', 'Concluído');
insert into Restaurante (id_cliente) values (2);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(8, 7, 2, 1, '2024-07-04', 'Concluído');
insert into Restaurante (id_cliente) values (8);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(11, 7, 3, 2, '2024-07-05', 'Concluído');
insert into Restaurante (id_cliente) values (11);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(18, 8, 4, 3, '2024-07-05', 'Concluído');
insert into Restaurante (id_cliente) values (18);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(22, 8, 5, 1, '2024-07-05', 'Concluído');
insert into Restaurante (id_cliente) values (22);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(19, 4, 6, 4, '2024-07-05', 'Concluído');
insert into Restaurante (id_cliente) values (19);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(28, 4, 7, 3, '2024-07-05', 'Concluído');
insert into Restaurante (id_cliente) values (28);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(1, 7, 8, 2, '2024-07-05', 'Concluído');
insert into Restaurante (id_cliente) values (1);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(7, 7, 9, 5, '2024-07-05', 'Concluído');
insert into Restaurante (id_cliente) values (7);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(19, 8, 10, 1, '2024-07-05', 'Concluído');
insert into Restaurante (id_cliente) values (19);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(15, 8, 11, 3, '2024-07-05', 'Concluído');
insert into Restaurante (id_cliente) values (15);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(24, 4, 12, 1, '2024-07-05', 'Concluído');
insert into Restaurante (id_cliente) values (24);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(12, 4, 13, 2, '2024-07-05', 'Concluído');
insert into Restaurante (id_cliente) values (12);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(4, 7, 14, 1, '2024-07-05', 'Concluído');
insert into Restaurante (id_cliente) values (4);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(9, 7, 15, 2, '2024-07-06', 'Concluído');
insert into Restaurante (id_cliente) values (9);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(18, 8, 16, 3, '2024-07-06', 'Concluído');
insert into Restaurante (id_cliente) values (18);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(5, 8, 17, 2, '2024-07-06', 'Pendente');
insert into Restaurante (id_cliente) values (5);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(22, 4, 18, 4, '2024-07-06', 'Concluído');
insert into Restaurante (id_cliente) values (22);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(14, 4, 19, 1, '2024-07-06', 'Pendente');
insert into Restaurante (id_cliente) values (14);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(19, 7, 20, 2, '2024-07-06', 'Concluído');
insert into Restaurante (id_cliente) values (19);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(8, 7, 1, 2, '2024-07-06', 'Pendente');
insert into Restaurante (id_cliente) values (8);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(7, 8, 2, 1, '2024-07-06', 'Concluído');
insert into Restaurante (id_cliente) values (7);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(4, 8, 3, 2, '2024-07-06', 'Pendente');
insert into Restaurante (id_cliente) values (4);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(21, 4, 4, 3, '2024-07-06', 'Concluído');
insert into Restaurante (id_cliente) values (21);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(4, 4, 5, 1, '2024-07-06', 'Pendente');
insert into Restaurante (id_cliente) values (4);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(13, 7, 6, 4, '2024-07-06', 'Concluído');
insert into Restaurante (id_cliente) values (13);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(25, 7, 7, 3, '2024-07-06', 'Pendente');
insert into Restaurante (id_cliente) values (25);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(7, 8, 8, 2, '2024-07-06', 'Concluído');
insert into Restaurante (id_cliente) values (7);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(7, 8, 8, 2, '2024-07-06', 'Concluído');
insert into Restaurante (id_cliente) values (7);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(12, 4, 10, 1, '2024-07-06', 'Concluído');
insert into Restaurante (id_cliente) values (12);

insert into Pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values
(10, 4, 11, 3, '2024-07-06', 'Pendente');
insert into Restaurante (id_cliente) values (10); 


update Restaurante
set cargo = 'Garçonete', salario = 2700
where id_funcionario = 4;


set sql_safe_updates = 1;
UPDATE Pedidos	
SET status_pedido = 'Concluído'
where data_pedido <= '2024-07-06';


select * from Restaurante;

delete from Restaurante where id_funcionario = 2;

























