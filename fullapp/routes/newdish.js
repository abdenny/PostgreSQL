const express = require('express');
const router = express.Router();
let db = require('../models/database.js');

router.get('/newdish', (req, res) => {
  res.render('newdish.ejs');
});

router.post('/newdish', (req, res) => {
  res.send('post succesful');
});
module.exports = router;
