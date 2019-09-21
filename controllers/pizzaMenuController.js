const Menu = require('../models/menuModel');
const mysql = require('../db/mysql');
const async = require('async');
const createError = require('http-errors');

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