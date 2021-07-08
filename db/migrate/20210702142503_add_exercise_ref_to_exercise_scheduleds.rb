class AddExerciseRefToExerciseScheduleds < ActiveRecord::Migration[6.1]
  def change
    add_reference :exercise_scheduleds, :exercise, null: false, foreign_key: true
  end
end
