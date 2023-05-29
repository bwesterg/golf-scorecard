class AddTeeIdToScorecards < ActiveRecord::Migration[7.0]
  def change
    add_reference :scorecards, :tee, foreign_key: true, default: 1
  end
end