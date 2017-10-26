# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171026203257) do

  create_table "coaches", force: :cascade do |t|
    t.integer "rank"
    t.string "first_name"
    t.string "last_name"
    t.integer "years_active"
    t.string "starting_year"
    t.integer "total_games"
    t.integer "total_wins"
    t.integer "total_losses"
    t.integer "total_ties"
    t.float "win_percentage"
    t.integer "playoff_years"
    t.float "playoff_game_win_percentage"
    t.float "avg_div_rank"
    t.integer "superbowl_titles"
    t.integer "conference_titles"
    t.string "current_team"
    t.string "head_coach"
  end

  create_table "field_goals", force: :cascade do |t|
    t.integer "player_id"
    t.string "first_name"
    t.string "last_name"
    t.integer "season"
    t.integer "games_played"
    t.integer "kicks_blocked"
    t.integer "longest_fg_made"
    t.integer "fgs_made"
    t.string "fg_percentage"
    t.integer "extra_points_made"
    t.integer "extra_points_blocked"
    t.string "player_name"
  end

  create_table "passing_stats", force: :cascade do |t|
    t.integer "player_id"
    t.string "first_name"
    t.string "last_name"
    t.integer "season"
    t.string "team"
    t.integer "games_played"
    t.integer "passes_attempted"
    t.integer "passes_completed"
    t.integer "passing_yards"
    t.integer "td_passes"
    t.integer "interceptions"
    t.integer "longest_pass"
    t.integer "sacks"
    t.string "player_name"
  end

  create_table "players", force: :cascade do |t|
    t.integer "team_id"
    t.integer "age"
    t.string "birth_place"
    t.string "birthday"
    t.string "college"
    t.string "experience"
    t.integer "height"
    t.string "weight"
    t.string "full_name"
    t.integer "jersey_number"
    t.string "position"
    t.string "injured?"
    t.string "last_name"
    t.string "first_name"
  end

  create_table "receiving_stats", force: :cascade do |t|
    t.integer "player_id"
    t.string "first_name"
    t.string "last_name"
    t.string "position"
    t.integer "season"
    t.string "team"
    t.integer "games_played"
    t.integer "reception"
    t.integer "receiving_yards"
    t.float "yards_per_reception"
    t.float "yards_per_game"
    t.integer "longest_reception"
    t.integer "receiving_tds"
    t.string "player_name"
  end

  create_table "rushing_stats", force: :cascade do |t|
    t.integer "player_id"
    t.string "first_name"
    t.string "last_name"
    t.string "position"
    t.integer "season"
    t.string "team"
    t.integer "games_played"
    t.integer "rushing_attempts"
    t.integer "rushing_yards"
    t.integer "rushing_tds"
    t.integer "longest_rushing_run"
    t.float "percentage_first_down_rushes"
    t.integer "fumbles"
    t.string "player_name"
  end

  create_table "teams", force: :cascade do |t|
    t.integer "coach_id"
    t.string "name"
    t.integer "wins"
    t.integer "losses"
    t.integer "ties"
    t.float "winning_percentage"
    t.integer "points_for"
    t.integer "points_against"
    t.integer "net_points"
    t.integer "tds"
    t.string "division"
    t.integer "sb_titles"
    t.string "head_coach"
    t.integer "streak"
    t.integer "home_streak"
    t.integer "away_streak"
  end

end
