class User < ApplicationRecord
  has_secure_password
  has_many :tips
  belongs_to :user_role 
end
