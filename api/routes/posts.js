const express = require('express');
const mysql = require('mysql2');
const connection = require('../db');

const router = express.Router();

router.post('/', (req, res) => {
    const post = req.body;
    connection.query('INSERT INTO postagens SET ?', post, (error, results) => {
      if (error) {
        res.status(500).send('Erro ao criar uma nova postagem.');
        return;
      }

      res.status(201).send('Nova postagem criada com sucesso!');
    });
  });
  
router.get('/', (req, res) => {
    connection.query('SELECT * FROM postagens', (error, results) => {
      if (error) {
        res.status(500).send('Erro ao buscar todas as postagens.');
        return;
      } 

      res.status(200).json(results);
    });
});
  
router.get('/:id', (req, res) => {
    const id = req.params.id;
    connection.query('SELECT * FROM postagens WHERE id = ?', id, (error, results) => {
      if (error) {
        res.status(500).send('Erro ao buscar a postagem.');
        return;
      }  
      if (results.length === 0) {
        res.status(404).send('Postagem não encontrada.');
        return;
      } 
        
      res.status(200).json(results[0]);
    });
});
  
router.put('/:id', (req, res) => {
    const id = req.params.id;
    const post = req.body;
    connection.query('UPDATE postagens SET ? WHERE id = ?', [post, id], (error, results) => {
      if (error) {
        res.status(500).send('Erro ao atualizar a postagem.');
        return;
      }

      res.status(200).send('Postagem atualizada com sucesso!');
    });
});

router.delete('/:id', (req, res) => {
    const id = req.params.id;
    connection.query('DELETE FROM postagens WHERE id = ?', id, (error, results) => {
      if (error) {
        res.status(500).send('Erro ao remover a postagem.');
        return;
      }

      res.status(200).send('Postagem removida com sucesso!');
    });
});

module.exports = router;