const menuRouter = (app) => {

    const pizzaMenuController = require('../controllers/pizzaMenuController');

    app.route('/menu')
        .get(pizzaMenuController.show_menu);
    app.route('/menu/:id')
        .get(pizzaMenuController.get_pizza_by_id);
    app.route('/menu/add')
        .post(pizzaMenuController.make_order);
    app.route('/history/:clientName')
        .get(pizzaMenuController.get_current_user_orders_history);
};

module.exports = menuRouter;