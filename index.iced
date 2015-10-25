express = require 'express'
# pg = require 'pg'


app = express()


app.get '/', (req, res) ->
  res.send('hi')


app.listen(3000)
