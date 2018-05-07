class Question < ApplicationRecord
  has_many :answers
  has_many :comments, as: :commentable
  belongs_to :user
end
