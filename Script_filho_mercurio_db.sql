-- Tabela Cliente
CREATE TABLE Cliente (
    ID SERIAL PRIMARY KEY,
    Nome VARCHAR(255),
    Email VARCHAR(255),
    Telefone VARCHAR(20),
    Endereco VARCHAR(255)
);

CREATE INDEX idx_cliente_nome ON Cliente (Nome); 
CREATE INDEX idx_cliente_email ON Cliente (Email); 



-- Tabela Produtos
CREATE TABLE Produtos (
    ID SERIAL PRIMARY KEY,
    Nome_do_Produto VARCHAR(255),
    Descricao TEXT,
    Preco DECIMAL(10, 2),
    Quantidade_em_Estoque INT,
    Categoria VARCHAR(50)
);

CREATE INDEX idx_produtos_nome ON Produtos (Nome_do_Produto);
CREATE INDEX idx_produtos_categoria ON Produtos (Categoria);


-- Tabela Pedidos
CREATE TABLE Pedidos (
    ID SERIAL PRIMARY KEY,
    ID_do_Cliente INT REFERENCES Cliente(ID),
    Data_do_Pedido DATE,
    Total_do_Pedido DECIMAL(10, 2),
    Status_do_Pedido VARCHAR(50)
);

CREATE INDEX idx_pedidos_cliente ON Pedidos (ID_do_Cliente);
CREATE INDEX idx_pedidos_data ON Pedidos (Data_do_Pedido);




-- Tabela Itens do Pedido
CREATE TABLE Itens_do_Pedido (
    ID SERIAL PRIMARY KEY,
    ID_do_Pedido INT REFERENCES Pedidos(ID),
    ID_do_Produto INT REFERENCES Produtos(ID),
    Quantidade_do_Produto INT,
    Preco_Unitario DECIMAL(10, 2)
);
CREATE INDEX idx_itens_pedido_pedido ON Itens_do_Pedido (ID_do_Pedido);
CREATE INDEX idx_itens_pedido_produto ON Itens_do_Pedido (ID_do_Produto);



--Populando

INSERT INTO Cliente (Nome, Email, Telefone, Endereco)
VALUES
    ('Alice Alegria', 'alice@email.com', '123-456-7890', 'Rua dos Sonhos, 123'),
    ('Bob Brincalhão', 'bob@email.com', '234-567-8901', 'Avenida da Imaginação, 45'),
    ('Carla Curiosa', 'carla@email.com', '345-678-9012', 'Travessa das Cores, 67'),
    ('David Diversão', 'david@email.com', '456-789-0123', 'Praça das Brincadeiras, 89'),
    ('Eva Encanto', 'eva@email.com', '567-890-1234', 'Alameda dos Sorrisos, 12'),
    ('Felix Fantasia', 'felix@email.com', '678-901-2345', 'Rua das Maravilhas, 34'),
    ('Gabi Graciosidade', 'gabi@email.com', '789-012-3456', 'Avenida dos Sonhos Felizes, 56'),
    ('Hugo Imaginativo', 'hugo@email.com', '890-123-4567', 'Rua da Alegria, 78'),
    ('Isabela Ilusão', 'isabela@email.com', '901-234-5678', 'Travessa das Fadas, 90'),
    ('João Jovial', 'joao@email.com', '012-345-6789', 'Avenida da Diversão, 14'),
    ('Luna Ludicidade', 'luna@email.com', '123-456-7890', 'Rua das Maravilhas, 78'),
    ('Mário Magia', 'mario@email.com', '234-567-8901', 'Praça dos Encantos, 23'),
    ('Nina Risos', 'nina@email.com', '345-678-9012', 'Travessa das Surpresas, 56'),
    ('Oliver Imaginação', 'oliver@email.com', '456-789-0123', 'Avenida da Aventura, 10'),
    ('Pietra Fábulas', 'pietra@email.com', '567-890-1234', 'Rua dos Contos de Fadas, 72');
   
   INSERT INTO Produtos (Nome_do_Produto, Descricao, Preco, Quantidade_em_Estoque, Categoria)
VALUES
    ('Arte das Maravilhas', 'Um quadro que te levará a um mundo de maravilhas, cheio de cores e surpresas!', 100.00, 10, 'Quadros'),
    ('Sonhos nas Estrelas', 'Este quadro leva você a uma jornada estelar, onde os sonhos se tornam realidade.', 120.00, 8, 'Quadros'),
    ('Aventura na Floresta', 'Quadro que retrata uma emocionante aventura na floresta com animais encantadores.', 90.00, 12, 'Quadros'),
    ('Tecido Mágico', 'Tecido encantado que pode ser transformado em roupas mágicas de contos de fadas.', 15.00, 50, 'Tecidos'),
    ('Tecido dos Sorrisos', 'Um tecido que irradia alegria e felicidade, perfeito para projetos criativos.', 18.00, 40, 'Tecidos'),
    ('Aquarela dos Sonhos', 'Quadro que parece ter sido pintado com as cores dos seus sonhos mais profundos.', 80.00, 15, 'Quadros'),
    ('Tecido das Fadas', 'Tecido que as fadas adoram usar em suas roupas mágicas e trajes encantados.', 20.00, 35, 'Tecidos'),
    ('Noite Estrelada', 'Um quadro mágico que transforma a noite em um espetáculo de estrelas brilhantes.', 110.00, 9, 'Quadros'),
    ('Tecido das Maravilhas', 'Tecido que pode ser usado para criar roupas que causam admiração e surpresa.', 25.00, 30, 'Tecidos'),
    ('Tecido Encantado', 'Este tecido tem o toque mágico que pode transformar qualquer projeto em algo especial.', 22.00, 32, 'Tecidos'),
    ('Fantasia de Cores', 'Quadro que leva você a uma jornada de cores vibrantes e imaginação sem limites.', 95.00, 11, 'Quadros'),
    ('Tecido das Estrelas', 'Tecido que brilha como as estrelas do céu, perfeito para projetos noturnos.', 23.00, 28, 'Tecidos'),
    ('Segredos do Oceano', 'Quadro que revela os segredos e mistérios do profundo oceano em tons de azul.', 105.00, 10, 'Quadros'),
    ('Tecido do Arco-Íris', 'Tecido multicolorido que parece ter sido costurado com as cores do arco-íris.', 28.00, 27, 'Tecidos'),
    ('Aventura nas Nuvens', 'Quadro que leva você a uma aventura nas nuvens, onde os sonhos voam alto.', 115.00, 9, 'Quadros');

   
   
   INSERT INTO Pedidos (ID_do_Cliente, Data_do_Pedido, Total_do_Pedido, Status_do_Pedido)
VALUES
    (1, '2023-11-01', 250.00, 'Em processamento'),
    (2, '2023-11-02', 180.00, 'Enviado'),
    (3, '2023-11-03', 210.00, 'Enviado'),
    (4, '2023-11-04', 270.00, 'Em processamento'),
    (5, '2023-11-05', 120.00, 'Entregue'),
    (6, '2023-11-06', 160.00, 'Enviado'),
    (7, '2023-11-07', 350.00, 'Em processamento'),
    (8, '2023-11-08', 320.00, 'Enviado'),
    (9, '2023-11-09', 280.00, 'Entregue'),
    (10, '2023-11-10', 190.00, 'Entregue'),
    (11, '2023-11-11', 130.00, 'Enviado'),
    (12, '2023-11-12', 290.00, 'Em processamento'),
    (13, '2023-11-13', 225.00, 'Entregue'),
    (14, '2023-11-14', 195.00, 'Entregue');
   
   
   INSERT INTO Itens_do_Pedido (ID_do_Pedido, ID_do_Produto, Quantidade_do_Produto, Preco_Unitario)
VALUES
    (1, 1, 2, 100.00),
    (2, 2, 1, 120.00),
    (3, 3, 3, 90.00),
    (4, 4, 5, 15.00),
    (5, 5, 2, 18.00),
    (6, 6, 2, 80.00),
    (7, 7, 4, 20.00),
    (8, 8, 3, 110.00),
    (9, 9, 2, 25.00),
    (10, 10, 2, 22.00),
    (11, 11, 1, 95.00),
    (12, 12, 3, 23.00),
    (13, 13, 2, 105.00),
    (14, 14, 2, 28.00),
    (1, 15, 1, 115.00);
   
   --Consultar todos os produtos em estoque de uma msm categoria
-- Com índice
SELECT Nome_do_Produto, Quantidade_em_Estoque
FROM Produtos
WHERE Categoria = 'Quadros'
ORDER BY Nome_do_Produto;

--Consulta para calcular o total de vendas por cliente:
SELECT c.Nome AS Nome_do_Cliente, SUM(ip.Quantidade_do_Produto * ip.Preco_Unitario) AS Valor_Total_de_Vendas
FROM Cliente c
JOIN Pedidos p ON c.ID = p.ID_do_Cliente
JOIN Itens_do_Pedido ip ON p.ID = ip.ID_do_Pedido
GROUP BY c.Nome;
   --o indice ID_do_Cliente e ID_do_Pedido podem acelerar a junção de tabelas,

 -- Consulta para listar os 10 produtos mais vendidos:
SELECT p.Nome_do_Produto, SUM(ip.Quantidade_do_Produto) AS Total_de_Vendas
FROM Produtos p
JOIN Itens_do_Pedido ip ON p.ID = ip.ID_do_Produto
GROUP BY p.Nome_do_Produto
ORDER BY Total_de_Vendas DESC
LIMIT 10;

--Consulta para calcular o valor médio dos pedidos por mês:
SELECT EXTRACT(MONTH FROM Data_do_Pedido) AS Mes, AVG(Total_do_Pedido) AS Valor_Medio_Por_Mes
FROM Pedidos
GROUP BY Mes
ORDER BY Mes;


--Consulta para listar os clientes que fizeram pedidos nos últimos 30 dias:
SELECT c.Nome AS Nome_do_Cliente, p.Data_do_Pedido
FROM Cliente c
JOIN Pedidos p ON c.ID = p.ID_do_Cliente
WHERE p.Data_do_Pedido >= CURRENT_DATE - INTERVAL '30 days';
--índice no campo Data_do_Pedido pode acelerar a consulta permitindo a localizacao mais rapida dos pedidos nos ultimos 30 dias


--Consulta para listar os produtos em estoque com menos de 10 unidades disponíveis:

SELECT Nome_do_Produto, Quantidade_em_Estoque
FROM Produtos
WHERE Quantidade_em_Estoque < 10;


   
