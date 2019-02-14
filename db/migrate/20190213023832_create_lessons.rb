class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.belongs_to :topic 
      t.integer :course_order 
      t.belongs_to :unit 
      t.string :name 
      t.string :lesson_type
      t.timestamps
    end
  end
end
