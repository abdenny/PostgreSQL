const express = require('express');
const router = express.Router();
let db = require('../models/database.js');

router.get('/dishes', (req, res) => {
  db.query('SELECT * FROM restaurants').then(results => {
    res.render('dishes.ejs', {
      dishes: results
    });
  });
});
module.exports = router;
