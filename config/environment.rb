require 'bundler/setup'
Bundler.require

require 'rake'
require 'active_record'
require 'yaml/store'
require 'ostruct'
require 'date'
require 'sqlite3'
require 'require_all'
#require 'pg'
require_all('app')

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => 'db/nfl_players.db'
)

Player.create(first_name: 'Brandon', last_name: 'Harris')
Team.create(name: 'Giants')
