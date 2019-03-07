class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :nameOfDriver
      t.string :status

      t.timestamps
    end
  end
end
