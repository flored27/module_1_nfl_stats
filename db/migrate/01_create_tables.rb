class CreateTables < ActiveRecord::Migration[4.2]
  def change
    create_table :teams do |t|
      t.string :name
    end

    create_table :players do |t|
      t.belongs_to :team, index: true
      t.string :first_name
      t.string :last_name
      t.integer :jersey_number
      t.string :position
      t.boolean :active
    end

    create_table :coaches do |t|
      t.belongs_to :team, index: true
      t.string :first_name
      t.string :last_name
      t.string :role
    end

    create_table :stats do |t|
      t.references :season, polymorphic: true, index: true
    end
  end
end
