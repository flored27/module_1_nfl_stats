class ReceivingStat < ActiveRecord::Base
  belongs_to :player

  # before_create :first_and_last_name

  # def first_and_last_name
  #   split_name = self.player_name.split(/[, ]+/)
  #   first_name = split_name[1]
  #   last_name = split_name[0]
  #   # self.full_name = name
  #   self.first_name = first_name
  #   self.last_name = last_name
  # end

end
