class CreateTees < ActiveRecord::Migration[7.0]
  def change
    create_table :tees do |t|
      t.string :name
      t.integer :yardage
      t.belongs_to :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
