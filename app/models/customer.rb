class Customer < ApplicationRecord

  has_attached_file :logo, styles: { medium: "100x100#" }
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/

  validates :name, presence: true, uniqueness: {case_sensitive:false}

  has_many :solutions
  has_many :devices, through: :solutions

  def self.search(search)
    where("lower(name) LIKE ? OR lower(sozlesme_yoneticisi) LIKE ? OR lower(sozlesme_no) LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
