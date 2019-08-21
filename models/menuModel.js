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

    static addSelectedPizzasInOrder(clientOrder, result) {
        mysql.query('INSERT INTO orders SET ?', clientOrder, (err, res) => {

            if (err) result(err, null);
            result(null, res);
        });
    }


}

module.exports = Menu;