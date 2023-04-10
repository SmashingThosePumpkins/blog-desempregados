import mysql from 'mysql2';

import env from 'dotenv';
env.config();

const connection = mysql.createConnection({
    host: process.env.db_host,
    port: process.env.db_port,
    user: process.env.db_user,
    password: process.env.db_pass,
    database: 'desempregados',
    insecureAuth: true
  });
  
connection.connect(function(error) {
    if (error) {
      console.error('Ocorreu um erro ao conectar ao banco de dados:', error);
    } else {
      console.log('Conexão bem sucedida ao banco de dados!');
    }
});

export default connection;