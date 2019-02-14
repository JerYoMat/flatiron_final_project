class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :name 
      t.belongs_to :unit 
      t.belongs_to :course_order 
      t.timestamps
    end
  end
end