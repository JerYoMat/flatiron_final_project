class User < ApplicationRecord
  has_many :tips 
  has_many :lessons_through :tips 
end
