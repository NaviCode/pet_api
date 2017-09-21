class RemoveAndAddLastFedsFromPets < ActiveRecord::Migration[5.0]
  def change
    remove_column :pets, :lastFed
    remove_column :pets, :lastPlayed
    add_column :pets, :lastFed, :float
    add_column :pets, :lastPlayed, :float
  end
end
