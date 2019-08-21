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

            res.render('../views/add-new-client', { message: 'User with such nickname is already registered' });
        } else {

            req.body.password = crypto.createHash('sha256').update(req.body.password).digest('base64');

            const new_user = new Client(req.body);

            if (!new_user.clientName) res.status(400).send('Please add username');

            Client.addNewClient(new_user, (err, client) => {
                if (err) res.send(err);
                res.render('../views/main-page', {
                    message: ('Welcome ' + new_user.clientName + '!')
                });
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
            res.render('../views/login', { message: `Incorrect login or password`} );
        } else if(crypto.createHash('sha256').update(req.body.password).digest('base64') === result[0].password) {
            let sessionData = req.session;
            sessionData.client = {};
            let clientNameSess = req.body.clientName;
            sessionData.client.clientName = clientNameSess;
            res.cookie('session', 'client', result);

            res.redirect('/');
        } else {
            res.render('../views/loggin', { message: `Incorrect login or password`} );
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
    if (req.session.clientName) {
        res.session.destroy();
    } else {
        res.redirect('/');
    }
};

exports.main_page = (req, res) => {
    console.log(req.cookies);
    console.log(req.session);

    if (req.session.client) {
        res.render('../views/main-page__logged-in', {message: 'Welcome ' + req.session.client.clientName });
    } else {
    res.render('../views/main-page');
    }
};