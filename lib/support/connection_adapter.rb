# class ConnectionAdapter
#   attr_reader :adapter, :database
#
#  def initialize(adapter="sqlite3", database="database")
#     @adapter = adapter
#     # @username = username
#     # @password = password
#     @database = database
#   end
#
#  def connect!
#     ActiveRecord::Base.establish_connection(:adapter => "sqlite3",
#                                         :database => "db/nfl_players.db")
#     #tells ActiveRecord what adapter and what database to use
#
#  end
# end
