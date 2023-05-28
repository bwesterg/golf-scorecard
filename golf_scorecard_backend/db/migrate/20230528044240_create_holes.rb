class CreateHoles < ActiveRecord::Migration[7.0]
  def change
    create_table :holes do |t|
      t.string :hole_name
      t.integer :hole_number
      t.integer :hole_distance
      t.integer :hole_par

      t.timestamps
    end
  end
end
