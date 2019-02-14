class CreateUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :units do |t|
      t.string :name 
      t.string :image_path 
      t.belongs_to :course_order 
      t.timestamps
    end
  end
end
