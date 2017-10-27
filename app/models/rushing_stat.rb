class RushingStat < ActiveRecord::Base
  belongs_to :player

  before_create :create_full_name

  def create_full_name
    self.full_name = "#{self.last_name}, #{self.first_name}"
  end
end
