class User < ApplicationRecord
  has_many :tips
  belongs_to :user_role 
end
