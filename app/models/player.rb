class Player < ActiveRecord::Base
  belongs_to :team
  before_create :first_and_last_name
  # has_many :coaches, through: :team
  has_many :receiving_stats
  has_many :field_goals
  has_many :passing_stats
  has_many :rushing_stats

  def first_and_last_name
    split_name = self.full_name.split(/[, ]+/)
    first_name = split_name[1]
    last_name = split_name[0]
    # self.full_name = name
    self.first_name = first_name
    self.last_name = last_name
  end

  
  # def stats
  #   Stat.all.select{|stat| stat.player == self}
  # end
  #
  # def score(yds)
  #   self.stats.yards += yds
  # end
  #
  # def catch(yds)
  #   self.stat.yards += yds
  #   self.stat.catches += 1
  # end
  #
  # def run(yds)
  #
  # end
  #
  # def throw(yds)
  #
  # end
end
