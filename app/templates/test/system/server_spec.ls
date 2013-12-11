require! supertest

describe \server, ->
  var server, request

  before ->
    server := (require '../../lib/server').create!
  beforeEach -> request := supertest(server)

  _it 'GET /', (done) ->
    request.get "/"
      .expect 200
      .end done

  _it 'GET /echo/foo', (done) ->
    request.get '/echo/foo'
      .expect 200
      .expect 'Content-Type', 'application/json'
      .end (err, res) ->
        done err if err?

        expect res.body .to.have.property \name, \foo
        done!
