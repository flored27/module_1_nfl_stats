class Team < ActiveRecord::Base
  has_many :players
  belongs_to :coach



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
