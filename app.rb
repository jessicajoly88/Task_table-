require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/task")
require("pg")
require('./lib/list')

DB = PG.connect({:dbname => "to_do"})

get('/') do
  @lists = List.all()
  erb(:index)
end
