CREATE DATABASE Biblioteca;
USE Biblioteca;

CREATE TABLE Autores 
(
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    nacionalidade VARCHAR(50)
);

CREATE TABLE Categorias 
(
    id INT PRIMARY KEY,
    descricao VARCHAR(50)
);

CREATE TABLE Livros 
(
    id INT PRIMARY KEY,
    titulo VARCHAR(100),
    ano_publicacao YEAR,
    id_autor INT,
    id_categoria INT,
    preco DECIMAL(5,2),
    FOREIGN KEY (id_autor) REFERENCES Autores(id),
    FOREIGN KEY (id_categoria) REFERENCES Categorias(id)
);

ALTER TABLE Categorias ADD COLUMN quantidade INT;

INSERT INTO Autores (id, nome, nacionalidade) VALUES
(1, 'Machado de Assis', 'Brasileiro'),
(2, 'Jorge Amado', 'Brasileiro'),
(3, 'Lygia Bojunga', 'Brasileira');

INSERT INTO Categorias (id, descricao, quantidade) VALUES
(1, 'Literatura Clássica', 10),
(2, 'Romance Regionalista', 5),
(3, 'Romance', 3);

INSERT INTO Livros (id, titulo, ano_publicacao, id_autor, id_categoria, preco) VALUES
(1, 'Dom Casmurro', 1899, 1, 1, 29.90),
(2, 'Capitães da Areia', 1937, 2, 2, 32.96),
(3, 'Querida', 2009, 3, 3, 34.00);

INSERT INTO Autores (id, nome, nacionalidade) VALUES (4, 'Graciliano Ramos', 'Brasileiro');

INSERT INTO Livros (id, titulo, ano_publicacao, id_autor, id_categoria, preco) VALUES
(4, 'Vidas Secas', 1938, 4, 3, 29.10);

--resposta da 4.a
UPDATE Categorias SET descricao = 'Romance' WHERE id = 1;
