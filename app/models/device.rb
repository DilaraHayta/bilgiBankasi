class Device < ApplicationRecord
  validates :cihaz_tipi, presence: true
  before_save :uppercase_fields


  has_many :solutions
  has_many :customers, through: :solutions

  def uppercase_fields
    self.cihaz_tipi.upcase!
  end
end
