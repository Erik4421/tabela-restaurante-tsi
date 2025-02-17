-- Qual produtos da categoria Entradas
SELECT produtocategoria.* FROM produtocategoria, categorias WHERE CategoriaId = categorias.Id AND categorias.Nome = "Entradas";

-- Qual funcionário está atendendo o pedido realizado pelo cliente Marcos?
SELECT funcionario.* FROM funcionario, cliente, pedido WHERE pedido.funcionarioId = funcionario.IdFuncionario AND cliente.cpf = pedido.clienteCpf AND cliente.nome LIKE "Marcos%";

-- Quantos pedidos cada cliente fez?
SELECT cliente.nome, count(pedido.id) FROM pedido, cliente WHERE pedido.ClienteCpf = cliente.Cpf GROUP BY cliente.nome;

-- Quantos produtos em cada categoria?
SELECT categorias.nome, COUNT(produtocategoria.id) FROM produtocategoria, categorias WHERE produtocategoria.categoriaId = categorias.id GROUP BY categorias.nome;

-- Cliente com o sobrenome Silva.
SELECT nome FROM cliente WHERE nome LIKE "%Alves%";

-- Quanto ganha o gerente?
SELECT salario FROM gerente;

-- Qual o funcionario com o maior salario?
SELECT idFuncionario, nome, salario FROM funcionario WHERE salario = (SELECT MAX(salario) FROM funcionario);

-- Quantas Categorias existem?
SELECT COUNT(id) FROM categorias;

-- Quantos funcionarios o restauruante possui?
SELECT COUNT(nome) FROM funcionario;

-- Qual os gastos totais com funcionarios normais?
SELECT SUM(Salario) FROM funcionario;
