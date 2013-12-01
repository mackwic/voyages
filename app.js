// Start sails and pass it command line arguments

var optimist = require('optimist');

console.log("PORT: %s", process.env.PORT);
console.log("ARGV:", optimist.argv);
require('sails').lift(optimist.argv);
