const express = require('express');
const app = express();
const debug = require('debug')('app:log');
const bodyParses = require('body-parser');
const port = process.env.PORT || 3000;
const clientRouter = require('./routes/clients-router');

app.use(bodyParses.json());
app.use(bodyParses.urlencoded({ extended: true }));

clientRouter(app);

app.listen(port, () => console.log(`Server listening on port ${port}`));