# Database Project - Mercurio 
Database Project - Mercurio

## Database Design
This is a database project I created to manage information about customers, products, and orders for a store that sells frames and fabrics— the same store for which I did my web project. The idea is to keep everything organized to facilitate store management.

### Components
1. **Customers Table**
   - Stores information about customers, including name, email, phone, and address. Each customer has a unique ID for identification.

2. **Products Table**
   - Holds all details about the products the store sells. Includes product name, description, price, stock quantity, and product category. Each product has its own ID.

3. **Orders Table**
   - Monitors customer orders. Includes information about the customer placing the order, date, total value, and order status (delivered, processing, etc.).

4. **Order Items Table**
   - Connected to other tables, used to track products in each order, quantity of each product, and unit price.

### Indexing for Efficiency
I set up some indices for improved performance:
- Index on customer name to locate customers by name.
- Index on customer email to find customers by email.
- Index on product name for easy product search.
- Index on product category.
- Index on customer ID in orders to link customers to their orders.
- Index on order date.

## Population
Added some dummy data for better visualization.

## Queries
Created several queries for administrative purposes. Given the nature of a store, there are countless queries that could be of interest. I've included the following 5.

# Projeto de Banco de Dados - Mercúrio 
Projeto de Banco de Dados - Mercúrio

## Design do Banco de Dados
Este é um projeto de banco de dados que montei para gerenciar informações de clientes, produtos e pedidos de uma loja que vende quadros e tecidos, a mesma loja na qual fiz meu projeto web. A ideia é manter tudo organizado para facilitar o gerenciamento da loja.

### Componentes
1. **Tabela de Clientes**
   - Armazena informações sobre os clientes, como nome, e-mail, telefone e endereço. Cada cliente possui um ID único para identificação.

2. **Tabela de Produtos**
   - Contém todos os detalhes sobre os produtos que a loja vende. Inclui nome do produto, descrição, preço, quantidade em estoque e categoria do produto. Cada produto possui seu próprio ID.

3. **Tabela de Pedidos**
   - Monitora os pedidos dos clientes. Inclui quem fez o pedido, data, valor total e status (entregue, em processamento, etc.).

4. **Tabela de Itens do Pedido**
   - Conectada a outras tabelas, usada para verificar quais produtos estão em cada pedido, quantidade de cada produto e preço unitário.

### Indexação para Eficiência
Configurei alguns índices para melhorar o desempenho:
- Índice no nome do cliente para localizar clientes pelo nome.
- Índice no e-mail do cliente para encontrar clientes por e-mail.
- Índice no nome do produto para facilitar a busca de produtos.
- Índice na categoria do produto.
- Índice no ID do cliente nos pedidos para vincular clientes aos seus pedidos.
- Índice na data do pedido.

## População
Adicionei alguns dados fictícios para uma melhor visualização.

## Consultas
Realizei algumas consultas que achei interessantes. Dada a natureza de uma loja, há inúmeras consultas que poderiam ser de interesse administrativo. Incluí as seguintes 5.
