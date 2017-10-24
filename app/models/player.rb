class Player < ActiveRecord::Base
  belongs_to :team
  has_many :stats

  def stats
    Stat.all.select{|stat| stat.player == self}
  end

  def score(yds)
    self.stat.yards += yds
  end

  def catch(yds)

  end

  def run(yds)

  end

  def throw(yds)

  end
end
