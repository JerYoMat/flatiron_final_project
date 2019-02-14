class CreateLessonsTipsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :lessons, :tips do |t|
      t.index [:lesson_id, :tip_id]
      # t.index [:tip_id, :lesson_id]
    end
  end
end
