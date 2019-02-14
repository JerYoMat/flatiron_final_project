class CourseOrder < ApplicationRecord
  has_many :units 
  has_many :topics 
  has_many :lessons 
end 