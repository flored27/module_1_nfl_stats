require 'terminal-table'
class Coach < ActiveRecord::Base
  has_one :team
  before_create :to_head_coach
  has_many :players, through: :team

  def to_head_coach
    self.head_coach = "#{self.first_name} #{self.last_name}"
  end



  def self.coach_table(coach_n)

  table = Terminal::Table.new
  table.title = "{coach_n}"
  table.headings = ['Rank', 'Years Active', 'SB Rings']
  table.rows = [["{self.rank}"], ["{self.years_active}"], ["{self.superbowl_titles}"]]
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
