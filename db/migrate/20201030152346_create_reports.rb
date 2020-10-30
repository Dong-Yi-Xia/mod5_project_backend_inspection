class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.string :note
      t.string :grade
      t.belongs_to :inspection, null: false, foreign_key: true

      t.timestamps
    end
  end
end
