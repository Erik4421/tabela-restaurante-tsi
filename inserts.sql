USE Restaurante;

ALTER TABLE Gerente MODIFY COLUMN Salario DECIMAL(7,2) NOT NULL;
ALTER TABLE Funcionario MODIFY COLUMN Salario DECIMAL(6,2) NOT NULL;

-- Inserindo Gerentes
INSERT INTO Gerente (Nome, Salario) VALUES
('Carlos Oliveira', 10000.00);

-- Inserindo Funcionários
INSERT INTO Funcionario (Nome, Turno, Salario, IdGerente) VALUES
('João Silva', 'Manhã', 2500.00, 1),
('Ana Pereira', 'Tarde', 2600.00, 1),
('Lucas Martins', 'Noite', 2550.00, 1),
('Fernanda Lima', 'Manhã', 2400.00, 1),
('Ricardo Santos', 'Tarde', 2450.00, 1),
('Beatriz Costa', 'Noite', 2350.00, 1);

-- Inserindo Categorias
INSERT INTO Categorias (Nome) VALUES
('Entradas'),
('Pratos Principais'),
('Bebidas'),
('Sobremesas'),
('Massas'),
('Sanduíches'),
('Frutos do Mar');

-- Inserindo Produtos
INSERT INTO ProdutoCategoria (Nome, Descricao, Preco, CategoriaId) VALUES
('Salada Caesar', 'Alface, frango grelhado, parmesão e molho especial', 18.50, 1),
('Ceviche de Tilápia', 'Peixe branco marinado no limão com cebola roxa e coentro', 25.00, 1),
('Dadinho de Tapioca', 'Cubos de tapioca fritos com molho de pimenta agridoce', 18.00, 1),

('Picanha Grelhada', 'Acompanha arroz, feijão tropeiro e batata frita', 45.90, 2),
('Frango à Kiev', 'Peito de frango recheado com manteiga de ervas', 35.00, 2),
('Escondidinho de Carne Seca', 'Purê de mandioca com carne seca desfiada e gratinada', 38.00, 2),

('Suco de Laranja', 'Natural e sem açúcar', 7.00, 3),
('Cerveja Artesanal', 'Lager artesanal refrescante', 15.00, 3),

('Pudim de Leite', 'Com calda de caramelo', 12.00, 4),
('Torta de Chocolate', 'Torta cremosa com cobertura de ganache', 14.00, 4),

('Lasanha Bolonhesa', 'Camadas de massa, molho bolonhesa e queijo gratinado', 35.00, 5),
('Espaguete Carbonara', 'Massa italiana com bacon, ovos e queijo parmesão', 30.00, 5),

('Cheeseburger', 'Pão artesanal, hambúrguer, queijo, alface e tomate', 22.50, 6),

('Camarão ao alho', 'Camarões salteados com alho e ervas', 55.00, 7);

-- Inserindo Clientes
INSERT INTO Cliente (Cpf, Nome) VALUES
('123.456.789-00', 'Roberto Nunes'),
('987.654.321-00', 'Juliana Alves'),
('456.789.123-00', 'Fernanda Rocha'),
('321.654.987-00', 'Marcos Vinicius'),
('741.852.963-00', 'Tatiane Mendes');

-- Inserindo Mesas
INSERT INTO Mesa (Numero, QtdCadeiras) VALUES
(1, 4),
(2, 6),
(3, 2),
(4, 8),
(5, 4),
(6, 6),
(7, 2),
(8, 10),
(9, 3),
(10, 5);

-- Inserindo Pedidos
INSERT INTO Pedido (Mesa, Quantidade, ProdutoId, ClienteCpf, FuncionarioId) VALUES
(1, 2, 1, '123.456.789-00', 1),
(2, 1, 2, '987.654.321-00', 2),
(3, 3, 3, '456.789.123-00', 3),
(4, 2, 4, '321.654.987-00', 4),
(5, 1, 5, '741.852.963-00', 5),
(6, 2, 6, '123.456.789-00', 6),
(7, 1, 7, '987.654.321-00', 1),
(8, 3, 8, '456.789.123-00', 2),
(9, 2, 9, '321.654.987-00', 3),
(10, 4, 10, '741.852.963-00', 4);
