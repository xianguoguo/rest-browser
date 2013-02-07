express = require 'express'
cats api = require './cats_api'

app = express()
app.use(express.logger())
cats api.mount (app)
public = __dirname + '/../../public'

app.use(express.static(public))

port = 3001

app.listen (port)

console.log "http://127.0.0.1:#(port) -> cats api / public (#(public))"