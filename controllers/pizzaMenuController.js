const Menu = require('../models/menuModel');
const mysql = require('../db/mysql');
const async = require('async');

exports.show_menu = (req, res) => {
    Menu.getAllPizzas((err, pizza) => {

        if (err) {
            res.send(err);
            console.log('res', pizza);
        }
        res.render('../views/pizza-menu', { message: 'All ingredients:', val: pizza} );
    });
};
