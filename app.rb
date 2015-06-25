require "pry"
require "sinatra"
require "sinatra/reloader"


# SQL/Database
require "sqlite3"
require_relative "database_setup.rb"




require_relative "user"
require_relative "controllers/main"
require_relative "controllers/users"
require_relative "controllers/places"



