# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  has_many :post_likes, dependent: :nullify
  has_many :comments, class_name: 'PostComment', inverse_of: :user, dependent: :destroy
end
