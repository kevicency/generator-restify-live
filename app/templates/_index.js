#!/usr/bin/env nodemon -e js,ls
'use strict';

require('LiveScript');

var server = require('./lib/server').create();
var port = process.env.PORT || 3000;

server.listen(port, function() {
  console.log('%s#%s listening at %s', server.name, server.versions, server.url);
});
