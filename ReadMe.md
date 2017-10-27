#Module 1 Final Project -- NFL Win predictor

#The goal of the application is to look a statists from past and current football seasons of all teams and essentially predict a win outcome. The application uses trends from each team such as win streak, overall wins and loses, and total points for that team. It also takes into account who the head coach so if your team's head coach is Bill Belichick, than your team might slightly have an edge of winning by a higher percent. Lastly our app allows you to see some interesting facts about so of the players. For instance who the tallest person in the league is right now or who the oldest person is in the league right now.

#This file requires that you use the following gems from the source 'https://rubygems.org'
  gem 'rspec'
  gem 'activerecord'
  gem 'sinatra-activerecord'
  gem 'sqlite3'
  gem 'rake'
  gem 'pry'
  gem 'require_all'

You can install with 'bundle'. This application also uses a


#ActiveRecord
- NFL Win predictor uses a unique model to connect the objects to each other. There are 4 different relationships that connect 3 objects
  - has_many
  - has_one
  - belongs_to
  - has_many, through

NFL Win predictor uses ActiveRecord to:
- Set up migration tables for each of the three models, team, player, and coach. A coach has one team and a team belongs to a coach. Team has many players and Player belongs to a team.
- The column names in the database and schema file were identical to the column names that were provided to us through the CSV files. This ensured that the data seeding process went as smoothly as possible.

NFL Win predictor features:
- The main feature of this application is the lets battle mode. This mode allows the user to input two nfl teams and it will return to them the win percentage for the two teams.
- Some other features include displaying information about the teams, coaches, and players
