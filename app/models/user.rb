class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 5, maximum: 50 }
  validates :email, presence: true, length: { minimum: 5, maximum: 30 }
  validates :password, presence: true, length: { minimum: 8, maximum: 30 }
end
