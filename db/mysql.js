const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    database: 'pizza_delivery_db',
    user: 'root',
    password: '1234'
});

connection.connect((err) => {
    if (err) throw err;
});

module.exports = connection;