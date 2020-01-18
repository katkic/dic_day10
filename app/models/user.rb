class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 30 }
  before_validation { email.downcase! }
  validates :email, presence: true
  validates :email, length: { maximum: 255 }
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
end
