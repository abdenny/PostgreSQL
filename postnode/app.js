//promise library
const promise = require('bluebird');

let initOptions = {
  promiseLib: promise
};

let config = {
  host: 'localhost',
  port: '5432',
  database: 'testdbJan20',
  user: 'postgres'
};

//load and init pg-promise
let pgp = require('pg-promise')(initOptions);
let db = pgp(config);

// console.log(db);

// db.query('SELECT * FROM restaurant').then(results => {
//   console.log(results);
// });

// db.result("INSERT INTO pgpromise VALUES (DEFAULT, 'kazim', 'chicago' );").then(
//   result => {
//     console.log(result);
//   }
// );

// db.query('SELECT * FROM pgpromise').then(results => {
//   results.forEach(person => {
//     console.log(person.name);
//   });
//   console.log(results);
// });

// db.one(
//   "INSERT INTO pgpromise VALUES (DEFAULT, 'ALINA', 'Moscow') RETURNING id;"
// ).then(result => {
//   db.query(`SELECT * FROM pgpromise WHERE id=${result.id}`).then(results => {
//     console.log('return from query');
//   });
//   console.log(result);
// });

//santized
db.result('INSERT INTO pgpromise VALUES (DEFAULT, $1, $2);', [
  'Austin',
  'Chattanooga'
]).then(result => {
  console.log(result);
});
