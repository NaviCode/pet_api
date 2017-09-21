class AddLastParamsToPetsAgain < ActiveRecord::Migration[5.0]
  def change
    add_column :pets, :lastFed, :time
    add_column :pets, :lastPlayed, :time
  end
end
