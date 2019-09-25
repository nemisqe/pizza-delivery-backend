const mysql = require('../db/mysql');

class Menu {
    constructor(menu) {
        this.pizza_name = menu.pizza_name;
        this.cooking_time = menu.cooking_time;
    }

    static getAllPizzas(result) {
        mysql.query('SELECT * FROM pizza_menu', (err, res) => {

            if (err) result(err, null);
            result(null, res);
        });
    }

    static getPizzaById(id, result) {
        mysql.query('SELECT pizza_name, cooking_time FROM pizza_menu WHERE id = ?', id, (err, res) => {

            if (err) result(err, null);
            result(null, res[0]);
        });
    };
}

module.exports = Menu;