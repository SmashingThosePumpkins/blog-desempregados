import express from 'express';
import fetch from 'node-fetch';

const router = express.Router();

router.get('/error', async (req, res) => {
    res.status(404).render('error');
});

router.get('/:id', async (req, res) => {
    try {
        const id = req.params.id;
        const host = req.headers.host;
        const response = await fetch('http://' + host + `/api/posts/${id}`, {
            method: 'GET',
	        headers: {'Content-Type': 'application/json'}
        });
        const post = await response.json();
        res.render('../views/post', { post });
    } catch (error) {
        console.error(error);
        res.redirect('/error');
    }
});

export default router;