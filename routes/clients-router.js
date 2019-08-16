const clientRoter = (app) => {

    const clientsController = require('../controllers/clientsController');

    app.route('/')
        .get(clientsController.main_page);
    app.route('/clients')
        .get(clientsController.get_all_clients);
    app.route('/clients/add')
        .get(clientsController.show_registration_form)
        .post(clientsController.add_new_client);
    app.route('/clients/:clientId')
        .get(clientsController.get_client_by_id)
        .put(clientsController.update_client)
        .delete(clientsController.delete_client);
};

module.exports = clientRoter;