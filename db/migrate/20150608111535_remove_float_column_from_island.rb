class RemoveFloatColumnFromIsland < ActiveRecord::Migration
  def change
    remove_column :islands, :float, :string
  end
end
