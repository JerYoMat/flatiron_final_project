class Lesson < ApplicationRecord
  belongs_to :unit 
  belongs_to :topic 
  has_and_belongs_to_many :tips 
  

end
