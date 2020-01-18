class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 30 }
  validates :email, presence: true
  validates :email, length: { maximum: 255 }
end
