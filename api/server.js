const express = require('express');
const bodyParser = require('body-parser');

require('dotenv').config();

const app = express();

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.use('/api/posts', require('./routes/posts'));
app.use('/api/categories', require('./routes/categories'));

let port = process.env.server_port;
app.listen(port, function () {
    console.log('API iniciada na porta ' + port);
});