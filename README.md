# tabela-restaurante-tsi
Criação das tabelas do trabalho de BD-II, Erik de Oliveira Silva

**Tema**: Sistema de cardápio para restaurante

**Justificativa**: Sistema para gerenciar os produtos, realizar pedidos por parte do cliente e agilizar o atendimento. O tema "Sistema de Cardápio" foi escolhido por interesse pessoal. Como minha irmã possui um restaurante, o projeto poderá simular uma solução prática para gerenciar cardápios e pedidos dos clientes, utilizando a criação de tabelas e inserção de dados.

![banco](https://github.com/user-attachments/assets/187da2ae-e022-405a-ac15-ea8cbd9e36f5)

**Categoria/Produto_Categoria**

Categoria(Id, Nome)
Produto_Categoria(Id, Nome, Preco, Descricao, IdCategoria)
IdCategoria referencia Categoria

**Gerente/Funcionario**

Gerente(IdGerente, Nome, Salario)
Funcionario(IdFuncionario, Nome, Turno, Salario)

Gerencia(CodGerente,CodFuncionario)

CodGerente referencia Gerente
CodFuncionario referencia Funcionario

**Produto_Categoria/Cliente**

Produto_Categoria(Id, Nome, Preco, Descricao)
Cliente(Cpf, Nome)

Pedido(CodProduto, CodCliente, Code, Quantidade, Mesa)

CodProduto referencia Produto_Categoria
CodCliente referencia Cliente



**Pedido/Funcionario**

Funcionario(IdFuncionario, Nome, Turno, Salario)
Pedido(CodPedido, IdFuncionario)
IdFuncionario referencia Funcionario

**Cliente/Mesa**

Cliente(Cpf, Nome)

Mesa(Numero, Qtd_Cadeiras)

Utiliza(CodCliente, CodMesa)
CodCliente referencia Cliente
CodMesa referencia Mesa

![logico](https://github.com/user-attachments/assets/6912db0e-936f-4c04-ae57-9d09cbfa3467)
