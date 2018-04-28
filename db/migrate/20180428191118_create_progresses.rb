class CreateProgresses < ActiveRecord::Migration[5.1]
  def change
    create_table :progresses do |t|
      t.date :date
      t.string :weight
      t.string :bmi
      t.text :goal

      t.timestamps
    end
  end
end
