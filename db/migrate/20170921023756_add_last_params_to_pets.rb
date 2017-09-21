class AddLastParamsToPets < ActiveRecord::Migration[5.0]
  def change
    add_column :pets, :last_played_with, :timestamp
  end
end
