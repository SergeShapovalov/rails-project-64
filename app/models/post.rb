# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :category, inverse_of: :posts
  belongs_to :creator, class_name: 'User', optional: true
  has_many :comments, class_name: 'PostComment', dependent: :destroy
  has_many :likes, class_name: 'PostLike', dependent: :destroy

  validates :title, presence: true, length: { minimum: 5, maximum: 255 }
  validates :body, presence: true, length: { minimum: 200, maximum: 4000 }

  def like_by_user(user)
    likes.find_by(user:)
  end
end
