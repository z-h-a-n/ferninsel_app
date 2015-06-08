class CreateCreatures < ActiveRecord::Migration
  def change
    create_table :creatures do |t|
      t.string :breed
      t.string :icon
      t.string :threed
      t.integer :island_id

      t.timestamps null: false
    end
  end
end
