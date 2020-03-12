const express = require('express');
const router = express.Router();
let db = require('../models/database');

router.get('/', (req, res) => {
  db.query('SELECT * FROM BLOGS')
    .then(results => {
      //rendering array of objects returned form the query call
      res.render('index.ejs', {
        blogs: results
      });
    })
    .catch(error => {
      console.log(error);
      res.send(error);
    });
});

module.exports = router;
