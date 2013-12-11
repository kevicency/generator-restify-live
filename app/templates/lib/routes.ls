module.exports =
  apply: (server) ->
    server.get '/', (req, res, next) ->
      res.send 200
      next!

    server.get '/echo/:name', (req, res, next) ->
      res.send req.params
      next!

