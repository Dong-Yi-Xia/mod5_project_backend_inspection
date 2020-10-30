class CreateInspections < ActiveRecord::Migration[6.0]
  def change
    create_table :inspections do |t|
      t.date :date
      t.time :time
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
