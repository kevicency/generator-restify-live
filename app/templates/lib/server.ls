npm-package = require '../package.json'
require! \restify
require! './routes'

module.exports =
  create: ->
    options =
      name: npm-package.name
      version: npm-package.version
    server = restify.createServer options
      ..use restify.acceptParser server.acceptable
      ..use restify.queryParser!
      ..use restify.bodyParser!
      ..use restify.dateParser!
      ..use restify.authorizationParser!
      ..use restify.gzipResponse!
      ..pre restify.pre.sanitizePath!  # Clean up sloppy paths like //todo//////1//
      ..pre restify.pre.userAgentConnection!  # Handles annoying user agents (curl)

    routes.apply server

    return server
