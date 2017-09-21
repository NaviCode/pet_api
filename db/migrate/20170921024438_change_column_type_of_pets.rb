class ChangeColumnTypeOfPets < ActiveRecord::Migration[5.0]
  def change
    remove_column :pets, :lastFed
    remove_column :pets, :last_played_with
  end
end
