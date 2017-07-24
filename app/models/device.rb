class Device < ApplicationRecord
  validates :cihaz_tipi, presence: true
  before_save :uppercase_fields

  def uppercase_fields
    self.cihaz_tipi.upcase!
  end
end
