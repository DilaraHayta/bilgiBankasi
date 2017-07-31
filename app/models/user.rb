class User < ApplicationRecord
  has_secure_password
  has_attached_file :avatar
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  has_many :comments, dependent: :destroy



  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true,
                    uniqueness:{ case_sensitive:false},
                    email: true
  validates :password, presence: true,
                      length:{minimum: 6}


  def name
    "#{first_name} #{last_name}"
  end
end
