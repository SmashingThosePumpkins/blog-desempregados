# Desempregados

O projetinho do blog "Desempregados" é um projeto pessoal que eu estou desenvolvendo, primariamente para aprimorar conhecimentos em front-end e API, mas também para testar o Heroku para hospedagem do serviço. O blog chama "Desempregados" por que eu vou fazer posts sobre assuntos nerdolas que só pessoas desempregadas e/ou sem o que fazer teriam interesse.

## Requisitos

- Node.js instalado na máquina
- Um servidor MySQL com uma database "desempregados"
    - A criação das tabelas, com inserts para teste, está disponível no arquivo `db.sql` no diretório raiz.
- Criação e configuração das variáveis de ambiente.
    - Para fazer isso, basta criar um arquivo nomeado `.env` no diretório raiz do projeto com as variáveis no seguinte formato:
    
```
db_host=127.0.0.1
db_port=3306
db_user=root
db_pass=root
server_port=3600`
```

## Rotas

Vou documentar as rotas do back depois