const mysql = require('../db/mysql');

class Order {
    constructor(order) {
        this.clientName = order.clientName;
        this.isReady = order.isReady;
        this.cooking_time = order.cooking_time;
    }

    static showOrdersHistory(client_name, result) {

        mysql.query('SELECT * FROM orders WHERE clientName = ?', client_name, (err, res) => {

            if (err) result(err, null);
            result(null, res);
        })
    };

    static makeOrder(newOrder, result) {

        mysql.query('INSERT INTO orders SET ?', newOrder, (err, res) => {

            if (err) result(err, null);
            result(null, res.insertId);
        });
    };
}

module.exports = Order;