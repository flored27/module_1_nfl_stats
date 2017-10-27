#this file parses the data from the internet can use JSON or CSV
#the csv file is like an excel spread sheet where you have to have the files in the db

#writing path from rake file, since the rake file is running the seeds file

# # parsed_players = CSV.parse(players)
require 'csv'
require 'pry'
#require 'bundler/setup'
#Bundler.require
#require_all('app')
# arr_of_hashes.each do |hash|
# Player.create(hash)
# end

# /Users/brandonharris/Development/Module_1/final_project/module_1_nfl_stats/db/Basic_Stats.csv

# players = CSV.read('./db/Basic_Stats.csv', converters: :numeric)
# coaches = CSV.read('./db/coaches.csv', converters: :numeric)
# teams = CSV.read('./db/teams.csv', converters: :numeric)
receiving_stats = CSV.read('./db/Career_Stats_Receiving.csv', converters: :numeric)
rushing_stats = CSV.read('./db/Career_Stats_Rushing.csv', converters: :numeric)
passing_stats = CSV.read('./db/Career_Stats_Passing.csv', converters: :numeric)
field_goal_stats = CSV.read('./db/Career_Stats_Field_Goal_kickers.csv', converters: :numeric)

# NOT BEING UTILIZED
#punting_stats = CSV.read('Career_Stats_Punting.csv', converters: :numeric)
#punts_returned = CSV.read('Career_Stats_Punt_Return.csv', converters: :numeric)
#kick_off_stats = CSV.read('Career_Stats_Kickoff.csv', converters: :numeric)
#kick_return_stats = CSV.read('Career_Stats_Kick_Return.csv', converters: :numeric)
#offensive_line_stats = CSV.read('Career_Stats_Offensive_Line.csv', converters: :numeric)
#defensive_stats = CSV.read('Career_Stats_Defensive.csv', converters: :numeric)
#fumbles = CSV.read('Career_Stats_Fumbles.csv', converters: :numeric)


# coach_headers = coaches.shift
# team_headers = teams.shift
# player_headers = players.shift
receiving_headers = receiving_stats.shift
rushing_headers = rushing_stats.shift
passing_headers = passing_stats.shift
field_goal_headers = field_goal_stats.shift

#NOT BEING UTILIZED
# punting_headers = punting_stats.shift
#punt_return_headers = punts_returned.shift
#kick_off_headers = kick_off_stats.shift
#kick_return_headers = kick_return_stats.shift
#offensive_line_headers = offensive_line_stats.shift
#defensive_headers = defensive_stats.shift
#fumble_headers = fumbles.shift

# coach_hashes = coaches.map {|coach| Hash[ coach_headers.zip(coach)]}
# team_hashes = teams.map {|team| Hash[ team_headers.zip(team)]}
# player_hashes = players.map {|player| Hash[player_headers.zip(player)]}

receiving_stat_hashes = receiving_stats.map {|stat| Hash[receiving_headers.zip(stat)]}
rushing_stat_hashes = rushing_stats.map {|stat| Hash[rushing_headers.zip(stat)]}
passing_stat_hashes = passing_stats.map {|stat| Hash[passing_headers.zip(stat)]}
field_goal_hashes = field_goal_stats.map {|stat| Hash[ field_goal_headers.zip(stat) ]}



# NOT BEING UTILIZED
#punting_hashes = punting_stats.map {|punt| Hash[punting_headers.zip(punt)]}
#punt_return_hashes = punts_returned.map {|punt_return| Hash[punt_return_headers.zip(punt_return)]}
#kick_off_hashes = kick_off_stats.map{|stat| Hash[kick_off_headers.zip(stat)]}
#kick_return_hashes = kick_return_stats.map{|stat| Hash[ kick_return_headers.zip(stat) ]}
#offensive_line_stat_hashes = offensive_line_stats.map{|stat| Hash[ offensive_line_headers.zip(stat) ]}
#defensive_stat_hashes = defensive_stats.map {|stat| Hash[ defensive_headers.zip(stat) ]}
#fumble_hashes = fumbles.map {|fumble| Hash[fumble_headers.zip(fumble)]}

# coach_hashes.each{|coach| Coach.create(coach)}

# team_hashes.each do |team|
#   #binding.pry
#   newCoach = Coach.find_by(head_coach:team['head_coach'])
#   team['head_coach'] = newCoach
#   Team.create(team)
# end

# player_hashes.each do |player|
#   newTeam =Team.find_by(name:player["team"]) #sets newteam equal
#   player["team"] = newTeam
#   Player.create(player)
#   # newPlayer.team = newTeam
#   # newPlayer.save
# end

receiving_stat_hashes.each do |plays|
  newPlayer=Player.find_by(full_name:plays["player_name"])
  playstats = {reception: plays["reception"],
  season: plays["season"],
  receiving_yards: plays["receiving_yards"],
  player: newPlayer,
  yards_per_reception: plays["yards_per_reception"],
  yards_per_game: plays["yards_per_game"],
  longest_reception: plays["longest_reception"],
  receiving_tds: plays["receiving_tds"]}
  binding.pry #sets newteam equal
  ReceivingStat.create(playstats)
end
# rushing_stat_hashes.each{|stat| RushingStat.create(stat)}
# passing_stat_hashes.each{|stat| PassingStat.create(stat)}
# field_goal_hashes.each{|fg| FieldGoal.create(fg)}
