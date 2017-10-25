class Coach < ActiveRecord::Base
  belongs_to :team
  has_many :stats, :as => :season

end
