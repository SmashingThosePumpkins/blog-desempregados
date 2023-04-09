CREATE DATABASE IF NOT EXISTS desempregados;

USE desempregados;

CREATE TABLE categorias (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE postagens (
  id INT NOT NULL AUTO_INCREMENT,
  titulo VARCHAR(100) NOT NULL,
  manchete VARCHAR(255) NOT NULL,
  conteudo TEXT NOT NULL,
  categoria_id INT NOT NULL,
  thumbnail_url VARCHAR(255),
  PRIMARY KEY (id),
  FOREIGN KEY (categoria_id)
    REFERENCES categorias(id)
);