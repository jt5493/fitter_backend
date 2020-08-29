class AddCategoryToWorkoutsTable < ActiveRecord::Migration[6.0]
  def change
    add_reference :workouts, :category, null: false, foreign_key: true
  end
end
