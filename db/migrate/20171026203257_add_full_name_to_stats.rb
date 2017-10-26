class AddFullNameToStats < ActiveRecord::Migration[5.1]
  def change
      add_column :field_goals, :player_name, :string
      add_column :rushing_stats, :player_name, :string
      add_column :receiving_stats, :player_name, :string
      add_column :passing_stats, :player_name, :string
  end
end
