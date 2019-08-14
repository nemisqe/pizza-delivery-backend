const Client = require('../models/clientsModel');

exports.get_all_clients = (req, res) => {
    let newClient = new Client(req.body);

    newClient.getAllClients((err, client) => {
        if (err) res.send(err);

        res.send(client);
    });
};

exports.add_new_client = (req, res) => {
    let newClient = new Client(req.body);

    let new_client = new Client(req.body);

    newClient.addNewClient(new_client, (err, client) => {
        if (err) res.send(err);
        res.json(client);
    });
};