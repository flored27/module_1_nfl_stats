# require_relative "./connection_adapter.rb"
#
#
# DBRegistry ||= OpenStruct.new(test: ConnectionAdapter.new(database: "db/#{DBNAME}-test.db"),
#   development: ConnectionAdapter.new("db/#{DBNAME}-development.db"),
#   production: ConnectionAdapter.new("db/#{DBNAME}-production.db")
#   )
#   #creates connection adapter for testing, for development, for production, using
#   #the database
