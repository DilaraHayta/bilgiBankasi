class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :solution

  validates :body, presence: true
  validates :user, presence: true
  validates :solution, presence:true
end
