class RemoveLatitudeFromIsland < ActiveRecord::Migration
  def change
    remove_column :islands, :latitude, :string
  end
end
