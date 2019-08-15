const Client = require('../models/clientsModel');

exports.get_all_clients = (req, res) => {

    Client.getAllClients((err, client) => {
        if (err) res.send(err);

        res.send(client);
    });
};

exports.add_new_client = (req, res) => {
    let newClient = new Client(req.body);

    if (!newClient.clientName) res.status(400).send('Please provide client name');

    Client.addNewClient(newClient, (err, client) => {
        if (err) res.send(err);
        res.json(client);
    });
};

exports.update_client = (req, res) => {
    Client.updateClient(req.params.clientId, new Client(req.body), (err, client) => {
        if (err) res.send(err);
        res.json(client);
    });
};

exports.get_client_by_id = (req, res) => {
    Client.getClientById(req.params.clientId, (err, client) => {

        if (!req.params.clientId) res.status(400).send('Please fill in correct ID');
        if (err) res.send(err);
        res.send(client);
    });
};

exports.delete_client = (req, res) => {
    Client.deleteClient(req.params.clientId, (err, client) => {

        if (!req.params.clientId) res.status(400).send('Please fill in correct ID');
        if (err) res.send(err);
        res.send(client);
    });
};