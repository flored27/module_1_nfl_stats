class Team < ActiveRecord::Base
  has_many :players
  belongs_to :coach

  def self.win_loss
    p "Top 3 winning teams:"
    Team.all.order(:wins).reverse.first(3).each_with_index{|tm, pos|p "#{pos+1}. #{tm[:name]}"}
    p 'Top 3 losing teams:'
    Team.all.order(:wins).first(3).each_with_index{|tm, pos|p "#{pos+1}. #{tm[:name]}"}
    true
  end

  def self.find_home_team name
    Team.all.find{|team| team[:name] == name}
  end

  def self.find_away_team name
    Team.all.find{|team| team[:name] == name}
  end

  def num_of_injured_players
    100 - ((self.players.select{|player| player[:injured?] == 'TRUE'}.size) * 3)
  end

  def team_win_loss
    ((self[:wins] - self[:losses])*3) +25
  end

  def win_streak_margins
    (self[:streak] * 5) + 25
  end

  def points team
    team[:net_points] + 50
  end

  # def star_coach
  #    self[:head_coach] == 'Bill Belichick'? 10 : 0
  #  end

  def self.battle (home, away)
    home_total = 10+home.num_of_injured_players + home.team_win_loss + home.win_streak_margins + home.points(home)
    away_total = away.num_of_injured_players + away.team_win_loss + away.win_streak_margins + away.points(away)
    total = home_total + away_total
    win_percent=(home_total.to_f/total.to_f)*100
    "The #{home[:name]} team has a #{win_percent}% chance of beating the #{away[:name]}"
  end


  # def coaches
  #   Coach.all.select{|coach| coach.team == self}
  # end

  # def players
  #   Player.all.select{|player| player.team == self}
  # end
  #
  def win_loss

  end

end
