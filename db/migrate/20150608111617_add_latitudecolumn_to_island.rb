class AddLatitudecolumnToIsland < ActiveRecord::Migration
  def change
    add_column :islands, :latitude, :float
  end
end
