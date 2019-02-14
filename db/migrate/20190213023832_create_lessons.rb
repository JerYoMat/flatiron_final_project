class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.belongs_to :topic 
      t.belongs_to :course_order 
      t.belongs_to :unit 
      t.string :name 
      t.string :type
      t.timestamps
    end
  end
end
