class CreateSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :steps do |t|
      t.string :reps
      t.string :weight
      t.text :notes
      t.references :exercise, foreign_key: true

      t.timestamps
    end
  end
end
