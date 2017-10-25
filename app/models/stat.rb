class Stat < ActiveRecord::Base
  belongs_to :season, polymorphic: true


end
