const express = require('express');
const app = express();
const clientRouter = require('./routes/clients-router');
const menuRouter = require('./routes/menu-router');
const cookieParser = require('cookie-parser');
const path = require('path');
const session = require('express-session');

const {
    PORT = 3001,
    NODE_ENV = 'development',
} = process.env;

const IN_PROD = NODE_ENV === 'development';

app.set('view engine', 'pug');
app.set('views', './views');

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use(session({
    secret: 'secretKey',
    resave: true,
    cookie: { maxAge: 8*60*60*1000 },
    saveUninitialized: true
}));

clientRouter(app);
menuRouter(app);

app.listen(PORT, () => console.log(`Server listening on port ${PORT}`));