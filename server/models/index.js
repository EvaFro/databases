var db = require('../db');

module.exports = {
  messages: {
    get: function (callback) {
      var queryString = 'select messages.id, messages.text, rooms.roomname, users.username from messages join left outer join users on (messages.user.id = users.id), join left outer join users on (messages.room.id = rooms.id) order by messages.id desc'; // Might be wrong query string
      db.query(queryString, (error, results) => {
        callback(results);
      }), // a function which produces all the messages
    }
    post: function (parameters, callback) {
      var queryString = 'insert into messages(text, userid, roomid) values ( ?, (select id from users where username = ? limit 1), (select id from rooms where roomname = ? limit 1))';
      db.query(queryString, parameters, (error, results) => {
      callback(results);
    }); // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function (callback) {
      var queryString = 'select * from users';
      db.query(queryString, (error, results) => {
      callback(results);
    });
  },
    post: function (parameters, callback) {
      var queryString = 'insert into users(username) values (?)';
      db.query(queryString, parameters, (error, results) => {
        callback(results);
      });
    }
  }

  rooms: {
    // Ditto as above.
    get: function (callback) {
      var queryString = 'select * from rooms';
      db.query(queryString, (error, results) => {
      callback(results);
    });
  },
    post: function (parameters, callback) {
      var queryString = 'insert into rooms(roomname) values (?)';
      db.query(queryString, parameters, (error, results) => {
        callback(results);
      });
    }
  }




};

