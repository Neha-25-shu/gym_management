class AddUserRefToExerciseScheduleds < ActiveRecord::Migration[6.1]
  def change
    add_reference :exercise_scheduleds, :user, null: false, foreign_key: true
  end
end
