const express = require('express');

const clientRoter = (app) => {

    const clientsController = require('../controllers/clientsController');

    app.route('/clients')
        .get(clientsController.get_all_clients)
        .post(clientsController.add_new_client);
    app.route('/clients/:clientId')
        .get(clientsController.get_client_by_id)
        .put(clientsController.update_client)
        .delete(clientsController.delete_client);
};

module.exports = clientRoter;