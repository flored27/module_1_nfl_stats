class AddFullNameToCoach < ActiveRecord::Migration[5.1]
  def change
    add_column :coaches, :head_coach, :string
  end
end
