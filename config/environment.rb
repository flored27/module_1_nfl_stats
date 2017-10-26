require 'bundler/setup'
Bundler.require
#Bundler.require
require_all('app')

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => 'db/nfl_players.db'
)
ActiveRecord::Base.logger= nil
