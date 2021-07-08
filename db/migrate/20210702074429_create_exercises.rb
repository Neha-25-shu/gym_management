class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :description
      t.string :video
      t.boolean :enabled

      t.timestamps
    end
  end
end
