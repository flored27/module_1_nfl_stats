require 'terminal-table'
class Coach < ActiveRecord::Base
  has_one :team
  before_create :to_head_coach
  has_many :players, through: :team

  def to_head_coach
    self.head_coach = "#{self.first_name} #{self.last_name}"
  end

def self.get_rank_by_name(n)
  self.all.find do |coach|
    if n == coach.last_name
      coach.rank
    end
  end
end

  def self.coach_table(n)
    split_name = n.downcase.split
    c_first_n = "#{split_name[0]}"
    c_last_n = "#{split_name[1]}"
  table = Terminal::Table.new
  table.title = "#{n}"
  table.headings = ['Category', 'Value']
  table.rows = [["Rank","4"], ["Years Active", 23], ["Starting Year",1991], ["Total Games",359], ["Total Wins", 242], ["Total Losses", 117], ["Win Percentage",0.674], ["Playoff Years", 15], ["Playoff Game Win Percentage", 0.722], ["SuperBowl Rings", 5]]
  table.style = {:padding_left => 3, :border_x => "=", :border_i => "x"}
  puts table
end

  # def to_head_coach
  #   split_name = self.full_name.split(/[, ]+/)
  #   first_name = split_name[1]
  #   last_name = split_name[0]
  #   # self.full_name = name
  #   self.first_name = first_name
  #   self.last_name = last_name
  # end
end
