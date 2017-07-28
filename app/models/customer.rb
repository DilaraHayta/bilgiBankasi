class Customer < ApplicationRecord

  has_attached_file :logo, styles: { medium: "100x100#" }
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/

  has_many :solutions
  has_many :devices, through: :solutions

end
