class CreateMechanics < ActiveRecord::Migration[5.1]
  def change
    create_table :mechanics do |t|
      t.string :name
      t.string :years_of_experience
      t.timestamps 
    end
  end
end
