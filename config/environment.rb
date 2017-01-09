require 'bundler'
Bundler.require


configure :development do
  set :database, "sqlite3:dbname/database.db"
end
