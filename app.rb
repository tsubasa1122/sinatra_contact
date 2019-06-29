require "sinatra"
require "sinatra/reloader"

get "/" do
  now = Time.now
  "こんにちは；#{now}"
  erb :index
end