const express = require('express');
const router = express.Router();
let db = require('../models/database.js');
let bodyParser = require('body-parser');

router.use(bodyParser.urlencoded({ extended: false }));

router.get('/newdish', (req, res) => {
  db.query('SELECT * FROM categories').then(results => {
    res.render('newdish.ejs', {
      categories: results
    });
  });
});

router.post('/newdish', (req, res) => {
  let name = req.body.title;
  let category = req.body.category;
  let fooddescription = req.body.description;
  let price = parseInt(req.body.price);
  let imageurl = req.body.imageurl;
  let course = '';
  db.none(
    'INSERT INTO restaurants (name, category, fooddescription, price, course, imageurl) VALUES ($1, $2, $3, $4, $5, $6)',
    [name, category, fooddescription, price, course, imageurl]
  )
    .then(() => {
      res.redirect('/dishes');
    })
    .catch(err => {
      res.send(err);
    });
});
module.exports = router;
