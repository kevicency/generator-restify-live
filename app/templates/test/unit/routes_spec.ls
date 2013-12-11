require! '../../lib/routes'

describe \routes ->
  describe '#apply(server)' ->
    var server, routeCallbacks

    beforeEach ->
      routeCallbacks := { }
      server := get: (route, cb) ->
        routeCallbacks[route] = cb
      sinon.spy server, \get
      routes.apply server
    afterEach ->
      server.get.restore!

    describe 'creates route: GET /' ->
      route = '/'
      _it '' -> expect server.get .to.have.been.calledWith route
      _it 'always responds with 200 and calls next' ->
        cb = routeCallbacks[route]
        sinon.spy (res = send: ->), \send
        next = sinon.spy!

        cb void, res, next

        expect res.send .to.have.been.calledOnce.and.calledWith 200
        expect next .to.have.been.calledAfter res.send

    describe 'creates route: GET /echo:name' ->
      route = '/echo/:name'
      _it '' -> expect server.get .to.have.been.calledWith route
      _it 'echoes the reqeust params and calls next' ->
        cb = routeCallbacks[route]
        req = params: { name: \foo }
        sinon.spy (res = send: ->), \send
        next = sinon.spy!

        cb req, res, next

        expect res.send .to.have.been.calledOnce.and.calledWith req.params
        expect next .to.have.been.calledAfter res.send

