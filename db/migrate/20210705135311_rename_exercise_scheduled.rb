class RenameExerciseScheduled < ActiveRecord::Migration[6.1]
  def change
    rename_table :exercise_scheduleds, :schedule_exercises
  end
end
