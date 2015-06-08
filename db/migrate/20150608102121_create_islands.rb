class CreateIslands < ActiveRecord::Migration
  def change
    create_table :islands do |t|
      t.string :name
      t.string :icon
      t.integer :size
      t.integer :population
      t.string :region
      t.string :threed
      t.integer :user_island_id

      t.timestamps null: false
    end
  end
end
