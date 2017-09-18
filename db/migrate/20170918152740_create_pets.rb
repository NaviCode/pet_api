class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer   :health, :default => 100
      t.integer   :fitness,:default => 100
      t.integer   :hunger, :default => 100
      t.timestamp :lastFed
      t.integer   :user_id

      t.timestamps
    end
  end
end
