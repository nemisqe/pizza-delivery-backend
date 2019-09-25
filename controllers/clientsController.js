const Client = require('../models/clientsModel');
const async = require('async');
const crypto = require('crypto');
const Cookies = require('cookies');
const session = require('../app');
const COOKIES_KEY = ['COOKIES KEY'];

exports.get_all_clients = (req, res) => {

    Client.getAllClients((err, client) => {

        if (err) res.send(err);
        
        let clientsInfo = [];

        for (let key in client) {
            clientsInfo.push(client[key]);
        }
        
        res.send(client);
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

            res.status(409).send('Username is already used');
        } else {

            req.body.password = crypto.createHash('sha256').update(req.body.password).digest('base64');

            const new_user = new Client(req.body);

            if (!new_user.clientName) res.status(400).send('Please add username');

            Client.addNewClient(new_user, (err, client) => {
                if (err) {
                    console.log(err);
                    res.send(err);
                }
                res.send(result);
            });
        }
    });
};

exports.show_registration_form = (req, res) => {
    res.render('../views/add-new-client');
};

exports.login_form_get = (req, res) => {
    res.render('../views/loggin');
};

exports.login_form_post = (req, res) => {
    async.waterfall([
        callback => {
            Client.getClientByName(req.body.clientName, function (err, res) {
                if (err) res.send(err);
                callback(null, res);
            });
        }
    ], (err, result) => {
        if (result.length < 1) {

            res.status(409).send('Username is already used');
        } else if(crypto.createHash('sha256').update(req.body.password).digest('base64') === result[0].password) {

            let sessionData = req.session;
            sessionData.client = {};
            let clientNameSess = req.body.clientName;
            sessionData.client.clientName = clientNameSess;
            sessionData.client.id = result[0].id;
            res.cookie('session', 'client', result);

            res.send(result);
        } else {
            res.send(err);
        }
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

exports.log_out = (req, res) => {
    if (req.session.client) {

        delete req.session;
        res.send(res);
    } else {
        res.redirect('/');
    }
};

exports.main_page = (req, res) => {

    if (req.session.client) {
        res.render('../views/main-page__logged-in', {message: 'Welcome ' + req.session.client.clientName });
    } else {
    res.render('../views/main-page');
    }
};