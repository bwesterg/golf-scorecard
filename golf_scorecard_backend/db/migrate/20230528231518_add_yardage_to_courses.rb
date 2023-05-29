class AddYardageToCourses < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :yardage, :integer
  end
end
