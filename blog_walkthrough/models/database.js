const promise = require('bluebird');

let initOptions = {
  promiseLib: promise
};

let config = {
  host: 'localhost',
  port: 5432,
  database: 'blogwalkthrough',
  user: 'postgres'
};

let pgp = require('pg-promise')(initOptions);

let db = pgp(config);

module.exports = db;
