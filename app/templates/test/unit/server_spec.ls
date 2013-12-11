require! '../../lib/server'
require! restify
require! npm-package: '../../package.json'

describe \server ->
  describe '#create()' ->
    var sut

    beforeEach ->
      sinon.spy restify, \createServer
      sut := server.create!
    afterEach ->
      restify.createServer.restore!

    _it 'creates a restify server' ->
      expect restify.createServer.callCount .to.be.equal 1
      expect sut .to.be.equal restify.createServer.firstCall.returnValue

    _it 'sets server.name from package.json' ->
      expect sut .to.have.property \name, npm-package.name

    _it 'sets server.versions from package.json' ->
      expect sut .to.have.property \versions, npm-package.version
