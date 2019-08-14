const express = require('express');

const clientRoter = (app) => {

    const clientsController = require('../controllers/clientsController');

    app.route('/clients')
        .get(clientsController.get_all_clients)
        .post(clientsController.add_new_client);
};

module.exports = clientRoter;