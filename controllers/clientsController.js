const Client = require('../models/clientsModel');
const async = require('async');

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

    async.waterfall([
        (callback) => {
            Client.getClientByName(req.body.clientName, (err, res) => {
                if (err) res.send(err);
                callback(null, res)
            });
        }
    ], (err, result) => {

        if (result.length > 0) {
            res.render('../views/add-new-client', { message: req.flash('User with such nickname is already registered') });
        } else {
            const new_user = new Client(req.body);

            if (!new_user.clientName) res.status(400).send('Please add username');

            Client.addNewClient(new_user, (err, client) => {

                if (err) res.send(err);
                res.render('../views/main-page', {
                    message: ('Welcome!' + new_user.clientName)
                });
            });
        }
    });



    // if (req.method === 'POST') {
    //
    //     let newClient = new Client(req.body);
    //     let username = newClient.clientName;
    //
    //     if (!username || username.length < 3) res.status(400)
    //         .send('Please enter your name with more then 3 symbols');
    //
    //     if (newClient.clientName) {
    //         Client.addNewClient(newClient, (err) => {
    //
    //             if (err) res.send(err);
    //             res.render('../views/main-page', {
    //                 message: ('Welcome' + req.body.clientName)
    //             });
    //         });
    //     }
    // }
};

exports.show_registration_form = (req, res) => {
    res.render('../views/add-new-client');
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