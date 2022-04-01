class Comment < ApplicationRecord
  validates :body_text, presence: true
  validates :body_text, length: { minimum: 10 }

  belongs_to :user
  belongs_to :post
end
