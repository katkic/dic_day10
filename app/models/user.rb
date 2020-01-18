class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 30 }
  before_validation { email.downcase! }
  validates :email, presence: true
  validates :email, length: { maximum: 255 }
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  
  validates :name, presence :true, presence: true, length: { maximum: 30 }
  validates :email, presence :true, uniqueness:true, presence: true, length: { maximum: 255 }

            format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
