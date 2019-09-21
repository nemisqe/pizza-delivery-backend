const menuRouter = (app) => {

    const pizzaMenuController = require('../controllers/pizzaMenuController');

    app.route('/menu')
        .get(pizzaMenuController.show_menu);
    app.route('/menu/:id')
        .get(pizzaMenuController.get_pizza_by_id);
};

module.exports = menuRouter;