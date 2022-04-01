class Post < ApplicationRecord
  validates :title, :link, presence: true
  validates :title, length: { maximum: 100 }

  belongs_to :user
  has_many :comments
end
