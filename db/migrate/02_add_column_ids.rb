class AddColumnIds < ActiveRecord::Migration[4.2]
  def change
    add_column :players, :birth_place, :string
    add_column :players, :birthday, :string
    add_column :players, :college, :string
    add_column :players, :experience, :string
    add_column :players, :height, :string
    add_column :players, :weight, :string
  end
end
