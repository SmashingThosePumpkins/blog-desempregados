import express from 'express';
import connection from '../db.js';

const router = express.Router();

router.get('/', (req, res) => {
    connection.query('SELECT * FROM postagens', (error, results) => {
      if (error) {
        res.status(500).send('Erro ao buscar as postagens.');
        return;
      } 
    
      res.status(200).json(results); 
    });
});

router.get('/:id', (req, res) => {
    const id = req.params.id;
    connection.query('SELECT * FROM postagens WHERE categoria_id = ?', id, (error, results) => {
      if (error) {
        res.status(500).send('Erro ao buscar as postagens.');
        return;
      } 
    
      res.status(200).json(results); 
    });
});

router.post('/', (req, res) => {
    const category = req.body;
    connection.query('INSERT INTO categorias SET ?', category, (error, results) => {
      if (error) {
        res.status(500).send('Erro ao criar uma nova postagem.');
        return;
      }

      res.status(201).send('Nova postagem criada com sucesso!');
    });
});

router.delete('/:id', (req, res) => {
    const id = req.params.id;
    connection.query('DELETE FROM categorias WHERE id = ?', id, (error, results) => {
      if (error) {
        res.status(500).send('Erro ao remover a postagem.');
        return;
      }

      res.status(200).send('Postagem removida com sucesso!');
    });
});

export default router;