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

    static setOrderIsReady(id, result) {

        mysql.query(`UPDATE orders SET isReady = 'done' WHERE orderId = ?`, id, (err, res) => {

            if (err) result(err, null);
            result(null, res);
        });
    };
}

module.exports = Order;