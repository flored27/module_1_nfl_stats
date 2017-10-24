class Team < ActiveRecord::Base
  has_many :players
  has_many :coaches

  def coaches
    Coach.all.select{|coach| coach.team == self}
  end

  def players
    Player.all.select{|player| player.team == self}
  end

end
