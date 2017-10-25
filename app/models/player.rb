class Player < ActiveRecord::Base
  belongs_to :team
  has_many :stats, :as => :season

  def stats
    Stat.all.select{|stat| stat.player == self}
  end

  def score(yds)
    self.stats.yards += yds
  end

  def catch(yds)
    self.stat.yards += yds
    self.stat.catches += 1
  end

  def run(yds)

  end

  def throw(yds)

  end
end
