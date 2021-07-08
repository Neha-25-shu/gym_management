class CreateExerciseScheduleds < ActiveRecord::Migration[6.1]
  def change
    create_table :exercise_scheduleds do |t|

      t.timestamps
    end
  end
end
