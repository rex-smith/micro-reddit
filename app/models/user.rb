class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
  validates :username, length: { minimum: 4}
  validates :password, length: { in: 10..20 }

  has_many :posts
  has_many :comments
end
