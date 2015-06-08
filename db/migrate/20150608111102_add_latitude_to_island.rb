class AddLatitudeToIsland < ActiveRecord::Migration
  def change
    add_column :islands, :latitude, :string
    add_column :islands, :float, :string
  end
end
