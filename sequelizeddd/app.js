let db = require('./models/index.js');

// db.user.create({
//   firstName: 'Austin',
//   lastName: 'Denny',
//   email: 'austin@me.com'
// });
// db.user.create({
//   firstName: 'Jaye',
//   lastName: 'Jensen',
//   email: 'Jaye@me.com'
// });
// db.user.create({
//   firstName: 'Meryem',
//   lastName: 'Komur',
//   email: 'meryem@me.com'
// });
// db.user.create({
//   firstName: 'Diego',
//   lastName: 'Rivera',
//   email: 'diego@me.com'
// });

/////Find all
// db.user.findAll().then(results => {
//   console.log(results);
// });

/////find all emails
// db.user.findAll().then(results => {
//   results.forEach(record => {
//     console.log(`${record.firstName} ${record.lastName} ${record.email}`);
//   });
// });

////Find Meryem
// db.user.findByPk(3).then(record => {
//   console.log(record.id, record.firstName, record.lastName);
// });

////// WITH CALLBACK arrow
// db.user.findAll({ where: { lastName: 'Denny' } }).then(results => {
//   results.forEach(person => {
//     console.log(person.id, person.firstName, person.email);
//   });
// });

//////without arrow
// db.user.findAll({ where: { lastName: 'Denny' } }).then(results => {
//   results.forEach(function(index) {
//     console.log(index.id, index.firstName);
//   });
// });

////////deleted
// db.user.destroy({ where: { id: 1 } }).then(rowDeleted => {
//   console.log(rowDeleted);
//   if (rowDeleted == 1) {
//     console.log('deleted successfully');
//   }
// });

// db.sequelize
//   .query('SELECT * FROM users', { type: db.sequelize.QueryTypes.SELECT })
//   .then(results => {
//     results.forEach(function(record) {
//       console.log(record.firstName);
//     });
//   });

////Updating values in the table
db.user.findByPk(3).then(user => {
  user.firstName = 'Mery';

  user.save().then(() => {
    console.log('Recorded Saved');
  });
});
