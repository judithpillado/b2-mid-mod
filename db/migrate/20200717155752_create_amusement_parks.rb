class CreateAmusementParks < ActiveRecord::Migration[5.1]
  def change
    create_table :amusement_parks do |t|
      t.string :name
      t.integer :addmission_price
      t.timestamps
    end
  end
end
