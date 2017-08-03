class Device < ApplicationRecord
  validates :cihaz_tipi, presence: true
  before_save :uppercase_fields


  has_many :solutions
  has_many :customers, through: :solutions

  def uppercase_fields
    self.cihaz_tipi.upcase!
  end

  def self.search(search)
    where("lower(cihaz_tipi) LIKE ? OR lower(marka) LIKE ? OR lower(model) LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
