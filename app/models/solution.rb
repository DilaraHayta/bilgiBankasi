class Solution < ApplicationRecord
  belongs_to :customer
  belongs_to :device

  has_many :comments, dependent: :destroy
end
