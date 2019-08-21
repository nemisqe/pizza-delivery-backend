const menuRouter = (app) => {

    const pizzaMenuController = require('../controllers/pizzaMenuController');

    app.route('/menu')
        .get(pizzaMenuController.show_menu);
        // .post(pizzaMenuController.make_order);
};

module.exports = menuRouter;