require "bundler/setup"
require "pg"
require "active_record"
require "pry"
require "sinatra"
require "sinatra/reloader"

require_relative "db/connection"
require_relative "models/artist"
require_relative "models/song"
require_relative "controller/artists_controller.rb"

#binding.pry

get '/' do
  erb :home
end
