class AddCreatedByToExercises < ActiveRecord::Migration[5.1]
  def change
    add_column :exercises, :created_by, :string
  end
end
