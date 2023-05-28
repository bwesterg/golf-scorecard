class MakeHolesIdNullableInCourses < ActiveRecord::Migration[7.0]
  def change
    change_column_null :courses, :holes_id, true
  end
end
