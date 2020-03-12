const express = require('express');
const router = express.Router();
let db = require('../models/database');

//details of a blog
router.get('/blogs/:blogID', (req, res) => {
  let blogID = req.params.blogID;
  db.query('SELECT * FROM blogs WHERE id=$1', [blogID])
    .then(results => {
      res.render('blogs.ejs', {
        //passing the object in the array, not the whole array
        blog: results[0]
      });
    })
    .catch(error => {
      console.log(error);
    });
});

module.exports = router;
