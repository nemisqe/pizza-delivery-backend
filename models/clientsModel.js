const mysql = require('../db/mysql');

class Client {
    constructor(client) {
        this.clientName = client.clientName;
    }

    static getAllClients(result) {
        mysql.query('SELECT * FROM clients', (err, res) => {

            if (err) result(err, null);
            result(null, res);
        });
    };

    static getClientById(clientId, result) {
        mysql.query('SELECT clientName FROM clients WHERE id = ?', clientId, (err, res) => {

            if (err) result(err, null);
            result(null, res);
        });
    };

    static addNewClient(newClient, result) {
        mysql.query('INSERT INTO clients set ?', newClient, (err, res) => {
            if (err) result(err, null);
            result(null, res.insertId);
        });
    };

    static updateClient(id, newClientName, result) {
        mysql.query('UPDATE clients SET clientName = ? WHERE id = ?', [newClientName.clientName, id], (err, res) => {

            if (err) result(err, null);
            result(null, res);
        });
    };
}

module.exports = Client;