const express = require('express');
const app = express();
const debug = require('debug')('app:log');
const clientRouter = require('./routes/clients-router');
const cookieParser = require('cookie-parser');
const session = require('express-session');

const {
    PORT = 3000,
    NODE_ENV = 'development',
} = process.env;

const IN_PROD = NODE_ENV === 'development';

app.set('view engine', 'pug');
app.set('views', './views');

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cookieParser());



app.use(session({
    secret: 'super secret key',
    resave: true,
    cookie: { maxAge: 8*60*60*1000 },
    saveUninitialized: true
}));

clientRouter(app);

app.listen(PORT, () => console.log(`Server listening on port ${PORT}`));