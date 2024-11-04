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

ALTER TABLE Categorias
ADD COLUMN quantidade INT;