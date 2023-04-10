import express  from 'express';
import bodyParser from 'body-parser';'body-parser';

import env from 'dotenv';
env.config();

import posts_api from './routes/posts.js';
import categories_api from './routes/categories.js';
import pages from './routes/pages.js';

const app = express();

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.set('view engine', 'ejs')

app.use('/api/posts', posts_api);
app.use('/api/categories', categories_api);
app.use('/', pages)

app.use(express.static('./public'));

let port = process.env.server_port;
app.listen(port, function () {
    console.log('API iniciada na porta ' + port);
});