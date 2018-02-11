var models = require('../models');

module.exports = {
  messages: {
    get: function (req, res) {
     models.messages.get((error, results) => {
        res.join(results);
      })

    }, // a function which handles a get request for all messages
    post: function (req, res) {
      var parameters = [req.body[text], req.body[username], req.body[roomname]];
      models.messages.get((error, results) => {
        res.join(results);
      })
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {
      models.users.get((error, results) => {
        res.join(results);
      })
    },
    post: function (req, res) {
      var parameters = [req.body[username]];
      models.users.get((error, results) => {
        res.join(results);
      })
    }
  }
};

