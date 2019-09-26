const Menu = require('../models/menuModel');
const Order = require('../models/orderModel');

exports.show_menu = (req, res) => {
    Menu.getAllPizzas((err, menu) => {

        if (err) {
            res.send(err);
            console.log('res', menu);
        }
        res.send(menu);
    });
};

exports.get_pizza_by_id = (req, res) => {
    Menu.getPizzaById(req.params.id, (err, menu) => {

        if (err) res.status(400).send('Bad request');

        res.send(menu);
    });
};

exports.get_current_user_orders_history = (req, res) => {
    Order.showOrdersHistory(req.params.clientName, (err, order) => {

        if (err) res.status(400).send('Bad request');

        res.send(order);
    })
};

exports.make_order = (req, res) => {
    const new_order = new Order(req.body);
    console.log(new_order);
    Order.makeOrder(new_order, (err, order) => {

        if (err) res.status(400).send('Bad request');

        if (new_order.cooking_time === 0) {
            return;
        }

        res.send(new_order);

        setTimeout(() => {
            Order.setOrderIsReady(order, (result) => {
                console.log(`Order ${order} is ready`);
            })
        }, new_order.cooking_time * 1000);

    });
};