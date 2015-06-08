class AddLongitudeToIsland < ActiveRecord::Migration
  def change
    add_column :islands, :longitude, :float
  end
end
