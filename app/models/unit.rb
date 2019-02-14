class Unit < ApplicationRecord
  has_many :topics 
  belongs_to :course_order
end 