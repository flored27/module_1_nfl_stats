class Coach < ActiveRecord::Base
  belongs_to :team
  has_many :stats 


  attr_accessor :role, :team
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name, role, team)
    @first_name = first_name
    @last_name = last_name
    @team = team
    @role = role
    @@all << self
  end

  def self.all
    @@all
  end
end
