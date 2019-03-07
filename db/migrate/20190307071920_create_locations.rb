class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :lat
      t.string :long
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
