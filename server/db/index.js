var mysql = require('mysql');

// Create a database connection and export it from this file.
// You will need to connect with the user "root", no password,
// and to the database "chat".

// might have to change con to exprot some function to use in Index for models
var con = mysql.createConnection({
      user: 'student',
      password: 'student',
      database: 'chat12' // what we named our database
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});