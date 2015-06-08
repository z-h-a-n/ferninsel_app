class CreateUserIslands < ActiveRecord::Migration
  def change
    create_table :user_islands do |t|
      t.integer :user_id
      t.integer :island_id

      t.timestamps null: false
    end
  end
end
