const Client = require('../models/clientsModel');

exports.get_all_clients = (req, res) => {

    Client.getAllClients((err, client) => {

        if (err) res.send(err);
        
        let clientsInfo = [];

        for (let key in client) {
            clientsInfo.push(client[key]);
        }
        
        res.render('../views/show-clients', {
            title: 'All clients',
            clientsList: clientsInfo.map(x => {

                return ('Client id is ' + x.id + ', name is ' + x.clientName)
            })

        });
    });
};

exports.add_new_client = (req, res) => {
    let newClient = new Client(req.body);

    Client.addNewClient(newClient, (err, client) => {

        if (err) res.send(err);
        res.render('../views/add-new-client');
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

exports.main_page = (req, res) => {
    res.render('../views/main-page');
};