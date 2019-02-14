class Lesson < ApplicationRecord
  belongs_to :unit 
  belonst_to :topic 
  has_and_belongs_to_many :tips 
  

end
