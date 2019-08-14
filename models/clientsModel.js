const mysql = require('../db/mysql');

class Client {
    constructor(client) {
        this.clientName = client.clientName;
    }

    getAllClients(result) {
        mysql.query('SELECT * FROM clients', (err, res) => {

            if (err) result(err, null);
            result(null, res);
        });
    };

    addNewClient(newClient, result) {
        mysql.query('INSERT INTO clients set ?', newClient, (err, res) => {
            if (err) result(err, null);
            result(null, res.insertId);
        });
    };
}

module.exports = Client;