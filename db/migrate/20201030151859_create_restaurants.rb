class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :thumb
      t.string :address
      t.float :lat
      t.float :lon

      t.timestamps
    end
  end
end
