class AddPlayerStats < ActiveRecord::Migration[4.2]
  def change
    add_column :stats, :touchdowns, :integer
    add_column :stats, :yards, :integer
    add_column :stats, :fumbles, :integer
    add_column :stats, :interceptions, :integer
  end
end
